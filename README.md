get-data: assignment for course in getting and cleaning data
============================================================

Background to the analysis
--------------------------

There is a substantial body of research on making computing functionality ready at hand in everyday life and work, labelled variously as "pervasive computing" or [ubiquitous computing](http://www.ubiq.com/hypertext/weiser/UbiHome.html).
One part of this movement is making software and devices that are "context aware", whether physically, emotionally or socially.
One strand of that is to infer physical activity states from movement sensors. For example, is the user driving, or asleep? What is the best way to deal with incoming messages or calls in that case?

Focus of data preparation
-------------------------

Prepare data to facilitate the recognition of phyiscal activity states from smartphone accelerometers and gyroscopes (which can be used to estimate angular acceleration). The recognition work could be attempted using machine learning techniques, for example.


Source data
-----------

The source data is given by the assignment.

The structure of the source data is not completely explicit. By comparing contents and data sizes I have inferred:

- *activity_labels.txt* contains an encoding of activities (walking, etc.) into integer IDs, that is used in the observation files. One row per participant.

- *features.txt* contains an ordered list of features, that is (derived) sensor measures. Sensor values are listed in the same order, in the data files. One feature per row.

- *test* and *train* directories containing respectively test and training data. These folders have the same structure. For train:

	- *subject_train.txt* gives the participant numeric ID (1-30) for each observation, one row per observation.
	
	- *y_train.txt* gives the activity numeric ID (see above) for each observation, one row per observation.
	
	- *X_train.txt* gives the values of features, for each observation. One row per observation, features space-separated and in the order listed in features.txt (see above).

Output
------

The publishers of the data have already processed the raw sensor output, and I have chosen to tidy the rocessed data, only. 

We are instructed to focus on the sensor measures for means and standard deviations. I have chosen to focus on the "first order" means and standard deviations, and to leave out the angle measures that are based on them.

The script outputs:

- *tidy.txt* - the subsetted measures for merged training and testing data. 

- *meltedmeans.txt* - mean values of the subsetted measures, by participant, activity and variable name. This is the file delivered as part of the assignment.

Here is the [code book](./code_table.md) for meltedmeans.txt.


Use of tools
------------

* R v3.1.1 and RStudio v0.98 were used.

* [plyr](http://www.jstatsoft.org/v40/i01/paper) and [reshape2](http://www.jstatsoft.org/v21/i12/paper) were used to tidy the data.



