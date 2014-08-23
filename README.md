get-data: assignment for course in getting and cleaning data
============================================================

Background to the analysis
--------------------------

There is a substantial body of research on making computing functionality ready at hand in everyday life and work, labelled "pervasive computing" or "ubiquitous computing".
One part of this movement is making software and devices that are "context aware", whether physically, emotionally or socially.
One strand of that is to infer physical activity states from movement sensors. For example, is the user driving, or asleep? What is the best way to deal with incoming messages or calls in that case?

Focus of data preparation
-------------------------

Prepare data to facilitate the recognition of phyiscal activity states from smartphone accelerometers and gyroscopes (which can be used to estimate angular acceleration). The recognition work could be attempted using machine learning techniques, for example.

In machine learning, some practitioners offer the advice to start simple. Therefore, this data preparation includes just a few variables.

The publishers of the data have already processed the raw sensor output, and I have chosen to exoloit that. I have decided to extract the "Body" components (with estimated gravity constributions subtracted out).

Additionally, I have chosen to focus on the simple metrics in the time domain. Without a direct request from somebody who understands the frequency domain measures and knows what they plan to do with the frequency domain data, I have chosen to extract only data whose derivation I understand. Boring, but morally defensible.

That is, I have concentrated on

Source data
-----------

The source data is a given by the terms of the assignment.

The unpacked source data contains test and training data. I have processed only the training data.

mean and standard deviation.



Deliverables
------------

* [Code table](./code_table.html) 

* [Source for code table](./code_table.Rmd)

* [Data preparation script](./runanalysis.R) 




Use of tools
------------

* R v3.1.1 and RStudio v0.98 were used.

* The [code table document](./code_table.html) was prepared using R Markdown, which is supported by RStudio.

* Packages used in the [data preparation script](./runanalysis.R) can be seen from library calls.



