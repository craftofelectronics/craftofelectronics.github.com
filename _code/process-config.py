import string, os, sys

if (len(sys.argv) >= 2):
  inf = sys.argv[1]
  outf = sys.argv[2]
  inp = open(inf, 'r')
  outp = open(outf, 'w')
  for line in inp:
    #outp.write(os.path.expandvars(line))
    outp.write(string.Template(line).substitute(os.environ))
  inp.close()
  outp.close()
