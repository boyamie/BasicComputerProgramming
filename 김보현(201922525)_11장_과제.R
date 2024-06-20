library(rvest)
url_front <- "https://search.naver.com/search.naver?where=nexearch&sm=tab_etc&query=tab_etc&query="
url_end <- "%20KBO%20리그%20정규시즌&ie=utf8"
kboRankDF_all <- data.frame("팀명"=c(),"연도"=c(),"순위"=c())
for(year in 2016:2020){
  url <- paste(url_front,year,url_end,sep="")
  kboSrc <- read_html(url)
  kboTag <- html_nodes(kboSrc,".tb_type2")
  Sys.setlocale("LC_ALL","English")
  kboTable <- html_table(kboTag)
  Sys.setlocale("LC_ALL","Korean")
  kboDF <- as.data.frame(kboTable)
  kboRankDF <- data.frame("팀명"=kboDF$팀명, "연도"=year, "순위"=kboDF$순위)
  kboRankDF[kboRankDF$팀명 == "넥센","팀명"] <- "키움"
  kboRankDF[kboRankDF$팀명 == "kt", "팀명"] <- "KT"
  kboRankDF_all <-rbind(kboRankDF_all,kboRankDF)
}
print(kboRankDF_all)
library(ggplot2)
ggplot(kboRankDF_all,aes(x=연도,y=순위)) +
  geom_line(aes(colour=팀명),size=2)+
  geom_point(size=2)+
  scale_y_continuous(breaks=seq(0,10,1))+
  ggtitle("kbo순위 변화 추이(2016~2020년)")