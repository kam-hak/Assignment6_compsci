objects = preamble.txt litReview.txt approach.txt results.txt conclusion.txt

highly_inaccurate.html : highly_inaccurate.md
	pandoc highly_inaccurate.md -s --mathjax -f markdown+tex_math_dollars -t html -o highly_inaccurate.html

highly_inaccurate.md : $(objects)
	cat $(objects) > highly_inaccurate.md

.PHONY : clean
clean :
	rm highly_inaccurate.md
