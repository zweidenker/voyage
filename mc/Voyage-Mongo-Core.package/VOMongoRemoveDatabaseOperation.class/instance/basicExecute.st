execution
basicExecute
	self repository writeDatabaseWith: [ :db | db drop ].
	repository reset