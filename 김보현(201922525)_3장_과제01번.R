kor <- c(80, 90, 70, 65, 55, 30, 60, 90, 88, 
         100, 76, 30, 55, 61, 89, 68, 78, 70, 88, 82)
eng <- c(70, 95, 88, 75, 55, 42, 66, 89, 95, 
         98, 88, 35, 60, 68, 90, 70, 75, 80, 78, 88)
math <- c(88, 90, 86, 80, 62, 50, 65, 84, 88, 
          92, 80, 45, 66, 77, 89, 80, 80, 85, 70, 90)
meanKor <- mean(kor)
meanEng <- mean(eng)
meanMath <- mean(math)
maxKor <- max(kor)
maxEng <- max(eng)
maxMath <- max(math)
outMsg <- sprintf("국어 과목의 평균 점수는 %f점이고, 최대 점수는 %d점입니다.",meanKor,maxKor)
cat(outMsg,"\n")
outMsg <- sprintf("영어 과목의 평균 점수는 %f점이고, 최대 점수는 %d점입니다.",meanEng,maxEng)
cat(outMsg,"\n")
outMsg <- sprintf("수학 과목의 평균 점수는 %f점이고, 최대 점수는 %d점입니다.",meanMath,maxMath)
cat(outMsg,"\n")