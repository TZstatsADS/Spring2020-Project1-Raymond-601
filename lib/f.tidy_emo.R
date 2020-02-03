f.tidy_emo <- function(dt){
  emotion_mat <- apply(dt, 1, function(t) colnames(dt)[which.max(t)]) %>% 
    table() %>% 
    data.frame() %>% 
    mutate(Emotion = as.character(.)) %>% 
    select(Emotion, Freq) %>% 
    arrange(desc(Freq))
  
  return(emotion_mat)
}