midSco <- matrix(c(68,60,90,70,70,50,65,75,80,70,94,80),nrow=4)
rownames(midSco) <- c("박선희","송희선","소희남","이지섭")
colnames(midSco) <- c("국어","영어","수학")
cat("중간고사:\n");print(midSco)

finSco <- matrix(c(74,66,92,85,80,80,75,78,76,70,98,86),nrow=4)
rownames(finSco) <- c("박선희","송희선","소희남","이지섭")
colnames(finSco) <- c("국어","영어","수학")
cat("기말고사:\n");print(finSco)

totAvg <- (midSco+finSco)/2
cat("\n1) 네 학생의 각 과목별 평균 점수 :\n");print(totAvg)

impSco <- finSco-midSco
cat("\n2) 네 학생의 각 과목별 중간고사 대비 기말고사의 성적향상 점수 :\n");print(impSco)

