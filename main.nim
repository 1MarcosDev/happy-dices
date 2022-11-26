# Nota do programador:
# Desculpa pela bagunça por aqui
# sou melhor criando funções do que interfaces

import std/strutils, std/strformat, colorize, roll

echo """

<>==========================<>
||   ____                   ||
||  /\' .\          _____   ||
|| /: \___\        / .  /\  ||
|| \' / . / Happy /____/..\ ||
||  \/___/  Dices \'  '\  / ||
||                 \'__'\/  ||
||                          ||
||   Made with ♥  in: Nim   ||
||                          ||
||           By: 1MarcosDev ||
<>==========================<>
""".fgLightCyan

echo "Roll your dices, and put your choices in the hands of the universe!".underline.fgMagenta
echo "or press 'q' to quit...".fgCyan

let invalid = AllChars - Digits - {'d', 'q'}

while true:

  stdout.write "\nYour dice: ".fgGreen
  
  var input: string = stdin.readLine()

  if input == "d":
    input = "?"

  if input == "q" or input == " ":
    break

  if input.find(invalid) == -1:
    let res: seq[int] = input.roll

    if res.len == 1:
     stdout.write "Your dice is: ".fgLightRed
     stdout.write fmt"[{res[0]}]".fgLightMagenta
     echo ""
     
    else:
      var total: int = 0
    
      stdout.write "Your dices is: ".fgLightRed
    
      for d in res:
        total += d
        stdout.write fmt"[{d}] ".fgLightMagenta

      echo fmt"Totalizing: {total}".fgLightBlue
      
  else:
    echo "Invalid input".underline.fgRed
