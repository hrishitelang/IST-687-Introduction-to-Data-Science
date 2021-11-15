## Intro to Data Science - Lab 2

# IST687 Section M003
# Professor Anderson
# Enter your name here: Hrishikesh Telang

#Select one of the below and add needed information
# 1. I did this homework by myself, with help from the book and the professor.

# Week	2 – First	Breakout:	Sorting	Data	and	Ordering	a	Data	Frame

#1. Make a copy of the built-in iris data set like this:
myIris <- iris

#2. Get	an	explanation	of	the	contents	of	the	data	set	with	the	help	function:
help("iris")

#3. Explore	myIris via str and the	glimpse	functions	(note:	you	need	to	install	and	
#library	'tidyverse'	to	use	glimpse).	Which	do	you	think	is	better?	Why
install.packages('tidyverse')
library(tidyverse)

#4. Summarize	the	variables	in	your	copy	of	the	data	set,	like	this:
summary(myIris)

#5. The	summary()	command	provided	the	mean	of	each	numeric	variable.	Choose	
#the	variable	with	the	highest	mean and	list	its	contents	to	the	console.	Any	
#variable	can	be	echoed	to	the	console	simply	by	typing	its	name.	Here's	an	
#example	that	echoes	the	variable with	the	lowest	mean to	the	console
myIris$Sepal.Length

#6. Now	sort	that attribute by	calling	the	sort()	function and	supplying	that	variable.	
#Remember	to	choose	the	variable	with	the	highest	mean
sort(myIris$Sepal.Length)

#7. Now	repeat	the	previous	command,	but	this	time	use	the	order()	function,	again	
#using	the	variable	with	the	highest	mean.
order(myIris$Sepal.Length)

#8. Write	a	comment	in	your	R	code	explaining	the	difference	between	sort()	and	
#order().	Be	prepared	to	explain	this	difference	to	the	class
sort() sorts the vector in an ascending order whereas order() returns the 
indices of the vector in a sorted order.

#9. Now	use	the	order	command	to	reorder	the	whole	data frame, store	the	new	
#dataframe	in	a	variable	called	'sortedDF'.
sortedDF <- myIris[order(myIris$Sepal.Length),]
View(sortedDF)

#10. Now	sort	the	dataframe	using	arrange(),	which	is	part	of	the	tidyverse	package.	
#This	time,	sort	based the	attribute with	the	lowest mean.	Store	the	new	
#dataframe	in	a	variable	called	'sortedDF1'
sortedDF1 <- myIris %>% arrange(Petal.Width)
sortedDF1

#11. Finally,	use	View()	to	examine	your	reordered	data	frames and	be	prepared	to	
#report	on	the	first	few	rows
View(sortedDF)
View(sortedDF1)

#End	breakout	1

#Breakout	2

#12. What	does	the	following	line	of	code	do?
myIris [,1]

This line essentially returns the Column values of 'Sepal.length', 
which corresponds to Index 1. This line works the same as myIris[,"Sepal.Length"].

#13. What	is	the	difference	(if	any)	between
myIris [,"Sepal.Length"]
myIris$Sepal.Length
They are the same command.

#14. Write	the	R	code	that	outputs	the	'Sepal.Length'	attribute	values,	using	the	
#select()	command.
select(myIris, Sepal.length)

#15. Create	a	new	column (called	‘Ave.Length’) in	myIris,	which,	for	each	row,	is	the	
#average	of	Sepal.Length	and	Petal.Length.	
myIris$Ave.Length <- mean(myIris$Sepal.Length)+mean(myIris$Petal.Length)
myIris$Ave.Length

#16.What	does	the	following	line	of	code	do:
which.min(myIris$Petal.Length)

It determines the index location of the column at which the Petal Length
is the smallest in magnitude.

#17. Using	the	code	from	the	previous	step,	output	the	row	(iris	observation)	with	the	
#smallest	petal	length.
myIris[which.min(myIris$Petal.Length),]

#18. Create	a	new	dataframe,	with	just	the	Petal.Length	and	Petal.Width	attributes
newDF <- data.frame(myIris$Petal.Length, myIris$Petal.Width)
View(newDF)

#19. Create	a	new	dataframe,	using	the	slice()	function,	with	only	the	first	three	rows	
#in	the	myIris	dataframe.
newDF2 <- myIris %>% slice(1:3)
newDF2

#20. Create	a	new	dataframe,	which	is	a	subset	of	myIris,	that	only	includes rows	
#where	Petal.Length is	less	than	1.4,	store	in	shortPetalDF
shortPetalDF <- myIris[myIris$Petal.Length < 1.4,]
shortPetalDF

#21. How	many	rows	are	in	the	shortPetalDF?
nrow(shortPetalDF)

#22. The	homework	asks	you	to	create	a	conditional	statement	with	if and	else.	A	
#conditional	statement	is	part	of	a	larger	group	of	specialized	commands	that	
#control	the	“flow”	of	a	program	– what	command	gets	run	and	when.	You	can	get	
#help	on	if,	else,	and	other	control	words.	Add	and	run	these	commands:
help("if")
help("Control")
#Now	add	and	run	your	first	conditional	statement:
myNumbers <- c(10,20,40,80,100)
if	(sum(myNumbers)	>	40)	print("The sum is greater than 40.")
