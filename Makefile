.PHONY: all
all: $(filter-out common.pdf, $(patsubst %.ly, %.pdf, $(wildcard *.ly)))

%.pdf: %.ly common.ly
	lilypond $<
clean:
	rm *pdf *midi
