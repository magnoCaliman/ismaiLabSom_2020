s.boot //liga o servidor. sem isso, nada funciona!

{}.play //tudo dentro das chavetas, vai soar

//osciladores, funções geradoras de som
SinOsc.ar()
LFSaw.ar()
LFTri.ar()
LFPulse.ar()

//funções recebem argumentos dentro dos parênteses
//qual a diferença de sintaxe entre o SC e Processing?
{SinOsc.ar(freq:300, mul:0.2)}.play

//de agora em diante, usando "!2" para ouvir nos dois fones
{SinOsc.ar(freq:300, mul:0.2)!2}.play

//FREQUÊNCIA e AMPLITUDE
{SinOsc.ar(freq:300, mul:0.2)!2}.play
{SinOsc.ar(freq:600, mul:0.2)!2}.play

{SinOsc.ar(freq:600, mul:0.1)!2}.play
{SinOsc.ar(freq:600, mul:0.5)!2}.play

//IMPORTANTE: NÃO USAR VALORES DE AMPLITUDES MAIORES QUE 1!

//quais os equivalentes perceptivos (para a escuta) dos parâmetros "freq" e "mul"?

//no lugar de .play, vamos usar .plot() para visualizar:
//.plot() recebe, dentro dos parênteses, a duração em segundos
{SinOsc.ar(freq:300, mul:0.2)}.plot(1/300)

//podemos usar listas de dois valores entre colchetes [] para comparar visualizações diferentes
{SinOsc.ar(freq:[300, 600], mul:0.2)}.plot(1/300)
{SinOsc.ar(freq:300, mul:[0.1, 0.5])}.plot(1/300)

//FORMAS DE ONDA
//mesma frequência, mas diferentes osciladores
//soam diferentes?
{SinOsc.ar(freq:300, mul:0.1)!2}.play
{LFPulse.ar(freq:300, mul:0.1)!2}.play
{LFTri.ar(freq:300, mul:0.1)!2}.play
{LFSaw.ar(freq:300, mul:0.1)!2}.play

//vamos visualizar as diferentes formas de onda
//(não se preocupe se vc não entende a sintaxe desse exemplo...)
({[
	SinOsc.ar(freq:300),               //ONDA SENÓIDE
	LFSaw.ar(freq:300),                //ONDA "DENTE-DE-SERRA"
	LFPulse.ar(freq:300, add:-0.5),    //ONDA QUADRADA
	LFTri.ar(freq:300)                 //ONDA TRIANGULAR
]}.plot(1/30))

//como cada onda faz a coluna se movimentar?

//EXERCÍCIOS
//1 - crie osciladores simples, para se familiarizar com a sintaxe do SC, e com os valores possíveis de amplitude e frequência.
//2 - crie osciladores, e explore as sonoridades que surgem quando diferentes frequências soam *ao mesmo tempo*. por exemplo: o que acontece quando duas senóides com diferença de 1Hz entre sí soam juntas?

//dica: para executar mais de uma linha ao mesmo tempo, coloque parênteses "()" em volta das várias linhas, um ponto e vírgula ao final ";" de cada linha, e avalie usando control + enter. assim:
(
{SinOsc.ar(freq: 300, mul:0.1)!2}.play;
{SinOsc.ar(freq: 450, mul:0.1)!2}.play;
)







