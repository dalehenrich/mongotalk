mongo colletion simulation
add: aDictionary
  | to coll |
  to := TugrikObject new.
  aDictionary
    keysAndValuesDo: [ :key :value | 
      to
        dynamicInstVarAt: key asSymbol put: value;
        yourself ].
  coll := root collectionAt: TugrikObject inDatabase: root db.
  coll add: to