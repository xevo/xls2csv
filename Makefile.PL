use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'xls2csv',
    EXE_FILES         => [ 'script/xls2csv' ],
    VERSION_FROM      => 'script/xls2csv', # finds $VERSION
    PREREQ_PM         => { 
				'Locale::Recode' => 0,
				'Unicode::Map' => 0,
				'Spreadsheet::ParseExcel' => 0,
				'Spreadsheet::ParseExcel::FmtUnicode' => 0,
				'Text::CSV_XS' => 0,
			},
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'script/xls2csv', # retrieve abstract from module
       AUTHOR         => 'Ken Prows <perl@xev.net>') : ()),
);
