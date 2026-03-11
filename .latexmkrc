# .latexmkrc for Springer Nature sn-basic (natbib)
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$bibtex = 'bibtex %O %B';
$clean_ext = 'bbl blg synctex.gz';

# Use bibtex (not biber)
$bibtex_use = 1;

# Find sn-jnl.cls and .bst files in sn-template/
ensure_path('TEXINPUTS', './sn-template//');
ensure_path('BSTINPUTS', './sn-template//');
