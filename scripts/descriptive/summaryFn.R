# summary function

# 평균과 표준편차를 편리하게 구하기

## one vector, one stat

# 1. frmt_1: mean & (sd)
frmt_msdB <- function(x){
  avg <- round(mean(x, na.rm = TRUE), 2)
  sdv <- round(sd(x, na.rm = TRUE), 2)
  out <- paste(avg, " (", sdv, ")", sep = "")
  return(out)
}


# 2. frmt_2: mean ± sd, # 소수점 두 자리
frmt_msdPM <- function(x){
  avg <- round(mean(x, na.rm = TRUE), 2)
  sdv <- round(sd(x, na.rm = TRUE), 2)
  out <- paste(avg, " ± ", sdv, sep = "")
  return(out)
}

## 2. 특수문자가 제대로 인쇄되지 않는다. 
## 특수문자 인쇄되는 방법은?
