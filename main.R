library(tercen)
library(dplyr)
library(tidyr)
 
ctx = tercenCtx()
 
if (length(ctx$rnames) != 1) stop("One and only one row factor is required.") 
 
into = strsplit(ctx$op.value('into'), ',')[[1]]
sep = ctx$op.value('sep')
   
ctx %>% 
  rselect() %>%
  separate(1, into, sep = sep, convert = TRUE, extra='drop', fill='right') %>%
  mutate_if(is.integer, as.double) %>%
  mutate_if(is.double, function(x){ x[is.na(x)] = NaN ; x }) %>%
  mutate_if(is.character, function(x){ x[is.na(x)] = 'NA' ; x }) %>%
  mutate(.ri = seq_len(nrow(.))-1) %>%
  ctx$addNamespace() %>%
  ctx$save()
  
 
