library(tm)
setwd("~/R_test/ch_09")
speech <- readLines("./data/ch9_speech_eng.txt")
speech1 <- gsub(",","",speech)
speech2 <- gsub("\\.","",speech1)
speech3 <- gsub("-","",speech2)
speech4 <- tolower(speech3)

word <- strsplit(speech4," ")
word1 <- unlist(word)
word2 <- removeWords(word1,stopwords("en"))
word3 <- word2[nchar(word2)>= 3]
print(word3)

wordCount1 <- table(word3)
wordCount <- head(sort(wordCount1,decreasing=TRUE),20)
print(wordCount)

par(mar = c(4,6,4,4))
barplot(wordCount, horiz=TRUE, las=1, xlim=c(0,30),col=rainbow(7),main="The Commencement address by Steve Job",
        cex.main=2,cex.axis=1.5,cex.name=1.2)
