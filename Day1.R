################ 
#Day 1 18.11.2014
#Fabian Schleich
#lecture notes
######################
#renv and git and rmarkdown
#reproducibility difficult also for analysis part
#updated code/packages influence the outcome of analysis!

###### renv --> 
#Isolated private package environment 
#protable --> can be transfered to new pc
#reproducible --> meta data stalled 
#Library:
#packages are part of a library 
#function: .libPaths() gives paths
.libPaths()
# View(old.packages())
View(old.packages())
#
#
#repository source of packages
#like CRAN (R) or Bioconductor (bio stuff) Posit Public Packages (python and others stuff)
#R universe (in development) be more careful
#
#install.packages --> bioconductor, CRAN etc can be specified
#renv::install()
#renv::install(ggplot2+version etc)
#pak --> shows trees to see dependencies 
#
#
#General work flow: init, then install, record which project one used during application
#snapshot --> status pic of the environment
#renv restore needs github for history!
library(renv)
renv::init

#Rprofile --> tells what is installed/going on etc
#renv.lock --> history file that can be used to re install on diffrent pc
#renv::restore reverts to previous state to lockfile
#renv::install install packages from github cran etc.
#renv::update --> be careful, take snapshot before you do it to be able to revert
#renv::status very similar to restore, tells inconstancy between lockfile, lib etc 
#caveats: renv tracks R version but isnt a R version management 
#conda: R version control like rig but very comandline heavy
#Pandoc: extra software that is not snapshot (but is installed already)
#renv::deactivate or renv::activate() --> stop renv from fucking aorund if not eeded
#
#good: isolated, portable, reproducible 
#bad:learning, routine (snapshot commit), initialization time (takes a bit time), 
#storage? shouldnt be issue only when set up wrongly
#
#
#exam 1: how to upload to git --> review by peers, either:
#semantic search, image filter, other filter xromdy  bit easier(?)
#
#review others projects
#total review + uploaded doc on canvans --> comment on cnavs the review
#
#
#conflict: same command use across different packages --> uses the one from the last package installed
#
#
#Rmarkdown --> to reuse same analysis pipeline
#
#Why and how: 
#Markup is text encoding system 
#similar but not the same for html
#
#
#Markdown: 
#lightweight markup language easy syntax
#RMarkdown:
#Extension of Markdown to embed R code into Markdown document for dynamic
#reports that both analysis and output (run code then generate image)
#
#
#number of code chancks for easier debugging
#YAML block: 
#header is in this format, defining metadata and document output options
#Syntax: 
#``` begin and end of code chuck
#Rendering:
#render/knit via button html, pdf and word document
#
#Git:versions control
#Github: store data /upload, for sharing work, nicer interface, also social network
#Version control: 
#time control, tracks changes, seamless collaboration
#can be used to branch out projects too
#
#Git
#decentralized version control system, dosnt have to be stored separated
#directly available from R studio
#
#GitHub:
#nice user interface, is in the clouds 
#commands:
#
#git add changes added and commit records
#push --> sends it to github
#git pull --> sends stuff back to my pc
#git log 
#
#
#github:
#black is the real stuff, grey is previous stuff
#needs to be set up when creating project, gives additional window in enironment/History/Connections part
#
#after doing my renv and coding/running
#commit button, then push to github
#
#
#dev.off() after ggplot function 
#
#how to downgrade a version with renv:
#renv::install('specifies name of version here') to change version 
#run renv status to check changes and renv snapshot to update it
#run renv::revert(commit= 'lib from cash from git is installed')
#
#rmark down: working directory same place as script
#
#
# configure git:
 install.packages("usethis")
 library(usethis)
#
#
use_git()
# accept the commit and the restart
#
create_github_token()
#say yes
library(gitcreds)
gitcreds_set()
#and enter the generated token
#
use_github() 
#
#
#
#
#
#
#
#
#
#