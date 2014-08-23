get-data: assignment for course in getting and cleaning data
============================================================

Background to the analysis
--------------------------

There is a substantial body of research on making computing functionality ready at hand in everyday life and work, labelled "pervasive computing" or "ubiquitous computing".
One part of this movement is making software and devices that are "context aware", whether physically, emotionally or socially.
One strand of that is to infer physical activity states from movement sensors. For example, is the user driving, or asleep? What is the best way to deal with incoming messages or calls in that case?

Focus of data preparation
-------------------------

Prepare data to facilitate the recognition of phyiscal activity states from smartphone accelerometers and gyroscopes. The recognition work could be attempted using machine learning techniques, for example.
In machine learning, some practitioners offer the advice to start simple. Therefore, this data preparation includes just a few sensor variables.

Source data
-----------

The source data is a given by the terms of the assignment.
The unpacked source data contains test and training data. I have processed only the training data.
The 

Use of tools
------------

The [code table document](./code_table.html) was prepared using R Markdown, which is supported by RStudio. Here is the [source](./code_table.Rmd)
R v3.1.1 and RStudio v0.98 were used.
Packages used in the [data preparation script](./runanalysis.R) can be seen from library calls in the source.



