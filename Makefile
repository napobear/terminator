all: terminator1.pdf memcpy.pdf clrmem.pdf
	

terminator1.pdf: terminator1.lst
	enscript -M A4 --highlight-bar-gray=0.85 --highlight-bars=1 -p - terminator1.lst | ps2pdf - terminator1.pdf

memcpy.pdf: memcpy.lst
	enscript -M A4 --highlight-bar-gray=0.85 --highlight-bars=1 -p - memcpy.lst | ps2pdf - memcpy.pdf

clrmem.pdf: clrmem.lst
	enscript -M A4 --highlight-bar-gray=0.85 --highlight-bars=1 -p - clrmem.lst | ps2pdf - clrmem.pdf

terminator1.out terminator1.lst: terminator1.s65
	ca65 -o terminator1.out -l terminator1.s65

memcpy.out memcpy.lst: memcpy.s65
	ca65 -o memcpy.out -l memcpy.s65

clrmem.out clrmem.lst: clrmem.s65
	ca65 -o clrmem.out -l clrmem.s65

clean:
	rm -f terminator1.pdf terminator1.out terminator1.lst memcpy.pdf memcpy.out memcpy.lst clrmem.pdf clrmem.out clrmem.lst

