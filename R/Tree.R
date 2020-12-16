for(j in 1){
  cat(rep(' ', times = 14), '★', sep = '', '\n')
  for(i in 1:15){
    cat(rep(' ', times = 15 - i), rep('..', times = i), '\n', sep = '')
  }
  cat(rep(' ', times = 14), '||', sep = '', '\n')
  cat(rep(' ', times = 14), '||', sep = '', '\n')
}