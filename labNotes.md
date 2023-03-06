# Making this all work

This repository uses make, a language which helps builds a file (or files) from multiple objects.
As long as you only want to combine the 5 text files currently included (preamble.txt litReview.txt approach.txt results.txt conclusion.txt) and continue using markdown, you do not need to edit the makefile. I briefly note what you'd need to do if you want to combine more than these five text files.  

To contruct the html file again with new edits, navigate to the folder (repository) you download (clone, see below) and type "make" into terminal. You can do this iteratively as you update any of the 6 text files. You can continue adding images or other embedded markdown elements, as long as they are in the folder (repository).  

To intially clone this repository to your computer, in Terminal, navigate to the folder you'd like to download this to and type "git clone -b main https://github.com/kam-hak/Assignment6_compsci".  

## Brief description of the Makefile

The Makefile here defines our text segments as the variable 'objects', these are in the order they need to appear on the website. Then we call the shell script to concatenate these files in order, creating an intermediate markdown file "highly_inaccurate.md". Finally, we use the pandoc tool to convert this to html, specifying to use mathjax and $ signs for the math latex. The last clean argument in case you wanted to delete the unused, intermediate object to re-construct fresh.  

### Make and additional text files

If you add additional text files (or whatever extension, as long as it's written in markdown), you will need to add it to the 'objects = ..." argument **in the correct order you want it to be inserted**. Of course, it also needs to be in the folder (repository)

## Git and version management

Finally, I uploaded this all to a git repository on github with the following commands (once I was already logged into my github on my terminal and had navigated to the folder):
>>git init #git # creating the repository  
>>git git add . # adds everything in my current folder to the staging area  
>>git commit -m "message here" # this 'commits' changes to my local git repository, ready to be pushed to the git server  
>>git branch -M main # Changes the branch name from master to main (this is what github suggested)
>>git push -u origin main # This pushes our folder onto the server and makes it the default, so further updates only need git push to add to the main branch (this is what github suggested)
 