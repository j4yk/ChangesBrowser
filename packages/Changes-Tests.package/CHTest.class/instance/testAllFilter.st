testing
testAllFilter

	| listSize |
	self loadSixthChangeFile.
	listSize := self changesBrowser changeListList size.
	self changesBrowser 
		showNoDoItsChanges;
		showAllChanges.
	self 
		assert: (self changesBrowser showingAllString) equals: '<yes>all';
		assert: listSize equals: (self changesBrowser changeListList size)