import std/strutils, random

randomize()

proc formatDice(input: string): string =

  var fomatedDice: string = input 

  if input.contains('+'):
    let
      sumPos: int = fomatedDice.find('+')
      last: int = fomatedDice.len() - 1
    
    fomatedDice.delete(sumPos .. last)
  
  result = fomatedDice

proc readSum*(input: string): int =

  var sum: string = input

  result = 0

  if input.contains('+'):
    let sumPos: int = sum.find('+')

    sum.delete(0 .. sumPos)

    result = sum.parseInt()

proc readQuant(input: string): int =

  var quant: string = input

  let
    last: int = quant.len() - 1
    dPos: int = quant.find('d')

  quant.delete(dPos .. last)

  return quant.parseInt()

proc readDice(input: string): int =

  var dice: string = input.formatDice()

  let dPos: int = dice.find('d')

  dice.delete(0 .. dPos)

  return dice.parseInt()

proc roll*(input: string): seq[int] =
  
  let
    quant: int = input.readQuant()
    dice:  int = input.readDice()

  var dices: seq[int] = @[]

  for i in 1 .. quant:
    dices.add(rand(1 .. dice))

  return dices
