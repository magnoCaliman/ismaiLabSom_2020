(
{SinOsc.ar(300, mul:0.1)!2}.play;
{SinOsc.ar(301, mul:0.1)!2}.play;
)

//um pouco chato ter que desligar todos os processos sonoros (ctrl + .) e religar para testar diferentes valores, não?
//vamos tentar modificar a frequência interativamente...

//lembrete de conceito importante em programação: FUNÇÕES PODEM SER ARGUMENTOS DE OUTRAS FUNÇÕES!

{SinOsc.ar(freq:Rand(lo:300, hi:800), mul:0.1)!2}.play
//função Rand() retorna um valor, que é então usado para controlar o argumento freq da senóide

//seria interessante se pudessemos ver os valores que Rand() retorna. podemos "perguntar" esses valores usando o método ".poll"
//obs: "método" é o nome dado para as instruções que são escritas depois do ponto final. em programação essa sintaxe se chama "dot notation". já conhecemos dois métodos, ".play" e ".plot". hoje adicionamos mais um, o .poll

{SinOsc.ar(freq:Rand(lo:300, hi:800).poll, mul:0.1)!2}.play
//avalie essa linha e observe a post window
//o que está acontecendo aqui?

/////

//vejamos então a função MouseX.kr()
//avalie a linha abaixo
{MouseX.kr(minval:1, maxval:10)}.play

//parece que nada está funcionado. mas garanto que está. só não conseguimos ver.
//vamos "perguntar" para a função MouseX.kr o que ela está fazendo, usando o método .poll
{MouseX.kr(minval:1, maxval:10).poll}.play

//como então podemos usar a função MouseX.kr para KRONTROLAR a frequência de um oscilador (e ver os seus valores)?













//agora nosso teste de psicoacústica é mais interativo
(
{SinOsc.ar(freq:300, mul:0.2)!2}.play;
{SinOsc.ar(freq:MouseX.kr(minval:300, maxval:350).poll, mul:0.2)!2}.play;
)

//detalhe: a função MouseX.kr() tem uma irmã: MouseY.kr()
{MouseY.kr(minval:100, maxval:666).poll}.play


//EXERCÍCIO!
//1 - Experimente com  os procedimentos mostrados acima, utilizandos os outros três geradores de som que conhecemos que NÃO SÃO o SinOsc.ar(). eles estão listados na Aula 02.2
//lembrete: cuidado com valores do argumento mul! no exemplo abaixo, reparem que o valor de mul é 0.05, NÃO 0.5.
(
{LFPulse.ar(freq:50.5, mul:0.05)!2}.play;
{LFPulse.ar(freq:MouseY.kr(minval:50, maxval:60), mul:0.05)!2}.play;
)