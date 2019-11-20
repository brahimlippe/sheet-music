\language "italiano"
\include "arabic.ly"
\header {
  title = "خفيف نوبة الرصد العبيدي"
  composer = "إبراهيم الصحبي"
  copyright = "مالوف تونس باريس"
  tagline = ""
}
Coda = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#f #t #t)
  \mark \markup { \small \musicglyph #"scripts.coda" }
}
DCcoda = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al coda" }
}
khafif = \relative do'' {
  \time 6/4
  la sol mi re do la16 (sisb la sisb |
  sol4) do8 re mi8. re16 mi8 sol fa4 r |
  sol4 fa mi fa sol mi |
  re la'2 sol4 mi8 fa mi fa |
  re4 do8 re mi sol fa mi re2 |
  r4 do re do la16 (sisb la sisb sol4) |
  \repeat volta 5
  {
    r sol' la8 si do re do4 la |
    la la8 sol sol fa la sol sol fa fa mi |
    fa4 r2 sol4 fa mi |
    fa sol fa sol mi re |
    la'2 sol4 mi8 fa mi fa re4~ |
    re8 re4 (do8) re4 do la sol |
    do2 sol4 do2 re4 |
    mib4. (re8) fad mib re do re4 r4 |
    \Coda
  }
  \repeat volta 2
  {
    r sol fa8 misb misb re re4 re8 do |
    re4. (do8) fa (misb) sol (fa) fa (misb) fa4 |
    r4 sol4 fa8 sol fa misb re2 |
    fa8 (misb fa4) sol16 la sol8 fa misb re2 |
  }
  \DCcoda
}
\book
{
  \score
  {
    \new Staff \with {midiInstrument = #"violin"} \khafif
    \layout { }
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff \drummode
      {
        \time 6/4
        \repeat unfold 26 {bd4 r sn sn sn r}
      }
      \new Staff \with {midiInstrument = #"violin"} \khafif
    >>
    \midi {
    \tempo 4 = 100
    }
  }
}