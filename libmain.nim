

proc populatestr(s: cstring) {.importc: "populatestr".}
proc printf(formatstr: cstring) {.importc: "printf", varargs, header: "<stdio.h>".}

type T = object
  a: int
  b: int

proc setVal(t: ptr T) {.exportc.} = 
  t.a = 1111
  t.b = 5678
  var x : array[0..9, int8]
  for i in 0 .. 9:
    x[i] = 65
    printf("%c\n", x[i])

  populatestr(cast[cstring](addr x))
  return

proc copystr(o: var cstring, i: cstring, l: int) : cstring {.exportc.} =
  printf("Does this work %s\n", o)
  printf("Does this work %s\n", i)
#  for idx in 0 .. l:
#    o[idx] = i[idx]
  o


proc sum(a: int, b: int) : int {.exportc.} = 
  a + b
