\language "italiano"
\include "arabic.ly"
\header {
  title = "درج نوبة الرصد العبيدي"
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
draj = \relative do' {
  \time 6/4
  \repeat volta 2
  {
    re8 re16 re re8 re mi re mi re sol4 r |
    la8 la16 la la8 la la sol8 la sol8 mi16 fa mi fa re4 |
    sol8 sol16 la fa8 fa16 sol mi8 mi16 fa re8 do16 mi re4 r |
    do8 re4 do8. re8 do16 re8 do8 (la16 sisb la sisb sol4) |
  }
  \repeat volta 5
  {
    mi'8 fa16 sol mi8 re do4 re mi8 fa16 sol mi8 re |
    mi re mi fa sol4 fa8 la sol4 r |
    do do8 si si16 la si do si8 la la4. r8 |
    sol la sol fa mi re mi fa sol4 r |
    mi8 fa16 sol mi8 re do4 re4 mi8 fa16 sol16 mi8 re |
    mi re mi fa sol4 fa8 la sol4 r |
    mi8 fa16 sol mi8 re do4 mi re r |
    re4. do8 re do re do la16 sisb la sisb sol8 r |
    \Coda
  }
  \repeat volta 3
  {
    sol'4. sol8 la4 la8 (sol) mi16 (fa mi fa re8) r8 |
    do'4 si8 (la) la sol la sol mi16 (fa mi fa re8) r |
    sol2 fa16 (sol fa sol fa8) sol la4. r8 |
    mi8 fa16 sol mi8 re do4 mi8. re16 re4. r8 |
  }
  \DCcoda
}
khafif = \relative do'' {
  \time 6/4
  la4 sol mi re do la16 (sisb la sisb |
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
nouba = 
{
  \draj
  \khafif
  \khatem
}
\book
{
  \score
  {
    \new Staff \with {midiInstrument = #"violin"} \nouba
    \layout { }
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff \drummode
      {
        \time 6/4
        \repeat unfold 4 {bd4 bd sn sn sn sn8 sn}
      }
      \new Staff \with {midiInstrument = #"violin"} \nouba
    >>
    \midi {
    \tempo 4 = 80
    }
  }
}