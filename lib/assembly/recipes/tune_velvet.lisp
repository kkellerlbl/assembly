(begin
  (define pp (sga_preprocess READS))
  (define bh (bhammer READS))
  (define ppbh (bhammer pp))
  (define kpp (get best_k (kmergenie pp)))
  (define kbh (get best_k (kmergenie bh)))
  (define kppbh (get best_k (kmergenie ppbh)))
  (define k (get best_k (kmergenie READS)))
  (define vtpp (begin (setparam hash_length kpp) (velvet pp)))
  (define vtbh (begin (setparam hash_length kbh) (velvet bh)))
  (define vtppbh (begin (setparam hash_length kppbh) (velvet ppbh)))
  (define vt (begin (setparam hash_length k) (velvet READS)))
  (tar (all_files (quast vt vtpp vtbh vtppbh)) :name analysis)
)