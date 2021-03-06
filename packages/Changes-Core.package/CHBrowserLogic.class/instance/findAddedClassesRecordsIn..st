resetting
findAddedClassesRecordsIn: aChangeList

	| setOfAddedClasses |

	setOfAddedClasses := Set new.
	aChangeList changeList
		do: [:aChangeRecord | (aChangeRecord string matchesRegex: self class newClassesRegex)
				ifTrue: [| subclass positionOfFirstSpace positionOfSecondSpace positionOfFirstBreak |
					positionOfFirstSpace := aChangeRecord string findString: ' '.
					positionOfSecondSpace := aChangeRecord string findString: ' ' startingAt: positionOfFirstSpace + 1.
					positionOfFirstBreak := aChangeRecord string findString: Character cr asString.
					subclass := aChangeRecord string copyFrom: positionOfSecondSpace + 2 to: positionOfFirstBreak - 1.
					setOfAddedClasses add: subclass]].
	^ setOfAddedClasses