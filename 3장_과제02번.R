rainfall <- c(100,50,150,120,80,300,600,300,200,100,70,100)
meanR <- mean(rainfall)
maxR <- max(rainfall)
minR <- min(rainfall)
outMsg <- sprintf("1년 총 강우량의 평균은 %.1f이고, 비가 가장 많이 온 달은 %d인 7월이며,
비가 가장 적게 온 달은 %d인 2월입니다.",meanR,maxR,minR)
cat(outMsg)