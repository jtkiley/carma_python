# CARMA Short Course 2025: Introduction to Python for Research

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.8003201.svg)](https://doi.org/10.5281/zenodo.8003201)
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
![Test Notebooks](https://github.com/jtkiley/carma_python/actions/workflows/test_notebooks.yml/badge.svg)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)


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

The course is divided into three sections, each with four 75 minute segments, with breaks between segments.
In most segments, we will briefly cover some concepts with slides, then we will walk through notebooks to see and experiment with code, and use breakout rooms to apply those concepts further.

Note: This course has previously been scheduled with three segments over four days, and at least for now, I retain that numbering for consistency.


### Applied methods

segment | topic
---|--------
0a | Introduction
0b | Setup and Jupyter
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

**Note:** For June 2025, I am testing a [new slide technology](https://quarto.org/docs/presentations/revealjs/) for the first slide deck only, which is included in the slides folder. A full set of slides is available as described above.


## Preparing for the course

Before the first meeting, please complete the following.
If you encounter issues, get as far as you can, and we will work through them in class.

There are two alternative approaches (choose one):

1. Use cloud-hosted Codespaces on Github (highly recommended). This is the easiest option, and the Github free account tier has more than enough time for the course.
1. Install VS Code and Docker on your computer. This is also relatively easy and free.


### Github Codespaces (highly recommended)

1. Go to <https://github.com>.
1. Sign in with your Github account (or create one).
1. Go to <https://github.com/jtkiley/carma_python>.
1. In the upper right, click the "Fork" button.
1. On the resulting cage, click "Create fork." After a few seconds, the page will refresh with your fork of the course repository.
1. Click the green "Code" button.
1. In the resulting popover, click the "Codespaces" tab, and then click the green "Create codespace on main" button.
1. A new tab will open, and your codespace will start (it may take a couple of minutes the first time).
1. One your codespace is started, click "Codespaces" in the bottom left.
1. In the resulting menu at the center top of the page, click "Stop Current Codespace."

**Important:** Codespaces, like many cloud services, are metered by time. When you are not actively using the Codespace, it is best to stop it. They will stop running after a period of inactivity (by default 30 minutes; see [here](https://docs.github.com/en/codespaces/customizing-your-codespace/setting-your-timeout-period-for-github-codespaces) for instructions to change it).

Once your codespace has been created, you can return to it using the following procedure:

1. Go to your fork of the course repository on Github.
1. Click the green "Code" button.
1. In the resulting popover, click the "Codespaces" tab.
1. Click to select your codespace from the list (they usually get a two word random name).


### VS Code and Docker (locally)

1. Download and install [VS Code](https://code.visualstudio.com).
1. Download and install [Docker Desktop](https://www.docker.com/products/docker-desktop/).
1. Make sure Docker Desktop is running, or launch it if it is not. It typically stays open in the Mac menu bar or Windows system tray.
1. Open VS Code on your computer.
1. On the left side of the window, there is a vertical series of icons. Click the "Extensions" icon, which looks like four squares.
1. In the search box at the top of the left pane with the text "Search Extension in Marketplace," search for "Remote Development".
1. In the results below the search box, click "Remote Development."
1. In the resulting tab on the right side of the VS Code window, click "Install."
1. In the bottom left of the VS Code window, click the blue button that looks like `><` and has the hover text, "Open a Remote Window."
1. In the resulting menu at the center top of the window, click "Clone Repository in Container Volume..."
1. Paste in the URL for the course repository, `https://github.com/jtkiley/carma_python`, and then click "Clone git repository from URL."
1. After a couple of minutes, your local container should be built, and you can close VS Code.

Once your local container has been created, you can return to it using the following procedure:

1. Open VS Code on your computer.
1. On the Welcome tab, under the heading "Recent," click the "carma_python in a unique volume" link.


## API credential configuration

**Note:** I will refer to the configuration instructions below during the course, but you do not need to follow these when preparing for the course.

Later in the course, we will register for free API credentials.
To follow best security practices with API keys and passwords, there is some configuration we need to do.
It also makes using these credentials very convenient.

There are different processes depending on where we are running code.

1. Github Codespaces (recommended). [Github: Adding secrets for a repository](https://docs.github.com/en/codespaces/managing-codespaces-for-your-organization/managing-development-environment-secrets-for-your-repository-or-organization#adding-secrets-for-a-repository)
1. Mac, Windows, and Linux. [OpenAI: Best Practices for API Key Safety](https://help.openai.com/en/articles/5112595-best-practices-for-api-key-safety)
    - Follow the relevant instructions for your platform in point 4.
    - We are using this as a general reference, so our environment variable names will be different from the one described here.
    - For Windows, I suggest using option 2.


## About Jason

Jason T. Kiley is an Assistant Professor at Clemson University.
His research examines the interplay of audience perceptions of firms, impression management, and their associations with outcomes, including recent publications in Journal of Management, Academy of Management Journal, and Strategic Management Journal.
As part of his work, he works to advance the use of software to increase the range, efficiency, and rigor of conducting empirical research.
He is a co-organizer of the annual AOM Content Analysis PDW, and his published and in-progress work often uses state-of-the-art content analysis techniques, including recent work with large language models.
