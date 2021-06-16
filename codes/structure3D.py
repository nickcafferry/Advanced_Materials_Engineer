#!/usr/local/bin/python
import re

f = open("structure3D.html", "w") 
f1 = open('Conformer3D_CID_89594.sdf')
f2 = open('Conformer3D_CID_89594.sdf', encoding="utf-8")
f3 = open('Conformer3D_CID_89594.sdf', encoding="utf-8")
length = len(f3.readlines())
for j in range(length):
    feedback = re.search("\$\$\$\$", f2.readline())
    if feedback:
        print(j)

for i in range(j):
	S = f1.readline()
	if S != '\n':
		print(r"'"+S.rstrip('\n')+r'\n'+r"'"+' '+'+'+'\n',file=f)
	else:
		print(r"'"+r'\n'+r"'"+' '+'+'+'\n',file=f)
print("'$$$$'\n", file=f)

print("\n", file=f)
print("</script>\n", file=f)

print("<style>\n", file=f)
print("	.hlong *{display:inline-block;vertical-align:middle}\n", file=f)
print("</style>\n", file=f)
print("""<div align="center" class="hlong">\n""", file=f)
print("<div>\n", file=f)
print("""<div style="width: 200px; height: 200px;">\n""", file=f)
print("""<canvas id="render-canvas4" style="width: 200px; height: 200px; border: solid 1px #ccc;"></canvas>\n""", file=f)
print("""</div>\n""", file=f)
print("""</div>\n""", file=f)
print("""</div>\n""", file=f)

print("<script>\n", file=f)
print("  if (PubChem3D_WebGL) {\n", file=f)
print("    var M4 = new PubChem3D_WebGL.Molecule({\n", file=f)
print("      canvas: document.getElementById('render-canvas4'),\n", file=f)
print("      settings: {\n", file=f)
print("        quality: 'High',\n", file=f)
print("        backgroundColor: 'Transparent',\n", file=f)
print("        model: 'Ball and Stick'\n", file=f)
print("      }\n", file=f)
print("    })\n", file=f)
print("    setTimeout(function() {\n", file=f)
print("      M4.addMain(sdf)\n", file=f)
print("      M4.animate(true)\n", file=f)
print("    },10)\n", file=f)
print("  }\n", file=f)
print("</script>\n", file=f)
f.close()

with open("structure3D.html", "r", encoding="utf-8") as f:
    length = len(f.readlines())

file = open("structure3D.html", "r", encoding="utf-8")

with open("Struc3D.html", "w", encoding="utf-8") as f:
    f.write("""<script src="https://pubchem.ncbi.nlm.nih.gov/pcfe/structure-3d-webgl/structure-3d-webgl.min.js"></script>\n""")
    f.write("<script>\n")
    f.write("// example SDF\n")
    f.write("var sdf = ")
    for i in range(length):
        f.write(file.readline())
