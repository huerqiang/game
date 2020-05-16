#' just a game
#'
#' @return nothing
#' @export
guess <- function() {
    n <- round(stats::runif(1,min=1,max=50))
## 随便增加一行
    messages <- "我做了一个猜数字的游戏，你想玩一玩吗"
    button2 <- tcltk::tkmessageBox(title='Message', message=messages, type='yesno')
    button2 <- tcltk::tclvalue(button2)
    if(button2 == "yes") {
        messages <- "这是1到50之间的整数，请猜它的大小\n"
        button2 <- as.numeric(readline(prompt = messages))
        while(button2 != n) {
            if(button2 > n) {
                messages <- "猜大了，请重猜\n"
                button2 <- as.numeric(readline(prompt = messages))
            } else {
                messages <- "猜小了，请重猜\n"
                button2 <- as.numeric(readline(prompt = messages))
            }
        }
        messagesn <- "恭喜你答对了!"
        tcltk::tkmessageBox(title='Message', message=messagesn, type='ok')

    } else {
        messagesn2 <- "您不玩真是太可惜了!"
        tcltk::tkmessageBox(title='Message', message=messagesn2, type='ok')
    }
}



