setwd("~/../Desktop/random_chord_generator/")

###RANDOM CHORD GENERATOR v2###

chords<-read.csv("chordsv2.csv", sep = ",", skip = 0, 
                 header = TRUE, comment.char = "", check.names = FALSE,
                 stringsAsFactors = F)


for (i in 1){
    ppp<-c()
    for (i in 1:4){
      for (val in 1:2){ 
        ppp<-append(ppp,(sample(na.omit(chords[,val]), 1, replace=T)))
      }
    }
    cat(gsub(" ","",paste(ppp[1:2],collapse="")),
        gsub(" ","",paste(ppp[3:4],collapse="")),
        gsub(" ","",paste(ppp[5:6],collapse="")),
        gsub(" ","",paste(ppp[7:8],collapse="")))
  }
