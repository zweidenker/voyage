execution
basicExecute 
	self repository writeDatabaseWith: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) drop.
		
		repository mongoUrlResolver checkLastError: db ].
