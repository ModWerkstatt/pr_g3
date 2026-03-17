local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/pr_g3/idle.wav", 25.0,
		{ 
		{ 0.0, 1.0 }, 
		{ 0.05, 0.0 } },
		{ 
		{ .0, 1.0 }, 
		{ 1.0, 1.0 } },
		"speed01")	
		
soundsetutil.addTrackParam01
(data, "vehicle/pr_g3/ventil.wav", 25.0,
		{ 
		{ 0.0, 0.0 }, 
		{ 0.1, 2.0 }, 
		{ 0.4, 0.0 } }, 
		{ 
		{ .0, 1.0 }, 
		{ 1.0, 1.0 } },
		"speed01")
		
		
soundsetutil.addTrackParam01
(data, "vehicle/pr_g3/fahrt2.wav", 25.0,
		{ 
		{ 0.0, 0.0 },
		{ 0.05, 1.0 }, 
		{ 1.0, 2.0 } },
		{ 
		{ 0.0, 0.7 }, 
		{ 1.0, 1.4 } },
		"speed01")
	
soundsetutil.addTrackParam01
(data, "vehicle/pr_g3/roll.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.8, 0.1 },
			{ 1.0, 1.0 } },
		{
			{ 0.0, 0.5 },
			{ 1.0, 0.5 } }, 
		"speed01")

soundsetutil.addEvent(data, "horn", { "vehicle/pr_g3/pfiff1.wav" }, 50.0)
soundsetutil.addTrackSqueal(data, "vehicle/pr_g3/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/pr_g3/bremsen.wav", 25.0, 1.0)


return data

end
