(begin
   (define ki (kiki READS))
   (tar (all_files (quast (upload (sort (list ki) > :key (lambda (c) (arast_score c)))))) :name analysis :tag quast)
)
