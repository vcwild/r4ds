## Read CSVs

Most of readr’s functions are concerned with turning flat files into data frames:
    
`read_csv()` reads comma delimited files, 

`read_csv2()` reads semicolon separated files (common in countries where , is used as the decimal place), 

`read_tsv()` reads tab delimited files,

`read_delim()` reads in files with any delimiter.


`read_fwf()` reads fixed width files. You can specify fields either by their widths with `fwf_widths()` or their position with `fwf_positions()`. 

`read_table()` reads a common variation of fixed width files where columns are separated by white space.

`read_log()` reads Apache style log files. (But also check out webreadr which is built on top of `read_log()` and provides many more helpful tools.)
