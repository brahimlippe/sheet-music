\language "italiano"
\include "arabic.ly"
\header {
  title = "ختم نوبة الرصد العبيدي"
  composer = "إبراهيم الصحبي"
  copyright = "مالوف تونس باريس"
  tagline=""
}
Coda = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#f #t #t)
  \mark \markup { \small \musicglyph #"scripts.coda" }
}
DCcoda = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al coda" }
}
khatem = \relative do' {
  \time 6/8
  \repeat volta 4 {
    mi4 (re8 do re) mi |
    fa (sol mi) re (mi do) |
    sol'4 sol8 sol4 sol8 |
    fa4 mi re |
    mi sol fa16 mi re8 |
    do4 re2 |
    mi8 fa mi re do r |
    do4 re2 |
    mi8 fa mi re do r |
    do4 mi8 fa sol4 |
    sol4 sol8 sol sol4 |
    sol sol8 sol fa4 |
    mi4 fa8 sol fa mi |
    re4 r2 |
    la'4 sol8 fa sol4 |
    fa8 mi fa4 mi8 re |
    mi4 re do8 do |
    do4 (sol8) do4 do8~ |
    do re mi4 mi8 fa |
    sol la fa sol mi fa |
    re mi do4 do8 do |
    do4 do8 do4 sol8 |
    la si do4 do8 do |
    mi4 re do |
    mi re2 |
    \Coda
  }
  \repeat volta 2
  {
    la'4. la8 la4 |
    la la sisb |
    do la sol |
    sol sol8 fa (mi) fa |
    sol16 (la sol8 fa) mi8 re4 |
  }
  \DCcoda
}

\book
{
  \score
   {
      \new Staff \with {midiInstrument = #"violin"} \khatem
      \layout { }
    }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff \drummode
      {
        \time 6/8
        \repeat unfold 30 {bd4 sn r}
      }
      \new Staff \with {midiInstrument = #"violin"} \khatem
    >>
    \midi {
    \tempo 4 = 120
    }
  }
}