---
layout: home
title: Syllabus
output:
  pdf_document:
    highlight: tango
numbersections: true
linkcolor: blue
---


- TOC
{:toc}

# Overview

ESM 263 is a one-quarter introduction to geographic information systems (GIS). The course is intended for MESM students who need to acquire a working knowledge of GIS theory and practice in a single quarter.

# Who

## Instructor: [Niklas Griessbaum](https://bren.ucsb.edu/people/niklas-griessbaum) 

Office hours: 

- By appointment griessbaum@ucsb.edu. If you request an appointment, please let me know if I can announce it on [Canvas](https://ucsb.instructure.com/courses/3096) and let your classmates crash it. (You get first dibs on questions …)
- Tuesdays after lab from 14:00 to 15:30 in the GIS lab (BH 3035)
- Wednesdays from 11:00 to 12:30 in the GIS lab (BH 3035)
- If everything else fails: Drop in at my office in (BH 3001). I should be around Mondays through Wednesdays. Please mind that I have very busy officemates.


## TA: [Sean Reid](https://www.geog.ucsb.edu/people/students/sean-reid)

Office hours:

- Mondays at 10:00 to 11:00 in the GIS lab (BH 3035)
- Wednesdays at 17:15 to 18:15 in the GIS lab (BH 3035)

[Sean Reid Info](general/Sean.pdf)
  

# When & Where

| Session | Day  | Time              | Room      |
| ------- | ---- | ----------------- | --------- |
| lecture | Mon  | 15:30 to 16:45    | BH 1414   |
| lab 1   | Tue  | 12:00 to 13:50    | BH 3035   |
| lab 2   | Wed  | 15:30 to 17:20    | BH 3035   |

- The labs are identical. Try to attend the lab you enrolled in—otherwise, there may not be a place for you to sit. However, you're welcome to connect to any session (lab or lecture) offered via Zoom.
- We'll use Zoom for recording class sessions, and, when necessary, to enable remote participation.
- The lecture on Martin Luther King Jr. Day (2023-01-16) and President's day (2023-02-20) will only be offered remotely via zoom. Those lectures will be recorded for you to watch at your convenience. (I'll record them at usual lecture time, and you're welcome to connect then, but it's certainly not required.)
- **Recording:** All *lectures* will be recorded. Portions of *lab* sessions *may* be recorded as well, if the content is amenable (e.g., demonstrations in response to student questions).
- **Remote participation:** Class sessions will always be recorded, and will support remote participation. During these sessions you'll able to ask questions, share your screen, etc. 
- You're welcome to connect to a course Zoom meeting when it's recording an in-person session; however, we won't be supporting the same level of interaction as during a remote session—we may not be monitoring the chat, or noticing when you raise your hand.
- We'll use the same Zoom meeting throughout the course. You can find the links on the [Canvas course page](https://ucsb.instructure.com/courses/3096).
- Recordings will be posted to [the course Box folder](https://ucsb.box.com/s/g50uv6oely7rntr0f64l4fepdd9aovkm) shortly after they're acquired. 


# QGIS
We are teaching ESM 263 using [**QGIS**](https://qgis.org), a free, open-source GIS application. QGIS runs pretty much identically on macOS and Windows, and is far less resource-intensive than ArcGIS.

QGIS has a fairly rapid development cycle—a new version will almost certainly appear while the course is in progress. 
To keep things sane, you might wish to stick with version **3.22.13** (Białowieża)

> QGIS is installed on all of the "student" computers at Bren, so you can do all of your coursework on a Bren computer if you like. However, it's quite nice to able to do GIS-y stuff whenever the spirit moves you, so we encourage you to install QGIS on your own computer—see the [Week 1 lab instructions](week/01/index.md) for details.

More about QGIS at:

- [QGIS users page](https://qgis.org/en/site/forusers/)
- [QGIS 3.22 documentation](https://docs.qgis.org/3.22/en/docs/) (you might want bookmark this…)

# Online resources

- [home page](https://niklasphabian.github.io/ESM263_GIS/): You're looking at it.
- [canvas](https://ucsb.instructure.com/courses/3096):
  - Home: 
    - Zoom links + PWD 
    - course homepage
  - Discussions:
    - for (almost) everyting we would've used email for:
    - You: ask (and help each other with) questions about course content.
    - We: answer questions, post changes to deadlines and assignments, etc 
  - Assignments
  - Announcements
- [Box folder](https://ucsb.box.com/s/g50uv6oely7rntr0f64l4fepdd9aovkm): stuff for you to view or download that:
  - is too big to upload to the course's GitHub-hosted [website](https://niklasphabian.github.io/ESM263_GIS/); and/or
  - needs to be restricted to UCSB users (e.g., Zoom videos with students in them)
- [miscellaneous reference material](general/index.md): 
  - stuff we mention in class that's not specific to a particular week's topic

# Textbooks

- **required:**
  - Paul Bolstad and Steven Manson (2022) ***GIS Fundamentals: A First Text on Geographic information Systems, 7th Edition***. 
  ISBN 978-0-9717647-5-0  [[homepage](https://www.gisfundamentals.org/)] 
    
- optional:
  - Graser, A.; Peterson, G.N. (2020) ***QGIS Map Design, Second Edition***. Chugiak, AK: Locate Press LLC. ISBN 978-0998547749  
    [[homepage](https://locatepress.com/qmd2)] [[Amazon](https://www.amazon.com/dp/0998547743)]
    - This is good to have if you're really fired up about making pretty maps.

# Syllabus

| week |       dates                | topics                                                      |
| --:  | ---------------:           | ------------------------------------------                  |
|  1   | 2023-01-09 to 2023-01-13   | [Introduction to GIS & cartography](week/01/index.md)       |
|  2   | 2023-01-16 to 2023-01-20   | [Coordinate systems and map projections](week/02/index.md)  |
|  3   | 2023-01-23 to 2023-01-27   | [Vector data](week/03/index.md)                             |
|  4   | 2023-01-30 to 2023-02-03   | [Tabular data](week/04/index.md)                            |
|  5   | 2023-02-06 to 2023-02-10   | [Raster data](week/05/index.md)                             |
|  6   | 2023-02-13 to 2023-02-17   | [GIS models](week/06/index.md)                              |
|  7   | 2023-02-20 to 2023-02-24   | [Terrain and watershed analysis](week/07/index.md)          |
|  8   | 2023-02-27 to 2023-03-03   | GIS data: sources and capture              |
|  9   | 2023-03-06 to 2023-03-10   | Programming GIS                            |
|  10  | 2023-03-13 to 2023-03-17   | QGIS on the web                            |

# Assignments

- [Grading criteria](general/grading_criteria.md)
- All assignments should be submitted to [Canvas](https://ucsb.instructure.com/courses/3096) by **midnight** on the due date.

| due             | assignment                                  | feedback                              |
| ----------      | --------------------------------------------| ------------------------------------- |
| Fri 2023-01-20  | [Cartography](assignment/01/index.md)       | [TA](assignment/01/feedback/index.md) |
| Fri 2023-02-10  | [Sea level rise](assignment/02/index.md)    | [TA](assignment/02/feedback/index.md) |
| Fri 2023-03-03  | [Site suitability for wind power](assignment/03/index.md) |                         |
| Fri 2023-03-24  | Multicriteria analysis for conservation     |                                       |
