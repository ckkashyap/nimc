

proc putch(irq: int) {.importc: "putchar".}
proc populatestr(s: cstring) {.importc: "populatestr".}

type T = object
  a: int
  b: int

proc setVal(t: ptr T) {.exportc.} = 
  t.a = 1111
  t.b = 5678
  var x : array[0..9, int8]
  for i in 0 .. 9:
    x[i] = 65
    putch(x[i])

  populatestr(cast[cstring](addr x))
  return



proc sum(a: int, b: int) : int {.exportc.} = 
  a + b
