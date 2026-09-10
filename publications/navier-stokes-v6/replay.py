import json, csv
from decimal import Decimal as D
def replay(src):
    def sheet(name):
        i=next(i for i,s in enumerate(src) if 'TAB NAME: '+name+'>' in s)
        return list(csv.reader(src[i+1].splitlines()))
    atomic=sheet('Atomic Score')
    lookup={r[1]:r for r in atomic[1:] if len(r)>2}
    a=D(lookup['Amplitude A'][2]); nu=D(lookup['Viscosity ν'][2])
    cp=D(next(r[7] for r in atomic if len(r)>7 and r[6]=='Positive coefficient c⁺'))
    cm=D(next(r[7] for r in atomic if len(r)>7 and r[6]=='Compressive coefficient c⁻'))
    pos=cp*a**3; comp=cm*a**3; visc=12*nu*a*a; delta=pos-comp-visc
    assert pos==D('820.87564089412') and comp+visc==D('722.87564089412') and delta==98
    assert pos+max(-delta,D(0))==comp+visc+max(delta,D(0))
    e=D(0); errs=[]; peak=(D(0),-1); returns=[]
    for r in sheet('Macro Score'):
        if not r[0].isdigit() or not 3<=int(r[0])<=37: continue
        j=int(r[1]); e=max(e+D(r[3])-D(r[4]),D(0))
        errs.append(abs(e-D(r[8])))
        if e>peak[0]: peak=(e,j)
        if e==0: returns.append(j)
    assert len(errs)==35 and returns[0]==34 and max(errs)<=D('1e-12')
    return f'PASS; atomic residual 0; 35 rows; return 34; peak {peak[0]} at {peak[1]}; max deviation {max(errs)}'

print(replay(json.load(open("source.json"))))
