import macros

var a: array [5, int] = [123,2,3,4,5]


template C(i: int): int = 
  var c = int('A')
  i - c


type Direction = enum
  north = 10,
  east,
  south,
  west

proc dingo() = 
  var x {.global.} : int = 0
  echo x
  x = x + 1


dingo()
dingo()
dingo()

echo a[0]

echo int(south)

echo C(int('Z'))



 
macro setIndices (obj; args: varargs[expr]): stmt =
  assert args.len mod 2 == 0, "need even # of args"
  result = newStmtList()
  for i in countup(0, len(args) - 1 , 2):
    result.add newAssignment(
      newNimNode(nnkBracketExpr).add(obj, args[i]),
      args[i+1]
    )
#  echo repr(result)
 
var x: array[5, int]
setIndices(x, 1, 2, 3, 9)
echo x.repr
#assert x == [0, 2, 0, 4, 0] 
 

for i in x:
  echo i
dumptree:
  var x:array[2, int]
  x[1] = 2


macro declArray (name; size, ty; args: varargs[expr]): stmt =
  assert args.len mod 2 == 0, "need even # of args"
  result = newNimNode(nnkStmtListExpr)
  let innerName =ident"arr"
  result.add newNimNode(nnkVarSection).add(
    newIdentDefs(innerName, newNimNode(nnkBracketExpr).add(ident"array", size, ty)))
  for i in countup(0, len(args)-1, 2):
    result.add newAssignment(
      newNimNode(nnkBracketExpr).add(innerName, args[i]),
      args[i+1]
    )
  result.add innerName
  result = newNimNode(nnkVarSection).add(
    newIdentDefs(
      name, 
      newNimNode(nnkBracketExpr).add(ident"array", size, ty),
      result
  ))
 
declArray(y, 5,int, 1,2, 4,9)
echo y.repr

echo "AAAAAAAAAAAAAAAAAAAA"
