function concatenar(cadena1,cadena2) {
        var result = cadena1 + cadena2;
        console.log('Cadena Concatenada ==>' + result)
        return result;
        }
// Exporta la función globalmente
karate.concatenar = concatenar;