.PHONY: all
all: nouba_rasd.pdf nouba_isbain.pdf nouba_dhil.pdf ya_achaq_fi_zin_libnet.pdf ya_man_bi_sahm_alashfar.pdf

%.pdf: %.ly common.ly
	lilypond $<
clean:
	rm *pdf *midi
