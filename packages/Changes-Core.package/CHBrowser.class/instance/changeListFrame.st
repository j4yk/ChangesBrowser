building
changeListFrame

	^ LayoutFrame new
		leftFraction: 0.5 offset: 0;
		topFraction: 0 offset: 0;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 - self methodWindowHeight offset: self buttonHeight negated