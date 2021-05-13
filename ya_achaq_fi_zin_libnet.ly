\version "2.23.2"
\include "common.ly"

\header {
  % The following fields are centered
  % dedication = "Dedication"
  title = \markup { \magnify #2.5 "يا عاشق في زين البنات" }
  %subtitle = "Subtitle"
  %subsubtitle = "Subsubtitle"
  % The following fields are evenly spread on one line
  % the field "instrument" also appears on following pages
  %instrument = \markup \with-color #green "Instrument"
  poet = "كلمات منصف الحلواني"
  composer = "تلحين الشاذلي أنور"
  % The following fields are placed at opposite ends of the same line
  meter = "ميزان الدويك"
  % arranger = "Arranger"
}

violin = \relative do' {
  \sabakey
  r8
  \repeat volta 2 {
    fa16 fa16 fa8 solb fa4 misb |
    fa4 solb fa16 solb fa solb fa8 misb |
    re
  }
  fa16 fa16 fa8 solb fa4 misb |
  fa solb8 la sib sib r solb|
  la la r fa solb solb r misb|
  fa fa r4 fa8 misb fa misb |
  re8 r8 r4 r2 |
  r2 r4 fa8 misb |
  re8 r8 r4 r2 |
  r2 r4 fa8 misb |
  re8 r8 r4 r2 |
  r2 r4 fa8 misb |
  re8 r8 r4 r2 |
  r1 |
  r1 |
  r1 |
  r1 |
  r2 r4 solb8 fa |
  solb4
  \repeat volta 2 {
    r8 la16 solb16 fa8 solb8 fa4 |
    r4 r8 solb16 fa16 misb8 fa8 mi4 |
    r4
  }
  r4 r2 |
}
voice = \relative do' {
  \sabakey
  \repeat unfold 8 r1
  \repeat volta 2 {
    r4 fa8 solb fa4 misb |
    fa4 solb fa8 solb fa misb |
    re4 fa8 solb fa4 misb |
    fa4 solb la8 fa solb misb |
  }
  la4 solb sib la |
  do sib dod2 |
  r4 do8 do do4 sib4 |
  la solb8 fa solb8 r8 r4|
  \repeat volta 2 {
    solb8 la4 solb8 fa solb fa4 |
    fa8 solb4 fa8 misb fa misb4 |
  }
  fa4 misb solb fa |
  fa8 solb8 fa misb re8 misb re fa |
  misb solb fa misb re
}
notes = \new StaffGroup
  <<
    \new DrumStaff \repeat volta 27 \dwik
    \new Staff \with {
      midiInstrument = #"violin"
      instrumentName = "الفرقة"
      shortInstrumentName = "الفرقة"
    }
    \violin
    \new Staff \with { midiInstrument = #"choir aahs" } \voice
  >>
\midi {
  \tempo 4 = 120
}
\notes
\score {
  \tuneMIDI \sabaTuning \unfoldRepeats \transpose re do \notes
  \midi { }
}
