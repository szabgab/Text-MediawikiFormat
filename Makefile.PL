use ExtUtils::MakeMaker;
my %conf = (
	'NAME'         => 'Text::MediawikiFormat',
	'VERSION_FROM' => 'lib/Text/MediawikiFormat.pm',
	'PREREQ_PM'    => {
		'perl'             => '5.006',
		'CGI'              => '0',
		'Scalar::Util'     => '1.14',
		'Test::More'       => '0.3',
		'Test::NoWarnings' => '0',
		'Test::Warn'       => '0',
		'URI'              => '0',
		'URI::Escape'      => '0',
		'version'          => '0.74',
		'HTML::Parser'     => '0',      # recommended only
		'HTML::Tagset'     => '0',      # recommented only

	},
	'INSTALLDIRS' => 'site',
	'LICENSE'     => 'perl',
	'EXE_FILES'   => [],
	'PL_FILES'    => {}
);

if ( eval { ExtUtils::MakeMaker->VERSION(6.46) } ) {
	$conf{META_MERGE} = {
		'meta-spec' => { version => 2 },
		resources   => {
			repository => {
				type    => 'git',
				url     => 'https://github.com/szabgab/Text-MediawikiFormat.git',
				web     => 'https://github.com/szabgab/Text-MediawikiFormat',
			},
			bugtracker => {
				web => 'https://github.com/szabgab/Text-MediawikiFormat/issues',
			},
			license => 'https://dev.perl.org/licenses/',
		},
	};
}

WriteMakefile(%conf);

