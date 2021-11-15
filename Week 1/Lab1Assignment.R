# Lab Assignment
# Week	1	- First	Breakout

# 1. Use	the	command	line	in	R-Studio	to	add	together	all	of	the	numbers	between	1	
#and	10	(inclusive). Take	note	of	the	result.	Remember,	every	student	should	type	
#and	run the	code	on	their	own	copy	of	R-studio.
1+2+3+4+5+6+7+8+9+10

#2. Now	create	a	vector	of	data	that	contains	the	numbers	between	1	and	10	
#(inclusive).	Here	is	a	line	of	code	to	do	that:
myNumbers <- c(1,2,3,4,5,6,7,8,9,10)

#3. Now	add	together	all	of	the	numbers	that	are	in	the	vector	myNumbers.	There	is	
#a	built-in	function	within	R	that	can	do	this	for	you	in	one	step:	Take	a	guess	as	
#to	the	name	of	that	function	and	run	it	on	myNumbers. Check	your	result	against	
#the	results	of question	1.
sum(myNumbers)

#4. R	can	do	a	powerful	operation	called	"vector	math"	in	which	a	calculation	runs	
#on	every	element	of	a	vector.	Try	vector	math	on	myNumbers	by	adding	10	to	
#each	element	of	myNumbers,	and	storing	the	result	in	myNewNumbers.		Print	
#out	myNewNumbers.
myNewNumbers <- myNumbers + 10

#5. 5. Efficiently	calculate	a	sum	of	the	numbers	between	11	and	20	(inclusive),	using	
#techniques	from	the	problems	above. Hint:	use	c(11:20)
sum(c(11:20))

#6. Calculate	a	sum	of	all	of	the	numbers	between	1	and	100	(inclusive),	using	
#techniques	from	the	problems	above.
sum(c(1:100))

#End	of	breakout	1

#7. Make	sure	you	have	a	variable	myNumbers,	that	is	a	vector	of	10	numbers	
#(1,2,3,4,5,6,7,8,9,10)
#8. Add	the	following	commands	to	the	end	of	your	code	file	and	run	each	one:
#mean(myNumbers)
mean(myNumbers)
#median(myNumbers)
median(myNumbers)
#max(myNumbers)
max(myNumbers)
#min(myNumbers)
min(myNumbers)
#length(myNumbers)
length(myNumbers)

#9. Add	a	comment	to	each	of	the	lines	of	code	in	your	file	explaining	what	it	does.	
#The	comment	character	is	"#".	
mean(myNumbers) #This returns the mean of the vector 'myNumbers'.
median(myNumbers) #This returns the median of the vector 'myNumbers'.
max(myNumbers) #This returns the maximum value of the vector 'myNumbers'.
min(myNumbers) #This returns the minimum value of the vector 'myNumbers'.
length(myNumbers) #This returns the number of values of the vector 'myNumbers'.

#10. Explain	the	output	of	the	following	command:
#myNumbers	>	5
This command returns a series of logical outputs in which each element of the vector 'myNumbers' 
satisfies the logical condition of values being greater than or lesser than 5.
It can be observed that all integers lesser than 5 are labelled as FALSE
whereas integers greater than 5 are labelled as TRUE.

#11. Explain	what	is	in	bigNum after	executing	the following	command:
#bigNum	<- myNumbers[myNumbers	>	5]
bigNum will contain a vector of all those integers that essentially satisfies 
the condition of myNumbers being greater than 5.

#12. Whenever	you	need	R	to	explain	what	a	command	does	and	how	it	works,	use	
#the	?	command	or	the	help()	command.	Add	and	run	these	commands:
#?mean
#help("mean")
?mean
help("mean")