xls2csv
=======

This is the dev repo for:
http://search.cpan.org/~ken/xls2csv-1.07/script/xls2csv

excel2csv
=========

I have added the script/excel2csv script to this repo.
It does not exist in the CPAN version.

The improvements of excel2csv are:

* supports xlsx files
* handles character encodings much better

excel2csv usage
---------------

By default, the CSV output goes to STDOUT:

    excel2csv --file file.xlsx > file.csv
    
You can also save to a file directly:

    excel2csv --file file.xlsx --output file.csv
    
Or even write to STDERR:

    excel2csv --file file.xlsx --output STDERR

By default, the CSV file will be in the UTF-8 encoding.
You can change the encoding:

    excel2csv --file file.xlsx --output_encoding CP1252 --output file_cp1252.csv

It can also autmatically trim whitespace from around all cell values:

    excel2csv --file file.xlsx --trim

Use the --sheet option to read from a sheet/tab other than the first one. The following will pull from sheet 2:

    excel2csv --file file.xlsx --sheet 2

You do not have to pass the --file and --output option keys. The first non-keyed option will be used as the filename, and the second non-keyed option will be the output. Other keyed options can still be passed in:

    excel2csv file.xlsx file.csv --trim
