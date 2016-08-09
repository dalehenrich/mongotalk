mongo colletion simulation
select: aBlockOrDictionary
  | query coll result |
  query := aBlockOrDictionary asMongoQuery.
  coll := root collectionAt: TugrikObject inDatabase: root db.
  result := coll selectCollection: query.
  ^ result