s.boot //sem isso, nada funciona...

//como gravar o som gerado pelo SC em um arquivo de áudio?
//siga os três passos a seguir, na sequência:

//1 - comece a gravação
//repare nas mensagens que aparecem na post window (além de um pequeno "R" vermelho no canto inferior direito da barra de status)
s.record(numChannels:1)

//2 - gere algum som
(
{LFPulse.ar(freq:50.5, mul:0.1)!2}.play;
{LFPulse.ar(freq:MouseY.kr(minval:50, maxval:60), mul:0.1)!2}.play;
)

//3 - pare a gravação
//novamente, veja o que diz a post window
s.stopRecording

//pronto, está gravado. mas onde está o arquivo de áudio?
//a post window te dá o caminho, algo como "path: C:\Users\SEU USUÁRIO\Documents\SuperCollider\Recording\..." ou "path: /Users/SEU USUÁRIO/Music/..."

//você também pode avaliar essa linha para descobrir
thisProcess.platform.recordingsDir

