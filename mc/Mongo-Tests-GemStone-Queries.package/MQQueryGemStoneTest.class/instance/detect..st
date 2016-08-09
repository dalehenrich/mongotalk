mongo colletion simulation
detect: aBlockOrDictionary
  | result |
  result := self select: aBlockOrDictionary.
  ^ result detect: [ :each | true ] ifNone: [  ]