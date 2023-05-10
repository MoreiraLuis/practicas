function cambiarLetrasPorNumeros(texto) {
    return texto.replace(/[aeiou]/gi, function(match) {
      switch(match) {
        case 'a':
          return '4';
        case 'e':
          return '3';
        case 'i':
          return '1';
        case 'o':
          return '0';
        case 'u':
          return '5';
        default:
          return match;
      }
    });
  }