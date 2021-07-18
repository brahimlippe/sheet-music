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
violin_on_voice_intro = \relative do' {
  \repeat unfold 2 {
    re8 r8 r4 r2 |
    r2 r4 fa8 misb |
    re8 r8 r4 r2 |
    r2 r4 fa8 misb |
  }
}
violin_intro = \relative do' {
  r8
  \repeat unfold 2 {
    fa16 fa16 fa8 solb fa4 misb |
    fa4 solb fa4 fa8 misb |
    re
  }
  fa16 fa16 fa8 solb fa4 misb |
  fa solb8 la sib sib r solb|
  la la r fa solb solb r misb|
  fa fa r4 fa8 misb fa misb |
}
violin = \relative do'' {
  \sabakey
  \violin_intro
  \violin_on_voice_intro
  r1 |
  r1 |
  r1 |
  r2 r4 solb8 fa |
  solb4
  \repeat unfold 2 {
    r8 la16 solb16 fa8 solb8 fa4 |
    r4 r8 solb16 fa16 misb8 fa8 misb4 |
    r4
  }
  r4 r2 |
  r1 |
  r1 |
  \violin_intro
  \violin_on_voice_intro
}
voice_on_violin_intro = \relative do' \repeat unfold 8 { r1 | }
voice_intro = \relative do' {
  r4 fa8 solb fa4 misb |
  fa solb fa4. r8 |
  r4 fa8 solb fa4 misb |
  fa solb fa4. r8 |
  r4 fa8 solb fa4 misb |
  fa4 solb la8 fa solb misb |
  re4 fa8 solb fa4 misb |
  fa solb fa4. r8 |
}
voice = \relative do'' {
  \sabakey
  \voice_on_violin_intro
  \voice_intro
  la4 solb sib la |
  do sib dod2 |
  r4 do8 do do4 sib4 |
  la solb8 fa solb8 r8 r4|
  \repeat unfold 2 {
    solb8 la4 solb8 fa solb fa4 |
    fa8 solb4 fa8 misb fa misb4 |
  }
  fa misb solb fa |
  fa8 solb8 fa misb re8 misb re fa |
  misb solb fa misb re4 r |
  \voice_on_violin_intro
  \voice_intro
  \repeat volta 2 {
    r4 fa8 solb fa4 solb |
    fa solb8 la8 sib4 sib |
  }
  dod4 do sib la4 |
  la4 solb8 fa solb4 r |
  r4 fa8 misb fa4 r4 |
  r4 fa8 misb fa8. misb16 re8 misb8 |
  re misb re4 fa solb |
  fa misb fa4 solb |
  la8 fa solb misb re4 fa8 solb |
  fa4 misb fa4 solb |
  la8 fa solb misb re4 re8 solb8 |
  fa4 solb fa misb8 re |
  solb4 solb8 fa solb4 r4 |
  r4 fa8 misb fa4 r4 |
  r4 fa8 misb fa8. misb16 re8 misb |
  re misb re fa solb4 fa |
  misb r8 misb8 fa4 misb |
  re r8 misb fa8. misb16 re8 misb |
  re misb re4 misb re8 fa |
  misb solb fa misb re4
}

notes = \new StaffGroup
  <<
    \new DrumStaff \repeat unfold 37 \dwik
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
\new StaffGroup {
  <<
  \new Staff \with {
    instrumentName = "الفرقة"
    shortInstrumentName = "الفرقة"
  }
  \violin
  \new Staff \with {
      instrumentName = "الغناء"
      shortInstrumentName = "الغناء"
    } \voice
  >>
}
\score {
  \tuneMIDI \sabaTuning \unfoldRepeats \transpose re do \new StaffGroup
  <<
    \new DrumStaff \repeat unfold 65 \dwik
    \new Staff \with { midiInstrument = #"violin" } \violin
    \new Staff \with { midiInstrument = #"choir aahs" } \voice
  >>

  \midi { }
}
