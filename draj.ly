\language "italiano"
\include "arabic.ly"
\header {
  title = "دخول الدرج نوبة الرصد"
  composer = "إبراهيم الصحبي"
}
refrain = \relative do
{
  mi'8 fa16 sol mi8 re do4 re mi8 fa16 sol mi8 re |
  mi re mi fa sol4 fa8 la sol4 r |
  do do8 si si16 la si do si8 la la4. r8 |
  sol la sol fa mi re mi fa sol4 r |
  mi8 fa16 sol mi8 re do4 re4 mi8 fa16 sol16 mi8 re |
  mi re mi fa sol4 fa8 la sol4 r |
  mi8 fa16 sol mi8 re do4 mi re r |
  re4. do8 re do re do la16 sisb la sisb sol8 r |
}
nota = \relative do' {
  \time 6/4
  \repeat volta 2
  {
    re8 re16 re re8 re mi re mi re sol4 r |
    la8 la16 la la8 la la sol8 la sol8 mi16 fa mi fa re4 |
    sol8 sol16 la fa8 fa16 sol mi8 mi16 fa re8 do16 mi re4 r |
    do'8 re4 do8. re8 do16 re8 do8 (la16 sisb la sisb sol4) |
  }
  \repeat volta 3
  {
    \refrain
  }
  \repeat volta 3
  {
    sol4. sol8 la4 la8 (sol) mi16 (fa mi fa re8) r8 |
    do'4 si8 (la) la sol la sol mi16 (fa mi fa re8) r |
    sol2 fa16 (sol fa sol fa8) sol la4. r8 |
    mi8 fa16 sol mi8 re do4 mi8. re16 re4. r8 |
  }
  \refrain
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