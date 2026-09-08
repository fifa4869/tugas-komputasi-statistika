#Nama: Khofifa Khoirunnisa
#NIM: 3338250054
#Komputasi Statistika-Manajemen Data

iris <- datasets::iris
iris

#Menampilkan data Sepal.Length saja
iris$Sepal.Length

#Tipe data tiap kolom
str(iris)
sapply(iris, class)

str(iris$Sepal.Length)
sapply(iris$Sepal.Length, class)

#Variabel baru dari variabel Sepal.Width
iris <- iris %>%
  mutate(
    turunan = ifelse(Sepal.Width > 3, "Besar", "Kecil")
)
iris

#Ubah turunan menjadi sepal
iris <- iris %>%
  rename(sepal = turunan)
iris

#Ambil data dengan sepal bernilai besar dari species virginica
data_virginica <- filter(iris, sepal == "Besar", Species == "virginica")
print(data_virginica)

iris %>%
  filter(sepal == "Besar", Species == "virginica") %>%
  select(Species, sepal)

#Cek jumlah species dalam data
species_unik <- unique(iris$Species)
species_unik
species_unik_2 <- length(unique(iris$Species))
species_unik_2


#Data iris menjadi 3 data frame berdasarkan species
iris_setosa <- filter(iris, Species == "setosa")
iris_setosa
iris_versicolor <- filter(iris, Species == "versicolor")
iris_versicolor
iris_virginica <- filter(iris, Species == "virginica")
iris_virginica

#Dari setiap data frame species, urutkan data berdasarkan Sepal.Width
iris_setosa_width <- arrange(iris_setosa, Sepal.Width)
iris_setosa_width
iris_versicolor_width <- arrange(iris_versicolor, Sepal.Width)
iris_versicolor_width
iris_virginica_width <- arrange(iris_virginica, Sepal.Width)
iris_virginica_width
