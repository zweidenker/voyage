execution
basicExecute
	^ self repository readDatabaseWith: [ :db |
		(repository collectionAt: queryClass inDatabase: db) sizeForQuery: (where ifNil: [ { } ]) asMongoQuery ]