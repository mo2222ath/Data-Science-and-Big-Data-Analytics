
Task 1:
	You have to submit .sql file with your ID ex: 20120060_Group_name_task1.sql
		1- Implemet the schema shown in the attached diagram(in the cn).
		2- insert dummy data in each table
		3- write query to show that total order price for each user . So, expected the result like the following
			user_name , order_id , total price
			Ahmed    , 1           , 1000
	  
		that means user ahmed bought many items in one order and when we sum the price for each order item (which maps to a certain product) the total order price is 1000.

Task 2:
	Given the attached csv file, write script to answer these questions
	Submission file name must contains the group ,  department , ID Example: IS_4_201900443.r
		1- read csv file “zipincome.csv”
		2-  what is the column names
		3- how many columns is the data?
		4- how many rows is the data?
		5- for each column, what are the MIN, MAX, and Mean values?

Task 3:
	using "USArrests" built in data set in R compute the optimal number of clusters.

Task 4:
	The Car Evaluation Database contains examples with the structural information directly relates cars like (safety rate, number of seats…) to evaluate the car level.
	For this task you are being asked to build a decision tree that correctly recognizes evaluation level of a car based on a set of 6 features. 
	You will be given a dataset that consist of 1328 instances.
	The class label is the last column in the provided comma separated file.
	Requirements:
		1. Divide the data set into 2 subsets, 1st one will be 80% of the data and call it “Training Set”, 2nd set will be 20% of the data,and call it “Testing Set”.
		2. Build the decision tree using the training set.
		3. Use the decision tree model to predict the label of the testing set instances.
		4. Use the testing set to evaluate your model in terms of accuracy. Note: accuracy is the correct predicted labels divided by the total number of testing instances.
		4. Submit R file containing your code and add comment in the code to state the accuracy you got.
		
		note: Deadline for task 4 is 9 - Jun - 2021.