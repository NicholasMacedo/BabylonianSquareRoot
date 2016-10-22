all:
	cobc -x -free -Wall mainSqroot.cob -o runSqroot
	cobc -m -free -Wall sqroot.cob

clean:
	rm *.so
	rm runSqrt
