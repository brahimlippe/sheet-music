\language "italiano"
\include "arabic.ly"
\header {
  title = "دخول الدرج نوبة الرصد"
  composer = "Brahim SAHBI"
}
nota = \relative do' {
   \time 6/4
   re8 re16 re re8 re mi re mi re sol4 r |
   la8 la16 la la8 la la sol8 la sol8 mi16 fa mi fa re4 |
   sol8 sol16 la fa8 fa16 sol mi8 mi16 fa re8 do16 mi re4 r |
   do8 re4 do8. re8 do16 re8 do8 la16 si la si sol4| 
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
      \new Staff \new DrumStaff
      {
        \drummode
        {
          \time 6/4
          \repeat unfold 4 {bd4 bd4 sn4 sn4 sn4 sn8 sn8}
        }
      }
      \new Staff \with {midiInstrument = #"violin"} \nota
    >>
    \midi {
    \tempo 4 = 80
    }
  }
}