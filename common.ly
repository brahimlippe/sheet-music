\include "arabic.ly"
%#(set-global-staff-size 22)
\header {
  % The following fields are centered at the bottom
  tagline = "brahim.pro@protonmail.com"
  copyright = "Copyright Creative Commons 1.0 https://creativecommons.org/publicdomain/mark/1.0/"
}

sabakey = \key re #`(
    (0 . ,NATURAL)
    (1 . ,SEMI-FLAT)
    (2 . ,FLAT)
    (3 . ,FLAT)
    (4 . ,NATURAL)
    (5 . ,FLAT)
    (6 . ,FLAT)
  )

sabaTuning = #'(
        ((2 . -1/4) . 1085/10000)
        ((4 . 0) . 1656/10000)
        ((5 . -1/2) . 684/10000)
        ((6 . 0) . 98/10000)
        )

\paper {
  bottom-margin = 15
  left-margin = 20
  right-margin = 20
  indent = 0
  oddFooterMarkup = \markup \column { \fill-line { \fromproperty #'header:copyright }}
  evenFooterMarkup = \oddFooterMarkup
  oddHeaderMarkup = \evenHeaderMarkup
  #(define fonts
  (make-pango-font-tree "Times New Roman"
                        "Nimbus Sans"
                        "Luxi Mono"
                        (/ staff-height pt 20)))
}
tuneMIDI =
#(define-music-function (scale music) (list? ly:music?)
    (let ((copy (ly:music-deep-copy music)))
      (for-some-music
        (lambda (m)
          (let ((pitch (ly:music-property m 'pitch)))
            (if (ly:pitch? pitch)
                (let* ((note-name (ly:pitch-notename pitch))
                       (alteration (ly:pitch-alteration pitch))
                       (offset (assoc-ref scale
                                          (cons note-name alteration))))
                  (if offset
                      (let* ((transpose-pitch (ly:make-pitch 0 0 offset))
                             (new-pitch (ly:pitch-transpose pitch
transpose-pitch)))
                        (ly:music-set-property! m 'pitch new-pitch)))))
            #f))
        copy)
      copy))
DCcoda = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al coda" }
}
DScoda = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.S. al coda" }
}
Segno = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#f #t #t)
  \mark \markup { \small \musicglyph #"scripts.segno" }
}
dwik = \drummode {
  \time 4/4
  bd8 sn hh sn bd4 sn4 |
}
dkhoul_barwel_s = \drummode {
  \time 4/4
  bd8 bd hh sn hh sn sn4 |
}
dkhoul_barwel_p = \drummode {
  \time 4/4
  bd8 bd hh sn bd4 sn |
}
khatem = \drummode {
  \time 6/8
  bd4 sn hh |
}
khafif = \drummode {
  \time 6/4
  bd4 r sn sn sn r |
}
draj = \drummode {
  \time 6/4
  bd4 bd sn sn sn sn8 sn |
}
hroub = \drummode {
  \time 2/4
  bd16 hh32 hh sn16 sn bd16 hh sn8 |
}
btayhi = \drummode {
  \time 4/4
  bd8 hh16 sn8 hh16 sn8 hh8 bd8 sn4 |
}
