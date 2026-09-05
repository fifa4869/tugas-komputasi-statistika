getwd()
setwd("D:/Rcode")

#1. Vector Numeric, Vector Integer, Vector Logical, Vector character
#vector numeric
v_num <- c(1.5, 1.2, 20.06)
v_num
#vector integer
v_int <- c(15,12,20,6)
v_int
#vector logical
v_log <- c(TRUE, TRUE, FALSE, TRUE, FALSE, F, T)
v_log
#vector character
v_character <- c("just", "live", "in", "your", "life", ":,D")
v_character

#2. Matrix uk. 4*4
mtrx <- matrix(-5:10, nrow = 4, ncol = 4)
mtrx

#3. Array 4d
arr <- array(1:40, dim = c(5, 2, 4))
arr

#4. Data Frame kolom 4: Character, Numeric, Logical, Logical
aes <- data.frame(
  Nama = c("karina", "aeri", "minjeong", "yizhuo"),
  Umur = c(20, 25, 19, 23),
  cukup_umur = c(TRUE, TRUE, TRUE, TRUE),
  umur_saat_debut = c(TRUE, FALSE, TRUE, FALSE)
)
aes

#5. List 5 Komponen: (vector baris, vector kolom, matrix 4*4, data frame 4 kolom, dan list isi 4(matrix 4*4, array 4d, data frame, vector baris))
mylist <- list(
  v_baris = matrix(c(15, 12, 2006), nrow = 1),
  v_kolom = matrix(c(15, 12, 20, 6), ncol=1),
  mtrx4 = matrix(1:16, nrow = 4, ncol = 4),
  df = data.frame(Nama = c("karina", "aeri", "minjeong", "yizhuo"),
                  Umur = c(20, 25, 19, 23),
                  cukup_umur = c(TRUE, TRUE, TRUE, TRUE),
                  umur_saat_debut = c(TRUE, FALSE, TRUE, FALSE)),
  list4 <- list(
    mtrx4 = matrix(1:16, nrow = 4, ncol = 4),
    arr = array(1:24, dim = c(3, 2, 4)),
    df = data.frame(Nama = c("karina", "aeri", "minjeong", "yizhuo"),
                    Umur = c(20, 25, 19, 23),
                    cukup_umur = c(TRUE, TRUE, TRUE, TRUE),
                    umur_saat_debut = c(TRUE, FALSE, TRUE, FALSE)),
    v_baris = matrix(c(15, 12, 2006), nrow = 1))
)
mylist
