browsing
browseVersionsOf: aChangeRecord
	
	^ self browseVersionsSelector: aChangeRecord methodSelector class: aChangeRecord methodClass.