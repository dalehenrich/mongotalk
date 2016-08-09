baseline
baseline: spec
	<baseline>

	spec for: #'pharo' do: [
		spec 
			package: 'Mongo-Queries';
			package: 'Mongo-Tests-Queries' with: [
				spec requires: #('Mongo-Queries' ). ];
			yourself	].
	
	spec for: #'pharo' do: [
		self grease: spec.
		spec 
			package: 'Mongo-BSON';
			package: 'Mongo-Squeak' with: [ spec requires: #('Grease' 'Mongo-BSON') ];
			package: 'Mongo-Core' with: [ spec requires: #('Mongo-Squeak' 'Mongo-BSON' ) ];
			package: 'Mongo-Pharo-Queries' with: [  spec requires: #('Mongo-Queries') ];
			package: 'Mongo-Tests-BSON' with: [ spec requires: #('Mongo-BSON' ) ];
			package: 'Mongo-Tests-Core' with: [ spec requires: #('Mongo-Core' ) ];
			package: 'Mongo-Tests-Pharo-Queries' with: [ spec requires: #('Mongo-Tests-Queries' ) ];
			package: 'Mongo-Pharo-Tools' with: [
				spec requires: #('Mongo-Core' 'Mongo-Queries') ].

		spec 
			group: 'default' with: #('Tests' 'Tools');
			group: 'Core' with: #('Mongo-Core' 'Mongo-Pharo-Queries' );
			group: 'Tools' with: #('Mongo-Pharo-Tools' );
			group: 'Tests' with: #('Mongo-Tests-BSON' 'Mongo-Tests-Core' 'Mongo-Tests-Pharo-Queries') ].

	spec for: #(#'gs3.2.x' #'gs3.3.x' #'gs3.4.x') do: [ 
		spec 
			package: 'Mongo-GemStone-Queries' with: [  spec requires: #('Mongo-Queries') ];
			package: 'Mongo-Tests-GemStone-Queries' with: [ spec requires: #('Mongo-Tests-Queries' ) ];
			yourself.

		spec 
			group: 'default' with: #('Tests' );
			group: 'Core' with: #('Mongo-GemStone-Queries' );
			group: 'Tests' with: #( 'Mongo-Tests-GemStone-Queries')  ].
