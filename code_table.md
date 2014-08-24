Code table
==========

This file describes the output called *melted_means.txt*.

The file is a CSV with a column headers and no quotes.

The file is in long, narrow form. There is one row per activity, participant and variable. There are no missing values.


Columns
-------

Each row comprises:

1. *activity* is one of WALKING (on the level), WALKINGUPSTAIRS, WALKINGDOWNSTAIRS, SITTING, STANDING, LAYING.

2. *participant* us a numeric identifier for a participant (1 - 30).

3. *variable* is the descriptive name of a variable. (See below.)

4. *value* is the mean value of that variable across all observations of the activity by that participant.


Variable names
--------------

The variable names are structured. You can use matching to pull out the variables you  are interested in. For examples, variables are based on accelerometers (x, y, z directions) and gyroscopes. Also mean and stddev measures are taken.

The complete list of variable names in the file is:

tbodyaccmeanx tbodyaccmeany tbodyaccmeanz tbodyaccstdx tbodyaccstdy tbodyaccstdz tgravityaccmeanx tgravityaccmeany tgravityaccmeanz tgravityaccstdx tgravityaccstdy tgravityaccstdz tbodyaccjerkmeanx tbodyaccjerkmeany tbodyaccjerkmeanz tbodyaccjerkstdx tbodyaccjerkstdy tbodyaccjerkstdz tbodygyromeanx tbodygyromeany tbodygyromeanz tbodygyrostdx tbodygyrostdy tbodygyrostdz tbodygyrojerkmeanx tbodygyrojerkmeany tbodygyrojerkmeanz tbodygyrojerkstdx tbodygyrojerkstdy tbodygyrojerkstdz tbodyaccmagmean tbodyaccmagstd tgravityaccmagmean tgravityaccmagstd tbodyaccjerkmagmean tbodyaccjerkmagstd tbodygyromagmean tbodygyromagstd tbodygyrojerkmagmean tbodygyrojerkmagstd fbodyaccmeanx fbodyaccmeany fbodyaccmeanz fbodyaccstdx fbodyaccstdy fbodyaccstdz fbodyaccmeanfreqx fbodyaccmeanfreqy fbodyaccmeanfreqz fbodyaccjerkmeanx fbodyaccjerkmeany fbodyaccjerkmeanz fbodyaccjerkstdx fbodyaccjerkstdy fbodyaccjerkstdz fbodyaccjerkmeanfreqx fbodyaccjerkmeanfreqy fbodyaccjerkmeanfreqz fbodygyromeanx fbodygyromeany fbodygyromeanz fbodygyrostdx fbodygyrostdy fbodygyrostdz fbodygyromeanfreqx fbodygyromeanfreqy fbodygyromeanfreqz fbodyaccmagmean fbodyaccmagstd fbodyaccmagmeanfreq fbodybodyaccjerkmagmean fbodybodyaccjerkmagstd fbodybodyaccjerkmagmeanfreq fbodybodygyromagmean fbodybodygyromagstd fbodybodygyromagmeanfreq fbodybodygyrojerkmagmean fbodybodygyrojerkmagstd fbodybodygyrojerkmagmeanfreq, tbodyaccmeanx, tbodyaccmeany, tbodyaccmeanz, tbodyaccstdx, tbodyaccstdy, tbodyaccstdz, tgravityaccmeanx, tgravityaccmeany, tgravityaccmeanz, tgravityaccstdx, tgravityaccstdy, tgravityaccstdz, tbodyaccjerkmeanx, tbodyaccjerkmeany, tbodyaccjerkmeanz, tbodyaccjerkstdx, tbodyaccjerkstdy, tbodyaccjerkstdz, tbodygyromeanx, tbodygyromeany, tbodygyromeanz, tbodygyrostdx, tbodygyrostdy, tbodygyrostdz, tbodygyrojerkmeanx, tbodygyrojerkmeany, tbodygyrojerkmeanz, tbodygyrojerkstdx, tbodygyrojerkstdy, tbodygyrojerkstdz, tbodyaccmagmean, tbodyaccmagstd, tgravityaccmagmean, tgravityaccmagstd, tbodyaccjerkmagmean, tbodyaccjerkmagstd, tbodygyromagmean, tbodygyromagstd, tbodygyrojerkmagmean, tbodygyrojerkmagstd, fbodyaccmeanx, fbodyaccmeany, fbodyaccmeanz, fbodyaccstdx, fbodyaccstdy, fbodyaccstdz, fbodyaccmeanfreqx, fbodyaccmeanfreqy, fbodyaccmeanfreqz, fbodyaccjerkmeanx, fbodyaccjerkmeany, fbodyaccjerkmeanz, fbodyaccjerkstdx, fbodyaccjerkstdy, fbodyaccjerkstdz, fbodyaccjerkmeanfreqx, fbodyaccjerkmeanfreqy, fbodyaccjerkmeanfreqz, fbodygyromeanx, fbodygyromeany, fbodygyromeanz, fbodygyrostdx, fbodygyrostdy, fbodygyrostdz, fbodygyromeanfreqx, fbodygyromeanfreqy, fbodygyromeanfreqz, fbodyaccmagmean, fbodyaccmagstd, fbodyaccmagmeanfreq, fbodybodyaccjerkmagmean, fbodybodyaccjerkmagstd, fbodybodyaccjerkmagmeanfreq, fbodybodygyromagmean, fbodybodygyromagstd, fbodybodygyromagmeanfreq, fbodybodygyrojerkmagmean, fbodybodygyrojerkmagstd, fbodybodygyrojerkmagmeanfreq

