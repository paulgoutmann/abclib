import("stdfaust.lib");
mySamplesNum = 512;

//x coordinates for a z//
zx = waveform {-0.9843750,-0.9687500,-0.9531250,-0.9375000,-0.9218750,-0.9062500,-0.8906250,-0.8750000,-0.8593750,-0.8437500,
-0.8281250,-0.8125000,-0.7968750,-0.7812500,-0.7656250,-0.7500000,-0.7343750,-0.7187500,-0.7031250,-0.6875000,
-0.6718750,-0.6562500,-0.6406250,-0.6250000,-0.6093750,-0.5937500,-0.5781250,-0.5625000,-0.5468750,-0.5312500,
-0.5156250,-0.5000000,-0.4843750,-0.4687500,-0.4531250,-0.4375000,-0.4218750,-0.4062500,-0.3906250,-0.3750000,
-0.3593750,-0.3437500,-0.3281250,-0.3125000,-0.2968750,-0.2812500,-0.2656250,-0.2500000,-0.2343750,-0.2187500,
-0.2031250,-0.1875000,-0.1718750,-0.1562500,-0.1406250,-0.1250000,-0.1093750,-0.0937500,-0.0781250,-0.0625000,
-0.0468750,-0.0312500,-0.0156250, 0.0000000, 0.0155945, 0.0312195, 0.0468445, 0.0624695, 0.0780945, 0.0937195,
 0.1093445, 0.1249695, 0.1405945, 0.1562195, 0.1718445, 0.1874695, 0.2030945, 0.2187195, 0.2343445, 0.2499695,
 0.2655945, 0.2812195, 0.2968445, 0.3124695, 0.3280945, 0.3437195, 0.3593445, 0.3749695, 0.3905945, 0.4062195,
 0.4218445, 0.4374695, 0.4530945, 0.4687195, 0.4843445, 0.4999695, 0.5155945, 0.5312195, 0.5468445, 0.5624695,
 0.5780945, 0.5937195, 0.6093445, 0.6249695, 0.6405945, 0.6562195, 0.6718445, 0.6874695, 0.7030945, 0.7187195,
 0.7343445, 0.7499695, 0.7655945, 0.7812195, 0.7968445, 0.8124695, 0.8280945, 0.8437195, 0.8593445, 0.8749695,
 0.8905945, 0.9062195, 0.9218445, 0.9374695, 0.9530945, 0.9687195, 0.9843445, 0.9999695, 0.9843445, 0.9687195,
 0.9530945, 0.9374695, 0.9218445, 0.9062195, 0.8905945, 0.8749695, 0.8593445, 0.8437195, 0.8280945, 0.8124695,
 0.7968445, 0.7812195, 0.7655945, 0.7499695, 0.7343445, 0.7187195, 0.7030945, 0.6874695, 0.6718445, 0.6562195,
 0.6405945, 0.6249695, 0.6093445, 0.5937195, 0.5780945, 0.5624695, 0.5468445, 0.5312195, 0.5155945, 0.4999695,
 0.4843445, 0.4687195, 0.4530945, 0.4374695, 0.4218445, 0.4062195, 0.3905945, 0.3749695, 0.3593445, 0.3437195,
 0.3280945, 0.3124695, 0.2968445, 0.2812195, 0.2655945, 0.2499695, 0.2343445, 0.2187195, 0.2030945, 0.1874695,
 0.1718445, 0.1562195, 0.1405945, 0.1249695, 0.1093445, 0.0937195, 0.0780945, 0.0624695, 0.0468445, 0.0312195,
 0.0155945, 0.0000000,-0.0156250,-0.0312500,-0.0468750,-0.0625000,-0.0781250,-0.0937500,-0.1093750,-0.1250000,
-0.1406250,-0.1562500,-0.1718750,-0.1875000,-0.2031250,-0.2187500,-0.2343750,-0.2500000,-0.2656250,-0.2812500,
-0.2968750,-0.3125000,-0.3281250,-0.3437500,-0.3593750,-0.3750000,-0.3906250,-0.4062500,-0.4218750,-0.4375000,
-0.4531250,-0.4687500,-0.4843750,-0.5000000,-0.5156250,-0.5312500,-0.5468750,-0.5625000,-0.5781250,-0.5937500,
-0.6093750,-0.6250000,-0.6406250,-0.6562500,-0.6718750,-0.6875000,-0.7031250,-0.7187500,-0.7343750,-0.7500000,
-0.7656250,-0.7812500,-0.7968750,-0.8125000,-0.8281250,-0.8437500,-0.8593750,-0.8750000,-0.8906250,-0.9062500,
-0.9218750,-0.9375000,-0.9531250,-0.9687500,-0.9843750,-1.0000000,-0.9843750,-0.9687500,-0.9531250,-0.9375000,
-0.9218750,-0.9062500,-0.8906250,-0.8750000,-0.8593750,-0.8437500,-0.8281250,-0.8125000,-0.7968750,-0.7812500,
-0.7656250,-0.7500000,-0.7343750,-0.7187500,-0.7031250,-0.6875000,-0.6718750,-0.6562500,-0.6406250,-0.6250000,
-0.6093750,-0.5937500,-0.5781250,-0.5625000,-0.5468750,-0.5312500,-0.5156250,-0.5000000,-0.4843750,-0.4687500,
-0.4531250,-0.4375000,-0.4218750,-0.4062500,-0.3906250,-0.3750000,-0.3593750,-0.3437500,-0.3281250,-0.3125000,
-0.2968750,-0.2812500,-0.2656250,-0.2500000,-0.2343750,-0.2187500,-0.2031250,-0.1875000,-0.1718750,-0.1562500,
-0.1406250,-0.1250000,-0.1093750,-0.0937500,-0.0781250,-0.0625000,-0.0468750,-0.0312500,-0.0156250, 0.0000000,
 0.0155945, 0.0312195, 0.0468445, 0.0624695, 0.0780945, 0.0937195, 0.1093445, 0.1249695, 0.1405945, 0.1562195,
 0.1718445, 0.1874695, 0.2030945, 0.2187195, 0.2343445, 0.2499695, 0.2655945, 0.2812195, 0.2968445, 0.3124695,
 0.3280945, 0.3437195, 0.3593445, 0.3749695, 0.3905945, 0.4062195, 0.4218445, 0.4374695, 0.4530945, 0.4687195,
 0.4843445, 0.4999695, 0.5155945, 0.5312195, 0.5468445, 0.5624695, 0.5780945, 0.5937195, 0.6093445, 0.6249695,
 0.6405945, 0.6562195, 0.6718445, 0.6874695, 0.7030945, 0.7187195, 0.7343445, 0.7499695, 0.7655945, 0.7812195,
 0.7968445, 0.8124695, 0.8280945, 0.8437195, 0.8593445, 0.8749695, 0.8905945, 0.9062195, 0.9218445, 0.9374695,
 0.9530945, 0.9687195, 0.9843445, 0.9999695, 0.9843445, 0.9687195, 0.9530945, 0.9374695, 0.9218445, 0.9062195,
 0.8905945, 0.8749695, 0.8593445, 0.8437195, 0.8280945, 0.8124695, 0.7968445, 0.7812195, 0.7655945, 0.7499695,
 0.7343445, 0.7187195, 0.7030945, 0.6874695, 0.6718445, 0.6562195, 0.6405945, 0.6249695, 0.6093445, 0.5937195,
 0.5780945, 0.5624695, 0.5468445, 0.5312195, 0.5155945, 0.4999695, 0.4843445, 0.4687195, 0.4530945, 0.4374695,
 0.4218445, 0.4062195, 0.3905945, 0.3749695, 0.3593445, 0.3437195, 0.3280945, 0.3124695, 0.2968445, 0.2812195,
 0.2655945, 0.2499695, 0.2343445, 0.2187195, 0.2030945, 0.1874695, 0.1718445, 0.1562195, 0.1405945, 0.1249695,
 0.1093445, 0.0937195, 0.0780945, 0.0624695, 0.0468445, 0.0312195, 0.0155945, 0.0000000,-0.0156250,-0.0312500,
-0.0468750,-0.0625000,-0.0781250,-0.0937500,-0.1093750,-0.1250000,-0.1406250,-0.1562500,-0.1718750,-0.1875000,
-0.2031250,-0.2187500,-0.2343750,-0.2500000,-0.2656250,-0.2812500,-0.2968750,-0.3125000,-0.3281250,-0.3437500,
-0.3593750,-0.3750000,-0.3906250,-0.4062500,-0.4218750,-0.4375000,-0.4531250,-0.4687500,-0.4843750,-0.5000000,
-0.5156250,-0.5312500,-0.5468750,-0.5625000,-0.5781250,-0.5937500,-0.6093750,-0.6250000,-0.6406250,-0.6562500,
-0.6718750,-0.6875000,-0.7031250,-0.7187500,-0.7343750,-0.7500000,-0.7656250,-0.7812500,-0.7968750,-0.8125000,
-0.8281250,-0.8437500,-0.8593750,-0.8750000,-0.8906250,-0.9062500,-0.9218750,-0.9375000,-0.9531250,-0.9687500,
-0.9843750,-1.0000000};

//y coordinates for a z//
zy = waveform {0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695,
 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9999695, 0.9843445, 0.9687195,
 0.9530945, 0.9374695, 0.9218445, 0.9062195, 0.8905945, 0.8749695, 0.8593445, 0.8437195, 0.8280945, 0.8124695,
 0.7968445, 0.7812195, 0.7655945, 0.7499695, 0.7343445, 0.7187195, 0.7030945, 0.6874695, 0.6718445, 0.6562195,
 0.6405945, 0.6249695, 0.6093445, 0.5937195, 0.5780945, 0.5624695, 0.5468445, 0.5312195, 0.5155945, 0.4999695,
 0.4843445, 0.4687195, 0.4530945, 0.4374695, 0.4218445, 0.4062195, 0.3905945, 0.3749695, 0.3593445, 0.3437195,
 0.3280945, 0.3124695, 0.2968445, 0.2812195, 0.2655945, 0.2499695, 0.2343445, 0.2187195, 0.2030945, 0.1874695,
 0.1718445, 0.1562195, 0.1405945, 0.1249695, 0.1093445, 0.0937195, 0.0780945, 0.0624695, 0.0468445, 0.0312195,
 0.0155945, 0.0000000,-0.0156250,-0.0312500,-0.0468750,-0.0625000,-0.0781250,-0.0937500,-0.1093750,-0.1250000,
-0.1406250,-0.1562500,-0.1718750,-0.1875000,-0.2031250,-0.2187500,-0.2343750,-0.2500000,-0.2656250,-0.2812500,
-0.2968750,-0.3125000,-0.3281250,-0.3437500,-0.3593750,-0.3750000,-0.3906250,-0.4062500,-0.4218750,-0.4375000,
-0.4531250,-0.4687500,-0.4843750,-0.5000000,-0.5156250,-0.5312500,-0.5468750,-0.5625000,-0.5781250,-0.5937500,
-0.6093750,-0.6250000,-0.6406250,-0.6562500,-0.6718750,-0.6875000,-0.7031250,-0.7187500,-0.7343750,-0.7500000,
-0.7656250,-0.7812500,-0.7968750,-0.8125000,-0.8281250,-0.8437500,-0.8593750,-0.8750000,-0.8906250,-0.9062500,
-0.9218750,-0.9375000,-0.9531250,-0.9687500,-0.9843750,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,-1.0000000,
-1.0000000,-1.0000000,-1.0000000,-1.0000000,-0.9843750,-0.9687500,-0.9531250,-0.9375000,-0.9218750,-0.9062500,
-0.8906250,-0.8750000,-0.8593750,-0.8437500,-0.8281250,-0.8125000,-0.7968750,-0.7812500,-0.7656250,-0.7500000,
-0.7343750,-0.7187500,-0.7031250,-0.6875000,-0.6718750,-0.6562500,-0.6406250,-0.6250000,-0.6093750,-0.5937500,
-0.5781250,-0.5625000,-0.5468750,-0.5312500,-0.5156250,-0.5000000,-0.4843750,-0.4687500,-0.4531250,-0.4375000,
-0.4218750,-0.4062500,-0.3906250,-0.3750000,-0.3593750,-0.3437500,-0.3281250,-0.3125000,-0.2968750,-0.2812500,
-0.2656250,-0.2500000,-0.2343750,-0.2187500,-0.2031250,-0.1875000,-0.1718750,-0.1562500,-0.1406250,-0.1250000,
-0.1093750,-0.0937500,-0.0781250,-0.0625000,-0.0468750,-0.0312500,-0.0156250, 0.0000000, 0.0155945, 0.0312195,
 0.0468445, 0.0624695, 0.0780945, 0.0937195, 0.1093445, 0.1249695, 0.1405945, 0.1562195, 0.1718445, 0.1874695,
 0.2030945, 0.2187195, 0.2343445, 0.2499695, 0.2655945, 0.2812195, 0.2968445, 0.3124695, 0.3280945, 0.3437195,
 0.3593445, 0.3749695, 0.3905945, 0.4062195, 0.4218445, 0.4374695, 0.4530945, 0.4687195, 0.4843445, 0.4999695,
 0.5155945, 0.5312195, 0.5468445, 0.5624695, 0.5780945, 0.5937195, 0.6093445, 0.6249695, 0.6405945, 0.6562195,
 0.6718445, 0.6874695, 0.7030945, 0.7187195, 0.7343445, 0.7499695, 0.7655945, 0.7812195, 0.7968445, 0.8124695,
 0.8280945, 0.8437195, 0.8593445, 0.8749695, 0.8905945, 0.9062195, 0.9218445, 0.9374695, 0.9530945, 0.9687195,
 0.9843445, 0.9999695};

//--------------------------------------------------------------------------------------//
// SQUARE TRAJECTORY CONTROLS
//--------------------------------------------------------------------------------------// 
freq = hslider("freq", 1, -1000., 1000., 0.01);
size = hslider("size", 1, 0, 5, 0.01);

Player(f0, mySamp, mySampNum) = myPlayer with {
	zeroToOnePhase =  os.phasor(1, f0) : ma.decimal; 
	myIndex = zeroToOnePhase * float(mySampNum); 
	i1 = int(myIndex);
	i2 = (i1+1) % int(mySampNum);
	d = ma.decimal(myIndex);
	s1 = (mySamp, i1) : (+(1), _, _) : rdtable;
	s2 = (mySamp, i2) : (+(1), _, _) : rdtable;
	myPlayer = s1 + d * (s2 - s1);
};

process = (Player(freq, zx, mySamplesNum), Player(freq, zy, mySamplesNum)) : (*(size), *(size));
