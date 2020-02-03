f.emo <- function(dt){
  emotion_dad <- NULL
  for(i in 1:dim(dt)[1]){
    sentences <- syuzhet::get_sentences(dt$stemmedwords[i])
    emotions <- matrix(emotion(sentences)$emotion,
                       nrow = length(sentences),
                       byrow = T)
    colnames(emotions) <- emotion(sentences[1])$emotion_type
    emotions <- data.frame(emotions)
    emotions <- select(emotions,
                       anticipation,
                       joy, 
                       surprise, 
                       trust, 
                       anger, 
                       disgust, 
                       fear, 
                       sadness)
    emotion_dad <- rbind(emotion_dad, emotions)
  }
  return(emotion_dad)
}