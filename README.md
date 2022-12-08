
# Happy Dices [![N|Nim](https://beeimg.com/images/d38998082823.png)](https://nim-lang.org/)
<div align="center">
    <img src="https://beeimg.com/images/l28744908623.png">
    <p>Um utilitário para jogadores de RPG de mesa feito com Nim</p>
</div>

## Sobre o projeto
Happy Dices é um simples programa de rolagem de dados de RPG que roda diretamente no seu terminal. Este projeto foi feito para fins de estudo e desafio, e para jogar RPG de mesa com meus amigos!😅

## Como usar?
Ao rodar o programa no seu terminal Unix ou Windows, uma simples interface de digitação irá aparecer. Para rolar os dados basta seguir o padrão, como, por exemplo, “1d20” para rolar um dado de 20 faces, ou “2d6” para rolar 2 dados de 6 faces, e assim por diante. Para sair do programa basta digitar “q” ou “ctrl-c”.

## Como compilar?
O Happy Dices foi feito usando a linguagem de programação Nim. Para compilar, basta baixar o nim no [site oficial](https://nim-lang.org/), e digitar o comando:
```sh
nim c -d:release -o:HappyDices main.nim
```

## Extensão do projeto
O back-end do código está localizado no arquivo “roll.nim”, e ele é totalmente independente do resto do código, assim você pode importar e usá-lo para criar seu próprio projeto, ou atualizar o atual, como desenvolver uma interface gráfica, por exemplo. Ficarei muito feliz de ver os projetos de vocês!

A rolagem do dado funciona dentro de três funções, uma para contar a quantidade de dados e outra para contar a face dos dados, sendo a função final "roll". Para usá-la, basta passar uma string como parâmetro contendo o padrão dos dados citado anteriormente, e ele irá retornar uma sequência contendo os valores dos dados. Exemplo:

```nim
import roll

let resultado: seq[int] = roll("1d20") # Roda um dado de 20 faces
echo resultado # Mostra todos os valores

# Ou usando a sintaxe do nim com o input do usuário

let input: string = stdin.readLine()
let resultado: seq[int] = input.roll() # Rola o input do usuário
echo resultado # Mostra o resultado

# Para ler os inputs de soma, basta passar a seguinte função como parâmetro

echo input.readSum()

```
