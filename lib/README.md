# ADS Project 1:  R Notebook on Lyrics Analysis

### Code lib Folder

The lib directory contains various files with function definitions (but only function definitions - no code that actually runs).

+ f.emo.R

  Rscript contains the function: f.emo
  
  Input a dataframe contains the songs and it's lyrics, f.emo returns the emotion matrix for all the songs in the input dataframe.
  
+ f.tidy_emo.R

  Rscript contains the function: f.tidy_emo
  
  Input a dataframe contains the emotion matrix for a certain group of music, f.tidy_emo can return a dataframe that contains the frequent of all certain emotion appeared in this group of songs.

+ f.word_freq.R

  Rscript contains the function: f.word_freq
  
  Input a dataframe contains the words of songs, f.word_freq can return a dataframe that contains the word and their frequency from a given genre.

```
lib/
 ├── f.emo.R
 ├── f.tidy_emo.R
 ├── f.word_freq.R
```
