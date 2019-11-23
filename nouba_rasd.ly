\language "italiano"
\include "arabic.ly"
\header {
  title = "نوبة الرصد العبيدي"
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
DScoda = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.S. al coda" }
}
Segno = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#f #t #t)
  \mark \markup { \small \musicglyph #"scripts.segno" }
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
    \Segno
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
  \DScoda
}
khafif = \relative do'' {
  \time 6/4
  \repeat volta 2
  {
    la4 sol mi re do la16 (sisb la sisb |
    sol4) do8 re mi8. re16 mi8 sol fa4 r |
    sol4 fa mi fa sol mi |
    re la'2 sol4 mi8 fa mi fa |
    re4 do8 re mi sol fa mi re2 |
    r4 do re do la16 (sisb la sisb sol4) |
  }
  \repeat volta 5
  {
    \Segno
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
  \DScoda
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
baligh = \relative do''
{
  \time 4/4
  r4 r8 sol8. sol8 mi16 re8 sol16 la |
  \repeat volta 5
  {
    \Segno
    sol16 la8.~ la8 sol mi re re16 mi fa sol |
    fa mi re mi re mi do si do re8. mi8 re |
    sol16 fa la sol sol8 la (sol16) mi8 (re16) re fa mi re |
    mi32 (re do16) do (si) do r do8 re16 mi8 fa16 mi8 re |
    re16 fa mi re do si do8 re4 re8 (do) |
  }
  \alternative
  {
    { la32 (sisb la sisb sol8) \Coda r sol'8. sol8 mi16 re8 sol16 (la) | }
    { la,32 (sisb la sisb sol8) r do8. do8. do8 re8 | }
  }
  mib re fad16 mib re (do) re4. do8 |
  la32 sisb la sisb sol8 r do8. re8. mi8 re |
  sol4 r8 la (sol16) mi8 (re16) re fa mi re |
  mi32 (re do16) do (si) do16 r do8 re16 (mi8) fa16 mi8 (re) |
  re16 fa mi re do si do8 re4. do8 |
  la32 sisb la sisb sol8 r sol'8. sol8 mi16 re8 la16 la |
  \DScoda
}
ya_hibi = \relative do''
{
  \time 4/4
  r4 r8 la8. la8. sol8 fa |
  \repeat volta 5
  {
    \Segno
    sol sol r sol (fa16) sol8. fa8 mi |
    fa sol fa sol mi re mi fa |
    sol la r la (sol16) mi8. re8 do |
    re mi r re (do16) re8 (do16) re8 do |
  }
  \alternative
  {
    { la16 sisb sol8 \Coda r la' la16 la8. sol8 fa }
    { la,16 sisb sol8 r fa' mi16 fa8 mi16 fa32 (sol fa16 mi8) }
  }
  re4 r8 do8. re8. sol8 sol |
  fa16 mi sol fa fa8 sol mi32 fa mi16 re8 re16 fa mi fa |
  re4 r8 mi (fa16) sol8. r8 fa16 sol |
  la16 sib la sol fa8 r fa sol la16 sib la8 |
  sol fa r la sol mi re do |
  do4. re8 mi do re4 |
  r4 r8 fa mi16 fa8 mi16 fa32 (sol fa16 mi8) |
  re4 r8 do8. re8. sol8 sol |
  fa16 mi sol fa fa8 sol mi32 fa mi16 re8 re16 fa mi fa |
  re4 r8 mi (fa16) sol8. r8 fa16 sol |
  la sib la sol fa8 r fa sol la16 sib la8 |
  sol fa r la sol mi re do |
  do4. re8 mi do re (do) |
  la16 sisb sol8 r8 la8. la8. sol8 fa |
  \DScoda
}
jitou = \relative do'
{
  \time 4/4
  r4 r8 re8 mi16 fa sol mi fa4 |
  \Segno do8 sol'4 (fa8) sol32 (la sol16 fa mi) fa4 |
  r8 mi4 re8 re do re mi |
  do re4 (mi8) fa16 (sol fa mi) fa4 |
  r8 sol4 (fa8) sol32 (la sol16 fa mi) fa4 |
  r4 r8 re mi16 fa sol mi fa4 |
  do8 sol'4 (fa8) sol32 (la sol16 fa mi) fa4 |
  r8 mi4 re8 re do re mi |
  do re4 (mi8) fa16 sol fa mi fa4 |
  r8 sol4 (fa8) sol32 (la sol16 fa mi) fa4~ |
  fa4 r8 sol8. sol8. sol4 |
  r8 sol4 la8 sol mi re4 |
  r4 r8 do' (sisb16) la8 (sol16) sol4 |
  r8 sol4 la8 sol mi re4 |
  r8 sol4 la8 sol4 sol16 (la sol la) |
  sol8 fa4 sol8 la4 do16 (sib la sol |
  fa4) r8 la (sol16) mi8 (re16) re4 |
  do8 re4 (do8) re do la sol \Coda |
  r8 r4 do'8 (sisb16) la8 (sol16) sol4 |
  \repeat volta 3
  {
    r8 sol4 la8 sol mi re4 |
    r8 sol4 la8 sol4 sol16 (la sol la) |
    sol8 fa4 sol8 la4 do16 (sib la sol |
    fa4) r8 la8 (sol16) mi8 (re16) re4 |
    do8 re4 do8 fa16 mi fa sol la sol fa mi |
  }
  \alternative
  {
    { re4 r8 do' (sisb16) la8 (sol16) sol4 |}
    { re4 r8 re8 mi16 fa sol mi fa4 | }
  }
  \DScoda
}
abyat = \relative do''
{
  \time 2/4
  \repeat volta 2
  {
    sol8 sol16 sol sol8 la |
    sol16 la8 sol16 mi8 re |
    r8 do'16 sisb sisb do la8 |
    sol16 la8 sol16 mi8 re |
    r8 re16 re re8 mi |
    re16 sol fa sol la4 |
    r8 la16 sol mi8 re |
  }
  \alternative
  {
    { do mi re4}
    { do8 mi re do}
  }
  re16 do8 la16 sol4 |
  \time 4/4
  r8 sol16 sol sol8 do8. re8 mi16 fa8. sol16 |
  \repeat volta 2
  {
    mi16 fa mi fa re8 mi re16 sol fa sol la4 |
    r8 la16 sol mi8 re do mi re do |
  }
  \alternative
  {
    { la sol4 sol'8 do,16 re8 mi16 fa8. sol16 |}
    { la8 sol4. r16 do re mi fa sol fa sol | }
  }
  mi fa mi fa re4 r16 do re mi fa8. sol16 |
  mi16 fa mi fa re8 sol8. sol8 sol16 sol4 |
  sol16 fa mi re do8 la la16 sol8. fa8 mi |
  fa16. mi32 fa16 sol fa8 sol mi re mi re |
  r8 sol16 sol la8 sol la sol mi re |
  r8 do16 re mi8 re do16 re8 do16 la8 sol |
  \repeat volta 2
  {
    r8 sol'16 sol sol8 la sol16 la sol la sisb4 |
    r8 la16 la la8 la sol16 la8 sol16 mi8 re |
    r8 re16 re re8 mi re16 sol fa sol la4 |
  }
  \alternative
  {
    { r8 la16 sol mi8 re do mi re4 }
    { r8 la'16 sol mi8 re do mi re do }
  }
  la sol4 do'8 sisb16 sisb8 la16 la32 sol la sisb la16 sol |
  sol4 r8 sol8 re16 sol8 la16 la do sisb8 |
  \grace {la16 (sol } la4.) la8 sol16 la8 sol16 mi8 re |
  sol16 fa mi re do4\turn r16 do16 re mi fa8. sol16 |
  mi fa mi fa re8 la' sol16 sol8 sol16 sol8 sib16 la |
  sol16 fa mi re do8 la' la16 sol8. fa8 mi |
  fa16. mi32 fa16 sol fa8 sol mi re mi re |
  r8 sol16 sol la8 sol la sol mi re |
  r8 do16 re mi8 re mi do re32 do re mi re16 do |
  la8 sol r sol'8. sol8 sol16 sol mi re8~ |
  \repeat volta 2
  {
    re re16 re re8 mi re16 sol fa sol la4 |
    r8 la16 sol mi8 re do mi re do |
  }
  \alternative
  {
    { la sol4 sol'8. sol8 sol16 sol mi re8 }
    { la sol4 sol'16 do sisb16 sisb8 sisb16 la8. sol16 }
  }
  sol32 fad sol la sol16 mi re8 r16 sol sol sol8 la16 la do sisb8 |
  sisb32 do sisb do la4 la8 sol16 la8 sol16 mi8 re |
  sol16 fa mi re do8 do16 do8 re mi16 fa8 fa16 sol |
  mi16 fa mi fa re8 la la16 sol8 sol16 fa8 mi |
  fa16. mi32 fa16 sol fa8 sol mi re mi re |
  r8 sol16 sol la8 sol la sol mi re |
  r8 do16 re mi8 re mi do32 re do mi re4 |
}
dkhoul_btayhi = \relative do'
{
  \time 2/4
  sol8 sol16 sol sol8 la |
  sol16 la8 sol16 mi8 re |
  r8 re16 re re8 mi |
  re16 sol fa sol la4 |
  r8 la16 sol mi8 re |
  do mi re do |
  la sol r8 do' |
  sisb16 la sol la \grace{ la16 (do } sisb8) sisb16 sisb |
  \grace { do16 (sisb } la8) la16 la la8 sol |
  sib la fa16 sol fad mib |
  re8 re16 re8. re8 |
  re16 mi8 re16 sol4 |
  \time 4/4
  r8 la16 sol mi8 re do mi re do |
  la sol r8 sol8
}
\book
{
  \score
  {
    \new Staff \abyat
    \layout { }
    \header
    {
      piece = "الأبيات"
      % Première page vide
      % breakbefore = ##t
    }
  }
  \score
  {
    \new Staff \dkhoul_btayhi
    \layout { }
    \header { piece = "بطايحي جئت بالإحتقار" }
  }
  \score
  {
    \new Staff \jitou
    \layout { }
    \header { piece = "بطايحي جئت بالإحتقار" }
  }
  \score
  {
    \new Staff \baligh
    \layout { }
    \header { piece = "بطايحي بلغ إلى أهل الديار" }
  }
  \score
  {
    \new Staff \ya_hibi
    \layout { }
    \header { piece = "بطايحي يا حبي ما لك" }
  }
  \score
  {
    \new Staff \draj
    \layout { }
    \header { piece = "درج يا هل ترى متى ترجع" }
  }
  \score
  {
    \new Staff \khafif
    \layout { }
    \header { piece = "خفيف أفناني الحب يا نديم" }
  }
  \score
  {
    \new Staff \khatem
    \layout { }
    \header { piece = "ختم السم من ألسن الأفاعي" }
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
      \new Staff \with {midiInstrument = #"violin"}
      {
        \abyat
        \jitou
        \baligh
        \ya_hibi
        \draj
        \khafif
        \khatem
      }
    >>
    \midi {
    \tempo 4 = 80
    }
  }
}