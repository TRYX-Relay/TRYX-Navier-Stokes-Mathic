"""Check archived bytes, replay, and deliberate corruption detection."""
from pathlib import Path
import hashlib
import json
import subprocess
import sys

here = Path(__file__).resolve().parent
root = here.parents[1]
for path, expected in json.loads((here / 'SHA256SUMS.json').read_text()).items():
    actual = hashlib.sha256((root / path).read_bytes()).hexdigest()
    if actual != expected:
        raise SystemExit('Integrity failure: ' + path)
result = subprocess.run([sys.executable, 'replay.py'], cwd=here,
                        capture_output=True, text=True, check=True)
if result.stdout != (here / 'replay-result.txt').read_text():
    raise SystemExit('Replay receipt mismatch')
namespace = {}
code = (here / 'replay.py').read_text().split('print(replay(')[0]
exec(code, namespace)
source = json.loads((here / 'source.json').read_text())
out = {}
for name, old, new in [
    ('amplitude', 'Amplitude A,7,', 'Amplitude A,8,'),
    ('growth', '0.6846090973457188', '1.6846090973457188'),
    ('return_ordinal', '37,34,0.035,', '37,35,0.035,')]:
    changed = [s.replace(old, new) for s in source]
    if changed == source:
        raise SystemExit('Mutation not applied: ' + name)
    try:
        namespace['replay'](changed)
    except (AssertionError, IndexError) as exc:
        out[name] = 'DETECTED: ' + type(exc).__name__
    else:
        raise SystemExit('Undetected mutation: ' + name)
if out != json.loads((here / 'negative-controls.json').read_text()):
    raise SystemExit('Negative-control receipt mismatch')
print(result.stdout.strip())
print('PASS: file hashes and three negative controls')
