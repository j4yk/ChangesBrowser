testing
testChangeMethod

	self loadFirstChangeFile.
	self changesBrowser
		changeListListSelectionAt: 2 put: true.
	self changesBrowser resetSelectedMethods.
	self assert: 'version 1' equals: self dummyObject dummyFunction1.
	
	self loadSecondChangeFile.
	self changesBrowser
		changeListListSelectionAt: 2 put: true.
	self changesBrowser resetSelectedMethods.
	self assert: 'version 2' equals: self dummyObject dummyFunction1