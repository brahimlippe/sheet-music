\language "italiano"
\version "2.20.0"

\header {
  title = "يا من بسهم الأشفار"
  copyright = ""
}

\paper {
  #(define fonts (make-pango-font-tree "Times New Roman"
                                       "Nimbus Sans"
                                       "Luxi Mono"
                                       (/ staff-height pt 20)))
}
#(ly:set-default-scale (ly:make-scale #(0 5587/10000 15782/10000 249/100 3509775/1000000 406843/100000 498/100)))

muhayyer_sikah = #`(
  (0 . 0)
  (1 . 0)
  (2 . 0)
  (3 . 0)
  (4 . 0)
  (5 . 0)
  (6 . ,FLAT)
) 
lahn = \relative do' {
  \key do \muhayyer_sikah
  \time 4/4
  \partial 2 re4 la' |
  \repeat volta 5 {
    la8 la4 sol8 la sib do sib |
    la sib la sol8 sol4 la4 |
  }
  \alternative {
    { fa8 mi re re mi fa sol fa |
      mi fa mi re re4 la' }
    { fa8 mi re mi fa sol lab sol |}
  }
  lab sol lab sol8 \mark \markup { \huge "الطالع" } sol4 la4 |
  fa8 mi re re mi fa sol fa |
  mi fa mi re8 sol4 la4 |
  fa8 mi re re mi fa sol fa |
  mi fa mi re re4 la' |
  \repeat volta 2 {
    la8 la4 sol8 la sib do sib |
    la sib la sol8 sol4 la4 |
    fa8 mi re re mi fa sol fa |
  }
  \alternative {
    { mi fa mi re re4 la' |}
    { mi8 fa mi re r2 |}
  }
}
dkhoul_brawel = \relative do, {
  \time 4/4
  r2 |
  \repeat volta 14
  {
    \override Stem.neutral-direction = #up re8 re4
    \override Stem.neutral-direction = #down la'8
    \override Stem.neutral-direction = #up re4
    \override Stem.neutral-direction = #down la' |
  }
}

\book {
  \score {
    \new StaffGroup
    <<
      \new RhythmicStaff \unfoldRepeats \dkhoul_brawel
      \new Staff \with {midiInstrument = #"violin"} \lahn
      \new Lyrics \lyricmode {
        يا4 من4 ب8 سه4 مال8 أ8 ش8 فار2. مز4 زق4 ص8 ميم4 ف8 ؤا4 دي 4 ف8 ؤا4 دي8
        قل4 لي4
        ب8 ك8 ال8 ا8 عا2. دي4 أن4 نك4 ن8 سي4 ت8 ح4 قا2.
        ال4-عه4 د8 وال4-م8 و4 د8 ال8 م8 و4 د8
        ال4-دن4 يا8 لي4 ست8 ت8 ب8 قى2.
        و4-لا4 ت8 دو8 م8 ل8 ح4 د4 ل8 ح4 د8
        ال4-دن4 ل8 ح4 د4
      }

    >>
    \layout { }
  }
  \score {
    \new Staff \with {midiInstrument = #"violin"} \unfoldRepeats \lahn
    \midi { \tempo 4 = 85 }
  }
} % book score
