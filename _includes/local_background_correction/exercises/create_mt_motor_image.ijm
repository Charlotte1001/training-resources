run("Close All");
newImage("mt", "8-bit black", 100, 100, 1);
run("Line Width...", "line=5");
makeLine(11, 24, 90, 24);
setForegroundColor(255, 255, 255);
run("Fill", "slice");
makeLine(12, 65, 90, 65);
setForegroundColor(131, 131, 131);
run("Fill", "slice");
newImage("motors", "8-bit black", 100, 100, 1);
selectWindow("motors");
makeOval(24, 22, 5, 5);
run("Fill", "slice");
makeOval(25, 63, 5, 5);
run("Fill", "slice");
imageCalculator("Add create 32-bit", "mt","motors");
resetMinAndMax();
setOption("ScaleConversions", true);
run("16-bit");
run("Gaussian Blur...", "sigma=1");
run("Add Specified Noise...", "standard=3000");

//run("Gray Scale Attribute Filtering", "operation=Opening attribute=Area minimum=100 connectivity=4");
