**CONTENTS**

- TOC
{:toc}
## Overview

ESM 263 is a one-quarter introduction to geographic information systems (GIS). The course is intended for MESM students who need to acquire a working knowledge of GIS theory and practice in a single quarter.

### Who

- **instructor:** [James Frew](https://purl.org/frew) (office hours: TBD or [by appointment](mailto:frew@ucsb.edu?subject=appointment%20request), on [Zoom](https://ucsb.zoom.us/my/jamesfrew) or in Bren Hall 4524)
    - If you request an appointment, please let me know if I can announce it on Slack and let your classmates crash it. (You get first dibs on questions…)

- **TA:** [Niklas Griessbaum](https://bren.ucsb.edu/people/niklas-griessbaum). Office hours: 
    - Mondays after class from 17:00 to 18:00. 
    - Through January remotely on zoom. [Room link](https://ucsb.zoom.us/j/2805218649).
    - After January  in Bren Hall 3001.
    - On slack

### When & where

| session | day  | time              | in-person |
  | ------- | ---- | ----------------- | --------- |
| lecture | Mon  | 15:30&ndash;16:45 | BH 1414   |
| lab 1   | Tue  | 12:00&ndash;13:50 | BH 3035   |
| lab 2   | Wed  | 15:30&ndash;17:20 | BH 3035   |

- The labs are identical:
  - Try to attend the lab you enrolled in—otherwise, there may not be a place for you to sit.
    - However, you're welcome to connect to any session (lab or lecture) offered via Zoom.
- **The following sessions will only be offered remotely:**
  - **All sessions 2022-01-03 through 2022-01-31** ([pandemic restrictions](https://chancellor.ucsb.edu/memos/2022-01-08-update-winter-quarter-instruction))
  - **2022-02-21 lecture** (Presidents' Day)

#### Zoom

We'll use Zoom for recording class sessions, and, when necessary, to enable remote participation.

- **Recording:** All *lectures* will be recorded. Portions of *lab* sessions *may* be recorded as well, if the content is amenable (e.g., demonstrations in response to student questions.)
- **Remote participation:** Class sessions [specifically designated as remote](#when--where) will always be recorded, and will support remote participation. During these sessions you'll able to ask questions, share your screen, etc. (all the Zoom stuff you know and love…)
  - You're welcome to connect to a course Zoom meeting when it's recording an in-person session; however, we won't be supporting the same level of interaction as during a remote session—we may not be monitoring the chat, or noticing when you raise your hand, or etc. etc.
  - Lecture on holidays (17 Jan and 21 Feb) will be recorded for you to watch at your convenience. (I'll record them at usual lecture time, and you're welcome to connect then, but it's certainly not required.)

We'll use the same Zoom meeting throughout the course—see [the course GauchoSpace page](https://gauchospace.ucsb.edu/courses/course/view.php?id=372) (only accessible if you're enrolled) for connection information.

Recordings will be posted to [the course Box folder](https://ucsb.box.com/s/o1jbzf7pjc905zw4cw6a6kx3gq5zx3em) shortly after they're acquired. 

### QGIS

This year (Winter 2022) we're teaching ESM 263 using [**QGIS**](https://qgis.org), a free, open-source GIS application. QGIS runs pretty much identically on macOS and Windows, and is far less resource-intensive than ArcGIS.

QGIS has a fairly rapid development cycle—a new version will almost certainly appear while the course is in progress. To keep things sane, we'll be sticking with version **3.22.2**

> QGIS is installed on all of the "student" computers at Bren, so you can do all of your coursework on a Bren computer if you like. However, it's quite nice to able to do GIS-y stuff whenever the spirit moves you, so we encourage you to install QGIS on your own computer—see the [Week 1 lab instructions](week/01/index.md#lab) for details.

More about QGIS at:

- [QGIS users page](https://qgis.org/en/site/forusers/)
- [QGIS 3.22 documentation](https://docs.qgis.org/3.22/en/docs/) (you might want bookmark this…)

### Online resources

- [home page](https://jamesfrew.github.io/ESM_263_GIS/): You're looking at it.

- [Slack workspace](https://esm263-w22.slack.com/): for (almost) everyting we would've used email for:
  - You: ask (and help each other with) questions about course content.
  - We: answer questions, post changes to deadlines and assignments, etc.<br><br>

- [Box folder](https://ucsb.box.com/s/o1jbzf7pjc905zw4cw6a6kx3gq5zx3em): stuff for you to view or download that:
  - is too big to upload to the course's GitHub-hosted [website](); and/or
  - needs to be restricted to UCSB users (e.g., Zoom videos with students in them)
  
  See the [README file](https://ucsb.box.com/s/3mug03p55p3bpz48wr7snk8ago9k0mvp) for an explanation of how the Box folder is laid out.
  
- [GauchoSpace](https://gauchospace.ucsb.edu/courses/course/view.php?id=372): stuff that need to be restricted to those enrolled in the course:
  - Zoom connection information
  - assignment submission
  - occasional email announcements<br><br>

- [miscellaneous reference material](general/index.md): stuff we mention in class that's not specific to a particular week's topic

### Textbooks

- **required:**
  - Bolstad, P. (2019) ***GIS Fundamentals: A First Text on Geographic information Systems, Sixth Edition***. Ann Arbor, MI: XanEdu Publishing, Inc. ISBN 978-1-59399-552-2  
    [[homepage](https://www.paulbolstad.org/gisbook.html)] [[Amazon](https://www.amazon.com/dp/1593995520)]
    - Be sure to get the **sixth** edition.
- optional:
  - Graser, A.; Peterson, G.N. (2020) ***QGIS Map Design, Second Edition***. Chugiak, AK: Locate Press LLC. ISBN 978-0998547749  
    [[homepage](https://locatepress.com/qmd2)] [[Amazon](https://www.amazon.com/dp/0998547743)]
    - This is good to have if you're really fired up about making pretty maps.

## Syllabus

| week |       dates       |    how    | topics                                                     |
| :--: | :---------------: | :-------: | ---------------------------------------------------------- |
|  1   |     03–05 Jan     |  remote   | [Introduction to GIS & cartography](week/01/index.md)      |
|  2   |     10–12 Jan     |  remote   | [Coordinate systems and map projections](week/02/index.md) |
|  3   |     17–19 Jan     |  remote   | [Vector data](week/03/index.md)                            |
|  4   |     24–26 Jan     |  remote   | [Tabular data](week/04/index.md)                           |
|  5   | 31 Jan, 01–02 Feb | in-person | [Raster data](week/05/index.md)                            |
|  6   |     07–09 Feb     | in-person | [GIS models](week/06/index.md)                             |
|  7   |     14–16 Feb     | in-person | [Terrain and watershed analysis](week/07/index.md)         |
|  8   |     21–23 Feb     | in-person | [GIS data: sources and capture](week/08/index.md)          |
|  9   | 28 Feb, 01–02 Mar | in-person | [Programming GIS](week/09/index.md)                        |
|  10  |     07–09 Mar     | in-person | [QGIS on the web](week/10/index.md)                        |

## Assignments

- [Grading criteria](general/grading_criteria.md)

All assignments should be submitted to [GauchoSpace](https://pelican.gauchospace.ucsb.edu/courses/course/view.php?id=372) by **midnight** on the due date.

| due        | assignment                                                   | feedback                              |
| ---------- | ------------------------------------------------------------ | ------------------------------------- |
| Wed 12 Jan | [Cartography](assignment/01/index.md)                        | [TA](assignment/01/feedback/index.md) |
| Wed 02 Feb | [Sea level rise](assignment/02/index.md)                     | [TA](assignment/02/feedback/index.md) |
| Mon 21 Feb | [Site suitability for wind power](assignment/03/index.md)    | [TA](assignment/03/feedback/index.md) |
| Wed 16 Mar | [Multicriteria analysis for conservation](assignment/04/index.md) | TA                                    |

