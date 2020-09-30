//bem vindos ao SuperCollider

2+2

3*((57/4.7)*pi.sqrt)

rrand(10, 50)

"no Processing isso aqui se chamava 'println()'".postln

Env.perc.test

s.boot //se não ligar o servidor, não há som...

{(SinOsc.ar(MouseX.kr(440,880), mul:0.05))!2}.play

{LFSaw.ar(LFTri.kr(XLine.kr(1, 500, 15)).range(100, 666), mul:0.05)!2}.play

{Pulse.ar(LFNoise0.kr(10).range(200, 800), mul:0.05)!2}.play

{LPF.ar(WhiteNoise.ar(mul: 0.1), MouseX.kr(100, 10000))!2}.play

{GVerb.ar(Resonz.ar(LFNoise0.ar(10), 2000, 0.05, mul: 0.5))!2}.play