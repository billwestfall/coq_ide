# run as

# sage: load ("page000a.sage")
# ((z|(a&b))->g)
# z      a      b      g      value
# False  False  False  False  True
# False  False  False  True   True
# False  False  True   False  True
# False  False  True   True   True
# False  True   False  False  True
# False  True   False  True   True
# False  True   True   False  False
# False  True   True   True   True
# True   False  False  False  False
# True   False  False  True   True
# True   False  True   False  False
# True   False  True   True   True
# True   True   False  False  False
# True   True   False  True   True
# True   True   True   False  False
# True   True   True   True   True
#
# Satisfiable?:
# True
# Tautology?:
# False
# Contradiction?:
# False
# Consistent?:
# True
# sage:

f = propcalc.formula("((z|(a&b))->g)")
print f
print f.truthtable()
print ("Satisfiable?:")
print f.is_satisfiable()
print ("Tautology?:")
print f.is_tautology()
print ("Contradiction?:")
print f.is_contradiction()
print ("Consistent?:")
print propcalc.consistent(f)
