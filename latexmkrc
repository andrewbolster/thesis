$recorder = 1;
$pdf_mode = 1;
$bibtex_use = 2;
$pdflatex = "pdflatex --shell-escape -file-line-error -synctex=1 %O %S";
$pdf_previewer = "start xpdf -remote %R %O %S";
$pdf_update_method = 4;
$pdf_update_command = "xpdf -remote %R -reload";

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -q '$_[0]'";
  }
  else {
    system "makeglossaries '$_[0]'";
  };
}

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy';

