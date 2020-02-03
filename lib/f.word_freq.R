f.word_freq <- function(dt, gen){
  output <- dt %>% 
            select(genre, stemmedwords) %>% 
            filter(genre == gen) %>% 
            unnest_tokens(word, stemmedwords) %>% 
            group_by(genre, word) %>% 
            summarise(count = n()) %>% 
            arrange(desc(count)) %>% 
            ungroup()
  return(output)
}