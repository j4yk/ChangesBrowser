updating
refresh
	self versionListModel list: (ChangeList browseRecentLog first).
	self updateCurrentlyShownChangeFile.
	"self class open.
	dependents first delete." "dependents first should always be the PluggableSystemWindow"