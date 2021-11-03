## the first script represents a function that shows the number of lines
## indicated after the comma inside a parenthesis. Before the comma, the name of the file
## in the current working directory should be typed.
## change the number inside the parenthesis when calling the function based upon the number
## of rows that you want to visualize.
## In this example we will visualize the first five (5) rows.
## The data set wages.csv, located in Desktop, is used as an example.

number_lines <-function(file,lines){
  var1 <-read.csv(file)
  var2 <-var1[lines,]
  return(var2)
}
number_lines("wages.csv",1:5)

## Load the data contained in the provided ‘iris.csv’ 
df_iris <-read.csv("iris.csv")
## file and write R code to do the following things
## print the last 2 rows in the last 2 columns to the R terminal
df_iris[149:150,4:5]
## get the number of observations for each species included in the data set
table(df_iris$Species)
## get rows with Sepal.Width > 3.5
df_iris[df_iris$Sepal.Width > 3.5,]
## write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa_data <-df_iris[df_iris$Species=="setosa",]
write.csv(setosa_data, file="setosa.csv")
## calculate the mean, minimum, and maximum of Petal.Length 
## for observations from virginica
virginica_petal_length <- df_iris[df_iris$Species=="virginica", "Petal.Length"]
## mean of virginica
mean(virginica_petal_length)
## minimum value of virginica
min(virginica_petal_length)
## maximum value of virginica
max(virginica_petal_length)
