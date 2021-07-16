Game <- function(a = 0, b = 100){
  num <- round(runif(1, a, b))
  print("游戏开始")
  cat("请在",a,"~",b,"输入一个数：")
  Tmp <- scan()
  a = a; b = b; k = 1
  repeat{
    if(Tmp > num){
      a = a; b = Tmp
      cat(paste0("答案错误，请在",a,"~",b,"之间输入一个数："))
      Tmp <- scan()
      k = k +1;
      next
    }else{
      if(Tmp < num){
        a = Tmp
        b = b
        cat(paste0("答案错误，请在",a,"~",b,"之间输入一个数："))
        Tmp <- scan();
        k = k +1
        next
      }else{
        cat(paste0("恭喜通关，答案为：",num,"总计消耗机会次数:",k))

        break
      }
    }
  }
}






