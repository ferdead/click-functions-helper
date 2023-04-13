import 'dart:convert';
import 'dart:io';

class FunctionsHelper {
  FunctionsHelper._();

  ///Função para limpar uma string deixando apenas números
  static String onlyNumbers(String text) {
    return text.replaceAll(RegExp(r'[^0-9]'), '');
  }

  ///Este método retorna o path com filename baseado no windows ou linux.
  static String appPath(String? filename) {
    if (Platform.isWindows) {
      if (filename == null || filename.isEmpty) {
        return Directory.current.absolute.path;
      } else {
        return '${Directory.current.absolute.path}\\$filename}';
      }
    } else {
      if (filename == null || filename.isEmpty) {
        return Directory.current.absolute.path;
      } else {
        return '${Directory.current.absolute.path}/$filename';
      }
    }
  }

  ///Este método salva uma String em Base64 com imagem em um arquivo.
  static void saveImageStringBase64ToFile(String base64, String filename) async {
    final decodedBytes = base64Decode(base64);
    var file = File(filename);
    file.writeAsBytesSync(decodedBytes);
  }

  ///Esta função lê um arquivo de imagem e retorna uma String em base64
  static Future<String> loadImageFileToBase64(String filename) async {
    var file = File(filename);

    if (await file.exists()) {
      final encodedBytes = await file.readAsBytes();

      final base64 = base64Encode(encodedBytes);

      return base64;
    } else {
      return '';
    }
  }

  ///Esta função retorna um texto centralizado com espaços
  static String centerQuebraLinha(String texto, int tamanho) {
    final linhas = quebraLinha(texto, tamanho);

    var result = '';

    for (String linha in linhas) {
      final linhaCentralizada = center(linha, tamanho);
      result += '$linhaCentralizada\n';
    }

    return result;
  }

  ///Esta função quebra a linha em um determinado tamanho sem quebrar palavras
  static List<String> quebraLinha(String texto, int tamanho) {
    final List<String> result = [];

    if (texto.length <= tamanho) {
      result.add(texto);
      return result;
    } else {
      final palavras = texto.split(' ');
      var linha = '';
      for (String palavra in palavras) {
        if (linha.length + palavra.length <= tamanho) {
          linha += '$palavra ';
        } else {
          result.add(linha.trim());
          linha = '$palavra ';
        }
      }

      result.add(linha.trim());

      return result;
    }
  }

  ///Esta função alinha um texto ao centro com espaços
  static String center(String texto, int tamanho) {
    if (texto.length >= tamanho) return texto.substring(0, tamanho);
    final espacos = (tamanho - texto.length) ~/ 2;
    final e = texto.padLeft(texto.length + espacos, ' ');
    final d = e.padRight(e.length + espacos, ' ');
    if (d.length >= tamanho) return d.substring(0, tamanho);
    return '$d ';
  }

  ///Esta função alinha o texto a esquerda com espaços
  static String left(String texto, int tamanho) {
    if (texto.length >= tamanho) return texto.substring(0, tamanho);
    return texto.padRight(tamanho, ' ');
  }

  ///Esta função alinha um texto a direita com espaços
  static String right(String texto, int tamanho) {
    if (texto.length >= tamanho) return texto.substring(0, tamanho);
    return texto.padLeft(tamanho, ' ');
  }
}
