vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))
# Problem 1 
union_v12 <- union(vec1, vec2)
# Problem 2
intersect_v12 <- intersect(vec1, vec2)
# Problem 3
diff_v12 <- setdiff(vec1,vec2)
diff_v21 <- setdiff(vec2,vec1)

# Problem 4
vec3 = c(rownames(mtcars[1:15,]))
vec4 = c(rownames(mtcars[11:25,]))

# vec3 and vec4 are vectors extracted from mtcars dataframe column 1 index 1:15 and 11:25
str(vec3)
#chr [1:15] "Mazda RX4" "Mazda RX4 Wag" "Datsun 710" "Hornet 4 Drive" ...
str(vec4)
#chr [1:15] "Merc 280C" "Merc 450SE" "Merc 450SL" "Merc 450SLC" ...
#str() function compactly displays structure of an R Object abowe outputs clarifies that
#both vec3 and vec4 are Character vectors of length 15.

is.na(vec3)
#[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#[13] FALSE FALSE FALSE
is.na(vec4)
#[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#[13] FALSE FALSE FALSE

#is.na() functions returns true in the index position if an NA value present in the Vector.
#vec1 and vec2 does not contain any NA Values.

is.character(vec3)
#[1] TRUE
is.character(vec4)
#[1] TRUE
# is.character() function returns TRUE if elements of the vector is character.
# We can conclude that vec3 and vec4 are perfect character vectors.

is.unsorted(vec3)
#[1] TRUE
is.unsorted(vec4)
#[1] TRUE
#is.unsorted() returns true if a vector is not sorted.
#In case of data analysis a sorted data will be more useful in some scenarios depending on business requirement.
#vec3 and vec4 are unsorted vectors.

#for finding integration between data we can use functions like union(),intersect(),setdiff() etc.
# %in% also gives insights about data integration.
vec3 %in% vec4
#[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#this operator returns TRUE in case any of the elements in first vector(vec3) is present in second vector.
# last 5 elements in vec3 is present in vec4
vec4 %in% vec3
# [1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#in other words first 5 elements in vec4 is present in vec3
