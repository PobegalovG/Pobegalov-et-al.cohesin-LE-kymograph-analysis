// this script will automatically generate and save kymographs
// suggested pre-processing: bgnd subtraction(50pix), median filter 4
// (1) use the "line" tool, set the width (12 pix) and draw a line across desired DNA molecule
// (2) save as ROI (press "t"), repeat over DNA molecules you wish to analyze
// (3) set the name of the stack to be processed and run the script
origTitle = getTitle();
padding = 20

dir=getDirectory("Choose a Directory");  // choose directory to save kymographs
numROIs = roiManager("count");
for(i=0; i<numROIs;i++) {// loop through ROIs
	selectImage(origTitle);
	roiManager("Select", i);
	run("KymoResliceWide ", "intensity=Average rotate add ignore");
	filename = dir + "kymograph"+i + ".tif";
	save(filename);
	close();
	
	getSelectionCoordinates( x, y );
	w = x[1]-x[0] + 2*padding;
	h = abs(y[1]-y[0]) + 2*padding;
	makeRectangle((x[0]-padding), (y[0]-padding), w, h);
	run("Duplicate...", "duplicate");
	filename = dir + "DNA"+i + ".tif";
	save(filename);
	close();
}
