# Navier–Stokes Mathic v6

**Author: Virgil Lee Gattenby** — TRYX / ENAID / MATHIC project.


Project: https://github.com/TRYX-Relay/TRYX-Navier-Stokes-Mathic

Publication package — research draft, 2026-09-10.

The locked v6 Mathic combines signed Action accounting, a recorded finite corridor, and nine lyric annotations. This package presents the original source alongside reproducible arithmetic and machine-checked accounting theorems.

- [Research manuscript](MANUSCRIPT.md)
- [Complete locked Mathic: seven score sections and nine lyrics](../../charts/navier-stokes/Navier_Stokes_Mathic_Beta_6.md)
- [Original lock receipt](../../manifests/Navier_Stokes_Mathic_Beta_6.LOCK.md)
- [Governing v6 release record](../../manifests/Navier_Stokes_Mathic_v6.RELEASE.md)
- [Extracted score data](source.json) and [original replay code](replay.py)
- [Fresh replay result](replay-result.txt) and [corruption controls](negative-controls.json)
- [Lean proof source](../../verification/tryx-lean/TryxProof.lean)
- [Verification evidence](verification-evidence.json)
- [File integrity manifest](SHA256SUMS.json)

From the repository root, reproduce the recorded-data check:

```sh
python3 publications/navier-stokes-v6/check_package.py
```

This verifies the listed file hashes, reruns the original replay, and exercises the three corruption controls. To run only the original replay:

```sh
cd publications/navier-stokes-v6
python3 replay.py
```

Python 3 standard-library dependencies: json, csv, decimal. Run without Python's `-O` option: the original checker uses assertions. Source-data corruption is expected to produce a nonzero exit, including an IndexError if a mutation prevents any return. The checked inputs are the extracted recorded decimal data; this command does not regenerate a fluid evolution.

For formal proofs, follow [the pinned Lean project instructions](../../verification/tryx-lean/README.md). The included workflow reproduces the same project whose three NS statements passed Lean and independent nanoda checking at commit `05bf7ef31c80dab2e580a72ce4608435efd00e8a`. The fresh package commit has its own CI result; historical acceptance is tied to that earlier proof commit.

The payload retains its historical Beta Six filename and heading because its locked bytes are preserved. The release record governs its name: **Navier–Stokes Mathic v6 — Locked Release**. Publication preparation creates no v7 or new closure beta. Historical statements that GitHub publication was pending describe the original records; this package proposes their inclusion through a review branch.

## Citation

Virgil Lee Gattenby. *Navier–Stokes Mathic v6: signed Action accounting and a reproducible finite closure benchmark*. Research manuscript draft, 2026. TRYX-MATHIC. https://github.com/TRYX-Relay/TRYX-MATHIC/tree/publication/navier-stokes-v6/publications/navier-stokes-v6

Machine-readable author and title metadata: [CITATION.cff](CITATION.cff). Cite the Git commit used when reproducing a result.


## Public export

This repository carries the original accepted three-statement NS proof project. Source integration on the private archive also supports PNP; those additional proofs are not included here. Historical run links require source-repository access. Acceptance excerpts are included in verification-evidence.json, and this public repository runs fresh checks. The locked score and release records preserve their original bytes and historical pending-publication wording. See ../../PROVENANCE.md for export details.
