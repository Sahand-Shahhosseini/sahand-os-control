# Makefile (optional)
TEX=DOC_PROTO_7_PLUS_14_MAINSTREAM_v0_3_INTEGRATED_RC2.tex
PDF=$(TEX:.tex=.pdf)

all: pdf manifest

pdf:
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(TEX)

manifest:
	python - <<'PY'
import hashlib,glob
out='ANNEX_Z_MANIFEST_SHA256.txt'
files=[]
for pat in ['*.tex','*.cmd','*.txt','*.sql','*.sqlite','Makefile']:
  files+=glob.glob(pat)
files=sorted(set(files))
files=[fn for fn in files if fn!=out]
with open(out,'w',encoding='utf-8') as f:
  f.write('# SHA256 Manifest (deterministic; no timestamps)\n\n')
  for fn in files:
    h=hashlib.sha256(open(fn,'rb').read()).hexdigest()
    f.write(f"{h}  {fn}\n")
print('wrote',out)
PY

clean:
	latexmk -C
