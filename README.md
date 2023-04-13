<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->



## Features

O FunctionsHelper é um pacote Dart que fornece algumas funções auxiliares para tarefas comuns.

## Getting started

Adicione o pacote ao arquivo pubspec.yaml do seu projeto:
```yaml
    dependencies:
        functions_helper: ^1.0.0
```

## Usage

veja alguns exemplos na pasta `/example` 


## Funções:

## onlyNumbers(String text)
Retorna uma string contendo apenas números.

## appPath(String? filename)
Retorna o caminho completo para o diretório atual, ou o caminho completo para um arquivo no diretório atual.

## saveImageStringBase64ToFile(String base64, String filename)
Salva uma imagem codificada em Base64 em um arquivo.

## loadImageFileToBase64(String filename)
Lê um arquivo de imagem e retorna uma string codificada em Base64.

## centerQuebraLinha(String texto, int tamanho)
Retorna um texto centralizado em várias linhas, quebrando o texto em linhas com um tamanho máximo.

## quebraLinha(String texto, int tamanho)
Quebra o texto em linhas com um tamanho máximo sem quebrar palavras.

## center(String texto, int tamanho)
Centraliza um texto em uma string com espaços.

## left(String texto, int tamanho)
Alinha um texto à esquerda em uma string com espaços.

## right(String texto, int tamanho)
Alinha um texto à direita em uma string com espaços.