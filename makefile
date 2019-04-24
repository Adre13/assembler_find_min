find_min: find_min.o
	ld find_min.o -o find_min
find_min.o: find_min.s
	as find_min.s -o find_min.o
