as yet unclassified
resetToSelectedVersion

	| changeList listOfChangeRecords |
"	Smalltalk snapshot: true andQuit: false."
	changeList := self versionListModel getChangeListForSelectedVersion.
	listOfChangeRecords := changeList changeList
		select: [:changeRecord | changeRecord type == #method].
	listOfChangeRecords reversed
		do: [:changeRecord | changeRecord fileIn]