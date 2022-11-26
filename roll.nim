import std/strutils, random

randomize()

proc readQuant(input: string): int =

  var quant: string = input

  let
    last: int = quant.len - 1
    dPos: int = quant.find("d")

  quant.delete(dPos .. last)

  return quant.parseInt

proc readDice(input: string): int =

  var dice: string = input

  let dPos: int = dice.find("d")

  dice.delete(0 .. dPos)

  return dice.parseInt

proc roll*(input: string): seq[int] =

  let
    quant: int = input.readQuant
    dice:  int = input.readDice

  var dices: seq[int] = @[]

  for i in 1 .. quant:
    dices.add(rand(1 .. dice))

  return dices
