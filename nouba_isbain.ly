\language "italiano"
\include "arabic.ly"
#(set-global-staff-size 22)
\header {
  title = \markup { \magnify #2.5 "نوبة الإصبعين" }
  composer = "Transcription: Brahim SAHBI"
  copyright = \markup \center-column {
    \line { مالوف تونس باريس © Mâlouf Tunisien Paris }
    \line { Direction : Ahmed-Ridha ABBÈS }
  }
}
\paper {
  bottom-margin = 15
  indent = 0
  oddFooterMarkup = \markup \column { \fill-line { \fromproperty #'header:copyright }}
  evenFooterMarkup = \markup \column { \fill-line { \fromproperty #'header:copyright }}
  #(define fonts
  (make-pango-font-tree "Times New Roman"
                        "Nimbus Sans"
                        "Luxi Mono"
                        (/ staff-height pt 20)))
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
dkhoul_barwel_s = \drummode {
  \time 4/4
  bd8 bd hh sn hh sn sn4 |
}
dkhoul_barwel_p = \drummode {
  \time 4/4
  bd8 bd hh sn bd4 sn |
}
khatem = \drummode {
  \time 6/8
  bd4 sn hh |
}
khafif = \drummode {
  \time 6/4
  bd4 r sn sn sn r |
}
draj = \drummode {
  \time 6/4
  bd4 bd sn sn sn sn8 sn |
}
hroub = \drummode {
  \time 2/4
  bd16 hh32 hh sn16 sn bd16 hh sn8 |
}
btayhi = \drummode {
  \time 4/4
  bd8 hh16 sn8 hh16 sn8 hh8 bd8 sn4 |
}
istiftah = \relative do'
{
  r1 |
  \break
}
khana_one = \relative do''
{
  \time 6/4
  \repeat volta 2
  {
    \mark \markup { \huge "Khâna 1 خانة"}
    r1 |
  }
}
taslim = \relative do''
{
  \time 6/4
  \repeat volta 2
  {
    r1 |
  }
}
khana_two = \relative do'
{
  \time 6/4
  \repeat volta 2
  {
    r1 |
  }
}
khana_three = \relative do'
{
  \time 6/4
  \repeat volta 2
  {
    r1 |
  }
}
touq = \relative do'
{
  \time 6/4
  r1 r2 |
  \time 3/4
  r4 r4 r4 |
}
silsla = \relative do''
{
  \time 3/8
  r4 r r |
}
touchia = \relative do' {
  \time 2/4
  \repeat volta 2
  {
    r2 |
  }
  \alternative
  {
    { r1_"إستخبار الرباب" | }
    { \time 4/4 r1 | }
  }
  \break r1_"إستخبار  العود العربي" |
  \break r1_"قصيدة في رست الذيل : \"قدم المساء يا مرحبا بقدومه     وهذا النهار قد انقضى في سبيله\"" |
}
draj_one = \relative do' {
  \time 6/4
  \repeat volta 2
  {
    r1 r2 |
  }
}
khafif_one = \relative do'' {
  \time 6/4
  \repeat volta 2
  {
    r1 r2 |
  }
}
khatem_one = \relative do' {
  \time 6/8
  \repeat volta 2
  {
    r2 r4 |
  }
}
btayhi_one = \relative do''
{
  \time 4/4
  r1 |
}
fargha_btayhi = \relative do'
{
  r1 |
}
ya_hibi = \relative do''
{
  \mark \markup { \huge "بطايحي يا حبي ما لك"} la8. la8. sol8 fa |
  \time 4/4
  r1 |
}
jitou = \relative do'
{
  \key do \major
  \time 4/4
  la8 sol r8 re'8 mi16 fa sol mi fa4 |
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
  do8 re4 (do8) re do la sol \coda |
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
  \key do \major
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
  r8 sol'16 sol sol8 do,8. re8 mi16 fa8. sol16 |
  \repeat volta 2
  {
    mi16 fa mi fa re8 mi re16 sol fa sol la4 |
    r8 la16 sol mi8 re do mi re do |
  }
  \alternative
  {
    { la sol4 sol'8 do,16 re8 mi16 fa8. sol16 |}
    { \break \mark \markup { \huge "الأبيات"} la,8 sol4. r16 do re mi fa sol fa sol | }
  }
  mi16 fa mi fa re4 r16 sol16 sol sol sol4 |
  sol8 la4 la8 sol16 la8 sol16 mi8 re |
  sol16( \grace la) fa( \grace sol) mi( \grace fa) re( \grace mi) do4\turn r16 do re mi fa8.\turn sol16 |
  mi16 fa mi fa re8 sol8. sol8 sol16 sol4 |
  sol16 fa mi re do8 la' la16 sol8. fa8 mi |
  fa16. mi32 fa16 sol fa8 sol mi re mi re |
  r8 sol16 sol la8 sol la sol mi re |
  r8 do16 re mi8 re do16 re8 do16 la8 sol |
  \repeat volta 2
  {
    \break \mark \markup { \huge "فارغة"} r8 sol'16 sol sol8 la sol16 la sol la sisb4 |
    r8 la16 la la8 la sol16 la8 sol16 mi8 re |
    r8 re16 re re8 mi re16 sol fa sol la4 |
  }
  \alternative
  {
    { r8 la16 sol mi8 re do mi re4 }
    { r8 la'16 sol mi8 re do mi re do }
  }
  \break la sol4 \mark \markup { \huge "إنشاد"} do'8 sisb16 sisb8 la16 la32 sol la sisb la16 sol |
  sol4 r8 sol8 re16 sol8 la16 la do sisb8 |
  \grace {do16 (si } la4.) la8 sol16 la8 sol16 mi8 re |
  sol16 fa mi re do4\turn r16 do16 re mi fa8. sol16 |
  mi fa mi fa re8 la' sol16 sol8 sol16 sol8 sib16 la |
  sol16 fa mi re do8 la' la16 sol8. fa8 mi |
  fa16. mi32 fa16 sol fa8 sol mi re mi re |
  r8 sol16 sol la8 sol la sol mi re |
  r8 do16 re mi8 re mi do re32 do re mi re16 do |
  la8 sol r sol'8. sol8 sol16 sol mi re8~ |
  \repeat volta 2
  {
    \break \mark \markup { \huge "فارغة"} re re16 re re8 mi re16 sol fa sol la4 |
    r8 la16 sol mi8 re do mi re do |
  }
  \alternative
  {
    { la sol4 sol'8. sol8 sol16 sol mi re8 }
    { \mark \markup { \huge "إنشاد"} la sol4 sol'16 do sisb16 sisb8 sisb16 la8. sol16 }
  }
  sol32 fad sol la sol16 mi re8 r16 sol sol sol8 la16 la do sisb8 |
  sisb32 do sisb do la4 la8 sol16 la8 sol16 mi8 re |
  sol16 fa mi re do8 do16 do8 re mi16 fa8 fa16 sol |
  mi16 fa mi fa re8 la' la16 sol8 sol16 fa8 mi |
  fa16. mi32 fa16 sol fa8 sol mi re mi re |
  r8 sol16 sol la8 sol la sol mi re |
  r8 do16 re mi8 re mi do32 re do mi re4 |
}
dkhoul_btayhi = \relative do''
{
  \key do \major
  \time 2/4
  \repeat volta 2
  {
    sol8 sol16 sol sol8 la |
    sol16 la8 sol16 mi8 re |
    r8 re16 re re8 mi |
    re16 sol fa sol la4 |
    r8 la16 sol mi8 re |
    do mi re do |
    la sol r8 do' |
    sisb16 la sol la \grace{ la16 (do } sisb8) sisb16 sisb |
    \grace { do16 (sisb } la8) la16 la la8 sol |
    sib la fad16 sol fad mib |
    re8 re16 re8. re8 |
    re16 mi8 re16 sol4 |
  }
  \time 4/4
  r8 la16 sol mi8 re do mi re do |
}
imchi_ya_rasoul = \relative do'
{
  \key do \major
  \time 2/4
  \repeat volta 5
  {
    re16 re8 re16 re8 mi( |
    mi) re16 mi16 ~ mi re sol8 |
    la16 la8 la16 ~ la16 sol sol8( |
    sol) fad16 sol ~ sol mi \coda re8 |
  }
  \repeat volta 2
  {
    do16 do8 do16 ~ do re mib8(|
    mib8 ) re16 mib ~ mib do re8 |
    la'16 la8 la16 ~ la sol sol8 |
    sol fad16 sol ~ sol mi re8 |
    \DCcoda
  }
}
kharajtou_nachwana = \relative do''
{
  % TODO A verifier
  \time 2/4
  \repeat volta 5
  {
    do16 do8 do16 si8 si16 do |
    la8 la16 la la8 la |
    sol16 sol8 mi16 re4 |
    sol16 sol sol8 sol16 sol sol8 |
    sol16 sol8 fa8 sol16 la8 |
  }
  mi16 mi8 mi16 mi8 re16(do) |
  r mi8 mi16 mi8 re16(do) |
  mi4 re |
  mi16 mi8 mi16 mi8 re16(do) |
  r mi8 mi16 mi8 re16(do) |
  mi4 re8 do |
  mi4 re |
}
nar_elhawa = \imchi_ya_rasoul
qalbi_musaikin = \kharajtou_nachwana
arodhni_nahar = \imchi_ya_rasoul
ya_farhati = \relative do''
{
  \key do \major
  \time 2/4
  \repeat volta 5
  {
    r16 do (sisb) do (sisb) do la8~ |
    la16 la8 la16 la8 sol8( |
    fad16 ) sol8 (mi16) re4 |
    sol16 sol sol sol sol sol sol8 |
    sol16 sol8 fa8 sol16 la8 \coda |
  }
  % TODO A verfier
  mi16 mi8 mi16 mi8 re16(do) |
  r mi8 mi16 mi8 re16(do) |
  mi4 re |
  mi16 mi8 mi16 mi8 re16(do) |
  r mi8 mi16 mi8 re16(do) |
  mi4 re8 do |
  mi4 re8 do |
  mi4 re8 do |
  mi4 re |
  \DCcoda
}
aini_kahila = \relative do''
{
  \key do \major
  \repeat volta 5
  {
    r8 sol4 sol8 (sol) sol sol mi |
    re4 r8 sol16 sol sol8 sol sol4 |
    sol8 sol (sol) fa (fa) sol la4 |
    r8 la4 la sol8 sol fa |
    sol la4 sol8 sol mi re4 |
    r8 re re re (re) re mi4 |
    re8 sol4 la8 (la) sol sol fa |
    sol la4 sol8 sol mi re4 \coda |
  }
  r8 do'4 re8 (re) do la4 |
  r8 sol4 la8 (la) sol mi4 |
  r8 do (do) do4 re8 mib re |
  la' sol fad re mib16 re mib fad re4|
  \DCcoda
}
\book
{
  \score
  {
    \new Staff \istiftah
    \layout
    {
      \context
      {
        \Score defaultBarType = ""
      }
    }
    \header
    {
      piece = \markup { \huge "إستفتاح" }
    }
  }
  \score
  {
    \new Staff \khana_one
    \layout { }
    \header
    {
      piece = \markup { \huge "مصدر" }
    }
  }
  \score
  {
    \new Staff \taslim
    \layout { }
    \header
    {
      piece = \markup { \huge "تسليم" }
    }
  }
  \score
  {
    \new Staff \khana_two
    \layout { }
    \header
    {
      piece = \markup { \huge "خانة 2 (Nabil Ghanouchi)" }
    }
  }
  \score
  {
    \new Staff \khana_three
    \layout { }
    \header
    {
      piece = \markup { \huge "خانة 3(Nadhir Bouabid)" }
    }
  }
  \score
  {
    \new Staff \touq
    \layout { }
    \header
    {
      piece = \markup { \huge "طوق" }
    }
  }
  \score
  {
    \new Staff \silsla
    \layout { }
    \header
    {
      piece = \markup { \huge "سلسلة" }
    }
  }
  \score
  {
    \new Staff \abyat
    \layout { }
    \header
    {
      piece = \markup { \huge "دخول الأبيات" }
    }
  }
  \score
  {
    \new Staff \dkhoul_btayhi
    \layout { }
    \header { piece = \markup { \huge "دخول بطايحي" } }
  }
  \score
  {
    \new Staff \btayhi_one
    \layout { }
    \header { piece = \markup { \huge "بطايحي جئت بالإحتقار" } }
  }
  \score
  {
    \new Staff { r4 r8 \fargha_btayhi \btayhi_two }
    \layout { }
    \header { piece = \markup { \huge "فارغة" } }
  }
  \score
  {
    \new Staff \touchia
    \layout { }
    \header { piece = \markup { \huge "توشية(رمل الماية)" } }
  }
  \score
  {
    \new Staff \aini_kahila
    \layout { }
    \header { piece = \markup { \huge "عيني كحيلة" } }
  }
  \score
  {
    \new Staff \ya_farhati
    \layout { }
    \header { piece = \markup { \huge "يا فرحتي" } }
  }
  \score
  {
    \new Staff \imchi_ya_rasoul
    \layout { }
    \header { piece = \markup { \huge "امش يا رسول" } }
  }
  \score
  {
    \new Staff \nar_elhawa
    \layout { }
    \header { piece = \markup { \huge "نار الهوى" } }
  }
  \score
  {
    \new Staff \qalbi_musaikin
    \layout { }
    \header { piece = \markup { \huge "قلبي مسيكن" } }
  }
  \score
  {
    \new Staff \kharajtou_nachwana
    \layout { }
    \header { piece = \markup { \huge "خرجت نشوانا" } }
  }
  \score
  {
    \new Staff \arodhni_nahar
    \layout { }
    \header { piece = \markup { \huge "عرضني نهار" } }
  }
  \score
  {
    \new Staff \draj_one
    \layout { }
    \header { piece = \markup { \huge "دخول الأدراج" } }
  }
  \score
  {
    \new Staff \khafif_one
    \layout { }
    \header { piece = \markup { \huge "دخول الخفائف" } }
  }
  \score
  {
    \new Staff \khatem_one
    \layout { }
    \header { piece = \markup { \huge "ختم السم من ألسن الأفاعي" } }
  }
  \score
  {
    \new Staff \with {midiInstrument = #"violin"}
    {
      \unfoldRepeats \istiftah
      \unfoldRepeats \khana_one
      \unfoldRepeats \taslim
      \unfoldRepeats \khana_two
      \unfoldRepeats \taslim
      \unfoldRepeats \khana_three
      \unfoldRepeats \touq
      \unfoldRepeats \silsla
    }
    \midi { \tempo 4 = 80 }
  }
  \score
  {
    \new Staff \with {midiInstrument = #"violin"}
    {
      \unfoldRepeats \abyat
    }
    \midi { \tempo 4 = 80 }
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff
      {
        \unfoldRepeats \repeat volta 24 \hroub
        \unfoldRepeats \repeat volta 134 \btayhi
      }
      \new Staff \with {midiInstrument = #"violin"}
      {
        \unfoldRepeats \dkhoul_btayhi
        \unfoldRepeats \btayhi_one
        r4 r8
        \unfoldRepeats \fargha_btayhi
        \unfoldRepeats \btayhi_two
      }
    >>
    \midi { \tempo 4 = 60 }
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff
      {
        \unfoldRepeats \repeat volta 42 \hroub
        \unfoldRepeats \repeat volta 28 \btayhi
      }
      \new Staff \with {midiInstrument = #"violin"}
      {
        \unfoldRepeats \touchia
      }
    >>
    \midi { \tempo 4 = 80 }
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff \unfoldRepeats \repeat volta 44 \dkhoul_barwel_s
      \new Staff \with {midiInstrument = #"violin"} \unfoldRepeats \aini_kahila
    >>
    \midi { \tempo 4 = 110 }
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff
      {
        \unfoldRepeats \repeat volta 100 \hroub
      }
      \new Staff \with {midiInstrument = #"violin"}
      {
        \unfoldRepeats \ya_farhati
        \unfoldRepeats \imchi_ya_rasoul
        \unfoldRepeats \kharajtou_nachwana
        \unfoldRepeats \nar_elhawa
        \unfoldRepeats \qalbi_musaikin
        \unfoldRepeats \arodhni_nahar
      }
    >>
    \midi { \tempo 4 = 60 }
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff
      {
        \unfoldRepeats \repeat volta 48 \draj
        \unfoldRepeats \repeat volta 24 \khatem
        \unfoldRepeats \repeat volta 60 \khafif
        \unfoldRepeats \repeat volta 110 \khatem
      }
      \new Staff \with {midiInstrument = #"violin"}
      {
        \unfoldRepeats \draj_one
        \unfoldRepeats \khafif_one
        \unfoldRepeats \khatem_one
      }
    >>
    \midi { \tempo 4 = 80 }
  }
}
