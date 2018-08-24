s.boot;

~b0 = Buffer.read(s, "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaBreath1.wav");
~b1 = Buffer.read(s, "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaBreath2.wav");
~b2 = Buffer.read(s, "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaBreathVoice1.wav");
~b3 = Buffer.read(s, "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaDeep.wav");
~b4 = Buffer.read(s,  "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaMidDeep.wav");
~b5 = Buffer.read(s,  "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaLowMidCombined.wav");
~b6 = Buffer.read(s, "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaHighDuns.wav");
~b7 = Buffer.read(s, "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaHigh1.wav");
~b8 = Buffer.read(s,	 "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaHigh2.wav");
~b9 = Buffer.read(s, "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaTeeth.wav");
~b10 = Buffer.read(s, "/Users/freyaberkhout/Desktop/Lumina/Bounced Files/LuminaDrone.wav");

~b0.play;
~b1.play;
~b2.play;
~b3.play;
~b4.play;
~b5.play;
~b6.play;
~b7.play;
~b8.play;
~b9.play;
~b10.play;

~b0.free;
~b1.free;
~b2.free;
~b3.free;
~b4.free;
~b5.free;
~b6.free;
~b7.free;
~b8.free;
~b9.free;
~b10.free;


//FRAMES
~b0.numFrames;

//CHANNELS
~b8.numChannels;

/* REMEMBER
numSamples = numFrames * numChannels
*/

// DURATION
~b0.duration;

//BUFFER NUMBERS
~b0.bufnum;

~b0.sampleRate;
s.sampleRate;

