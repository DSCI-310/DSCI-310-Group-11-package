people <- c("john" , "zeddy", "mike")
gender <- c("male", "male", 'female')
num <- c(1:3)

col_ppl <- c("people")
col_gen <- c("gender")
col_num <- c("num")
col_all <- c("people", "gender", "num")
col_ppl_gen <- c("people", "gen")
col_gen_num <- c("gender", "num")
col_ppl_num <- c("people","number")
col_empty <- c("")
col_incor <- c("city")


text_in <- "dataframe"
col_text_in <- "people"
col_str_in <- people
col_2str_in <- c(people, num)
bin <- FALSE

not_df <- list(1, 2, 3, 4)

df <- data.frame(people, gender, num)
df_gen_col <- data.frame(gender)
df_num_col <- data.frame(num)
df_ppl_col <- data.frame(people)
df_gen_num_col <- data.frame(gender, num)
df_gen_ppl_col <- data.frame(gender, people)
df_ppl_num_col <- data.frame(people, num)
empty_df <- data.frame()
