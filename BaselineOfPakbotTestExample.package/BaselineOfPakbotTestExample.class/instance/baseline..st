baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'PakbotTestExample-PackageA';
				package: 'PakbotTestExample-PackageB'
					with: [ spec requires: 'PakbotTestExample-PackageA' ];
				package: 'PakbotTestExample-PackageC';
				package: 'PakbotTestExample-PackageD'
					with: [ spec requires: 'PakbotTestExample-PackageD' ].
				
				spec
			group: 'ALL' with: #( 'PakbotTestExample-PackageB' 'PakbotTestExample-PackageD' );
			group: 'Leaves' with: #( 'PakbotTestExample-PackageA' 'PakbotTestExample-PackageC' ) ]