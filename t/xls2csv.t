# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl xls2csv.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 4;

eval "use Locale::Recode; 1;";
ok(!$@, 'Did Local::Recode load ok?');

eval "use Spreadsheet::ParseExcel; 1;";
ok(!$@, 'Did Spreadsheet::ParseExcel load ok?');

eval "use Spreadsheet::ParseExcel::FmtUnicode; 1;";
ok(!$@, 'Did Spreadsheet::ParseExcel::FmtUnicode load ok?');

eval "use Text::CSV_XS; 1;";
ok(!$@, 'Did Text::CSV_XS load ok?');

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

