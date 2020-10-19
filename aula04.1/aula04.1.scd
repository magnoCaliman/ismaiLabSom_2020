//para avaliar dois osciladores simultaneamente, criar um bloco de código usando parêntesis (), e avaliar com ctrl + enter (no Mac, command + enter)
(
{​​​​SinOsc.ar (freq:400, mul:0.2)!2}​​​​.play;
{​​​​SinOsc.ar (freq:410, mul:0.2)!2}​​​​.play;
)

//dois osciladores com frequências muito próximas causam interferência entre si, e não são ouvidos como dois sons separados. mas sim como um som somente, onde a amplitude se modifica no tempo (um "fade in" e "fade out" automático...). esse "fade" tem uma relação direta com a diferença de frequência entre os dois osciladores.
401 - 400 = 1 Hertz de diferença entre os osciladores
402 - 400 = 2 Hertz
410 - 400 = 10 Hertz

//quando que começamos a ouvir os dois osciladores separadamente?
Miguel - entre 6 Hz e 10 Hz de diferença
Joana - 2 Hz ou 6 Hz
Jade - 6 Hz
Magno - 13 Hz
