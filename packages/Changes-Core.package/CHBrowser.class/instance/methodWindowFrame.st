building
methodWindowFrame

	^ LayoutFrame new
		leftFraction: 0 offset: 0;
		topFraction: 1 - self methodWindowHeight offset: 0;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: 0