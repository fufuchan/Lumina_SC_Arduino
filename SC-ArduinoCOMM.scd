SerialPort.devices;
~port = SerialPort.new("/dev/cu.usbmodem1451", 115200);//"/dev/ttyAMA0", 115200);

(
x = [ ];
30.do{x = x.add(~port.read)};
x.collect(_.asAscii);
)

s.boot;

s.reboot;
s.plotTree;

(
~charArray = [ ];
~getValues = Routine.new({
	var ascii;
	    {
		    ascii = ~port.read;
		    ascii.postln;
		// if(ascii.isAlpha, {~charArray = ~charArray.add(ascii)});
		if(ascii == 97, {
			// ~val = 1;
			"trigger".postln;
	    });
	}.loop;
}).play;
)

~getValues.stop;

(
SynthDef( \ping, {
	arg freq = 440, amp = 0, trig = 0;
	var sig, env; //Dust.kr(5), doneAction:2);/
	env = EnvGen.kr(Env.perc, doneAction:2);
	sig = SinOsc.ar(freq);
	sig = sig * amp;
	Out.ar(0, sig);
}).add;
)

~synth = Synth(\ping, [\trig, ~val]);

~synth = Synth.new(\ping);

(
~control = Routine.new({
	{
		~synth.set(\amp, ~val);
	    0.25.wait;
	}.loop;
}).play;
)

