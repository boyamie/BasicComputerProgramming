scores <- data.frame()
scores <- edit(scores)
print(scores)
View(scores)
MATH <- c(70,65,82,80)
scores <- cbind(scores,MATH)
View(scores)
write.xlsx(scores,"./data/ch06_ex01.xlsx",borders="all"
           