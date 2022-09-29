$tex = "xelatex";
$builddir = "build/";
$viewer = "xdg-open";

# Default list of files to be processed.
# @default_files = ("main", "second", "third", "etc.")
@default_files = ("main");

# The first parameter is the name of one of the system's environment variables for search paths.
# The remaining parameters are values that should be in the variable.
ensure_path('TEXINPUTS', "./themes//");

# This contains a list of extensions for files that are generated during processing, and that should be deleted during a main clean up operation, as invoked by the command line option -c.
push @generated_exts, 'nav', 'snm';

# The directory in which auxiliary files (aux, log, etc) are to be written by a run of *latex.
$aux_dir = "build";

# Use of this option results in a file of extension .fls containing a list of the files that these programs have read and written.
# Latexmk will then use this file to improve its detection of source files and generated files after a run of *latex.
$recorder = 1;

# This variable specifies the directory in which output files are to be written by a run of *latex.
$out_dir = "build";