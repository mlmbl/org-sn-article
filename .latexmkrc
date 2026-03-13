# .latexmkrc for Springer Nature Journal Article Template
# Based on: Springer Nature User Manual (Version 3.1, December 2024)
# Template files are placed in ./sn-template/

# ==============================================================================
# Search paths for template files in subdirectory
# ==============================================================================
# sn-jnl.cls の検索パス（pdflatex が参照）
ensure_path('TEXINPUTS', './sn-article-template//');

# .bst ファイルの検索パス
# ensure_path だけでは bibtex コマンドに環境変数が継承されない場合があるため、
# $bibtex コマンドに BSTINPUTS を明示的に付けて渡す（下記参照）
ensure_path('BSTINPUTS', './sn-article-template//');

# ==============================================================================
# LaTeX Engine
# ==============================================================================
# マニュアルより: "pdflatex option is now loaded as default" (Version 3.1)
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';

# XeLaTeX / LuaLaTeX を使いたい場合は以下のいずれかを代わりに有効化:
# $pdf_mode = 4;  # lualatex
# $pdf_mode = 5;  # xelatex

# ==============================================================================
# BibTeX
# ==============================================================================
# マニュアルより: "BibTeX is the preferred format for references."
# BSTINPUTS を bibtex コマンドに直接渡すことで、サブディレクトリの .bst を確実に参照する
$bibtex = 'BSTINPUTS=./sn-article-template//: bibtex %O %B';
$bibtex_use = 1;

# ==============================================================================
# 出力ファイル設定
# ==============================================================================
$out_dir = '.';         # 出力ディレクトリ（必要に応じて 'build' 等に変更）

# ==============================================================================
# その他
# ==============================================================================
$clean_ext = 'synctex.gz synctex.gz(busy) bbl run.xml';
$pdf_previewer = 'open %S';  # macOS の場合。Linux なら 'evince %S' 等に変更

