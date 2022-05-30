# CARMA Short Course 2022: Introduction to Python for Research

## Overview

Python is a general purpose programming language that includes a robust ecosystem of data science tools.
These tools allow for fast, flexible, reusable, and reproducible data processes that make researchers more efficient and rigorous with existing study designs, while transparently scaling up to big data designs.

This short course focuses on the foundational skills of identifying, collecting, and preparing data using Python.
We will begin with an overview, emphasizing the specific skills that have a high return on investment for researchers.
Then, we will walk through foundational Python skills for working with data.
Using those skills, we will cover collecting data at scale using several techniques, including programmatic interfaces for obtaining data from WRDS, application programming interfaces (APIs) for a wide range of academic and popular data (e.g., The New York Times), web scraping for quantitative and text data, and computer-assisted manual data collections.
From there, we will assemble and transform data to produce a ready-for-analysis dataset that is authoritatively documented in both code and comments, and which maintains those qualities through the variable additions, alternative measure construction, and robustness checks common to real projects.

By the end of the course, you will have the skills—and many hands–on code examples—to conduct a rigorous and efficient pilot study, and to understand the work needed to scale it up.


## Prerequisites

The course design does not assume any prior training, though reasonable spreadsheet skills and some familiarity with one of the commonly–used commercial statistical systems is helpful.
In particular, no prior knowledge of Python is required, and we will cover a general introduction to Python in the beginning of the course content.


## Schedule

The course is divided into four sections, each with three 75 minute segments, with breaks between segments.
In most segments, we will briefly cover some concepts with slides, then we will walk through notebooks to see and experiment with code, and use breakout rooms to apply those concepts further.


### Applied methods

segment | topic
---|--------
0a | Introduction
0b | Setup, Anaconda, and Jupyter
0c | Python basics I
1a | Python basics II
1b | Data handling
1c | Visualization
2a | Planning
2b | Data retrieval I
2c | Data retrieval II
3a | Data retrieval III
3b | Data retrieval IV
3c | Data assembly and conclusion


## Materials

The materials for this course are available in a public Github repository.

There is both a notebook and a slide deck for most segments.
The slides are available in zip archives containing Keynote and Powerpoint versions in the releases section (on Github).
Please note that the Keynote slides are (usually) the ones actually presented.

Also, there is an `environment.yml` file for setting up your Anaconda environment, using the instructions below.


## Preparing for the course

Before the first meeting, please complete the following.
If you encounter issues, get as far as you can, and we will work through them in class.

**Please note:** It is best to install (and work with) this software on a physical computer (i.e. not virtualized) that is not locked down with IT permissions.


### Download materials

1. On the right (on Github), click "Releases".
1. Find the release for your course (usually at the top), and click the link for "Source code (zip)" under the "Assets" heading to download a zip archive of the course materials. **Note:** this is also where the slides are located (usually uploaded the day before the course begins).
1. Expand the zip archive, which will produce a folder (e.g., `carma_python-1.2.0`) with the course materials inside.
1. Move this folder somewhere easy to find (e.g., your desktop) while the course is ongoing.


### Install software

1. Install [Anaconda, Python 3.9 version](https://www.anaconda.com/distribution/).
1. (experts-only alternative) Install miniconda instead of the GUI version. While there are direct download versions, you would typically use a package manager (e.g., brew on macOS, apt on Ubuntu).

**Note:** If you have a new Apple Silicon Mac, the easiest thing to do is to follow the instructions above, which will install Anaconda using Rosetta 2 (see this [Anaconda blog post](https://www.anaconda.com/blog/apple-silicon-transition)). There is a native version available, though it does not yet have the Anaconda Navigator graphical user interface. That omission is fine once you know your way around, but it's helpful for learning.


### Importing the Anaconda environment

1. Open the Anaconda Navigator app.
1. On the left, click Environment.
1. At the bottom of the resulting main window, click Import.
1. In the resulting popup, click the folder icon, navigate to the `environment.yml` file, and click Open.
1. Back in the import popup, the environment name should be filled in automatically from the file, `carmapy` in this case. If not, the default is `environment`, and you can replace that with `carmapy`. Click Import.
1. Wait for the packages for the environment to be downloaded and installed. This could take a several minutes.


### Install TextBlob text corpora

1. Open a terminal (on Windows, use the prompt labeled either "Anaconda Prompt" or "Anaconda (64-bit)" in the start menu).
1. Activate the `carmapy` environment using the command `conda activate carmapy`.
1. Install the corpora using the command `python -m textblob.download_corpora`. There may be warnings or errors that are not relevant for our purposes, but you should see a series of successful downloads.


### (optional) Run intro notebook

You can run the notebook that we will use in the first session as a test of whether the most important packages are working properly.


1. Open Anaconda Navigator.
1. Near the upper left of the main part of the window, find the control labeled "Applications on" followed by a drop down box (usually containing "base (root)").
1. Click the dropdown and select `carmapy` which the environment you installed in the instructions.
1. After a few seconds, the main window will refresh. Then, find "Jupyter Lab" and click the "Launch" button.
1. A browser window will pop up, and the Jupyter Lab interface will load. Note: if you appear to have a blank page, make sure you are using a modern browser like Safari, Chrome, or Firefox as your default. Older versions of Microsoft's browsers (even on Windows 10) lack modern features, though the newest Microsoft Edge browser should be fine.
1. On the left side of the Jupyter Lab interface, use the file browser to navigate to the location where you saved the `0a_intro.ipynb` notebook and double click it.
1. Once it loads, click the "Kernel" menu in the menu bar (inside the Jupyter Lab interface), and then click "Restart Kernel and Run All Cells..."
1. The notebook should run quickly, and you should not see errors. Note: the single most common issue with any import errors at the top is that you have not selected the environment in step 3 above. You need to do that before launching Jupyter Lab, and a subsequent change will not affect the already--running Jupyter Lab.


### (optional) Install VS Code

I will generally do walkthroughs using VS Code for notebooks instead of the Jupyter Lab interface.
VS Code is an open-source programming text editor platform, developed principally by Microsoft, that works with many languages (including Python and R), and it has nice built-in Jupyter Notebook support.
There are a number of conveniences that come with using Jupyter this way, so I suggest installing and using it instead of the web interface.

1. Download and install [VS Code](https://code.visualstudio.com).\
1. (optional) As time permits, do the built-in "Get Started with VS Code" walkthrough. It will give you an introduction to some of the nice features and customizability of VS Code.


## About Jason

Jason T. Kiley is an Assistant Professor at Clemson University.
His research examines the interplay of audience perceptions of firms, impression management, and their associations with outcomes, including recent publications in the Academy of Management Journal and Strategic Management Journal.
As part of his work, he works to advance the use of software to increase the range, efficiency, and rigor of conducting empirical research.
He is a co-organizer of the annual AOM Content Analysis PDW, and his published and in-progress work often uses state-of-the-art content analysis techniques, including recent work with semantic text analysis and machine learning.
