\language "italiano"
\include "arabic.ly"
\header {
  title = "دخول خفيف نوبة الرصد"
  composer = "إبراهيم الصحبي"
}
nota = \relative do'' {
  \time 6/4
  la sol mi re do la16 (sisb la sisb |
  sol4) do8 re mi re mi sol fa4 r |
  sol4 fa mi fa sol mi |
  re la'2 sol4 mi8 fa mi fa |
  re4 do8 re mi sol fa mi re2 |
  r4 do re do la16 (sisb la sisb sol4) |
}
\book
{
  \score
   {
      \new Staff \with {midiInstrument = #"violin"} \nota
      \layout { }
    }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff \drummode
      {
        \time 6/4
        \repeat unfold 6 {bd4 r sn sn sn r}
      }
      \new Staff \with {midiInstrument = #"violin"} \nota
    >>
    \midi {
    \tempo 4 = 100
    }
  }
}