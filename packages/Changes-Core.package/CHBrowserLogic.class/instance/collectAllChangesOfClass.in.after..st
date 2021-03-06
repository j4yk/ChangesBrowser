resetting
collectAllChangesOfClass: aClassName in: aWholeChangeList after: firstIndex

	| changeRecordsForClass |
	changeRecordsForClass := OrderedCollection new.
	firstIndex to: aWholeChangeList size
		do: [:currentIndex | 
			| currentChangeRecord |
			currentChangeRecord := aWholeChangeList at: currentIndex.
			(currentChangeRecord string
						beginsWith: (CHBrowserLogic deletedClassIdentifierFor: aClassName))
						ifTrue: [changeRecordsForClass := OrderedCollection new.].
			(currentChangeRecord type == #classComment and: [currentChangeRecord methodClassName == aClassName asSymbol])
				ifTrue: [changeRecordsForClass addLast: currentChangeRecord].
			(currentChangeRecord type == #method and: [currentChangeRecord methodClassName = aClassName])
				ifTrue: [changeRecordsForClass addLast: currentChangeRecord].
			(currentChangeRecord type == #doIt
					and: [((currentChangeRecord string beginsWith: aClassName)
								or: [currentChangeRecord string
										includesSubstring: (CHBrowserLogic classDefinitionIdentifierFor: aClassName)])
							or: [currentChangeRecord string
									= (CHBrowserLogic classClassificationBeginFor: aClassName)]])
				ifTrue: [changeRecordsForClass addLast: currentChangeRecord]].
	^ changeRecordsForClass