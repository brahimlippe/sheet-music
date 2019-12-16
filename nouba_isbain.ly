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
  \time 2/4
  re2 ( |
  re4.) mib8 |
  do4. (re8) |
  mib4. (re8) |
  fad (mib) re (do) |
  re2( |
  re4) r |
  sol4. la8 |
  sol (fad) sol (la) |
  sib4. la8 |
  la (sol) sol (fad) |
  fad (mib) mib (re) |
  do4 la' |
  sol fad8. (la16) |
  sol2 (|
  sol8) r8 r4 |
  do8 sisb (sisb) do |
  la (sisb) sol r |
  re'8. (dod16) re16 (dod re mi) |
  fa4. mi8 |
  mi (re) re(dod) |
  dod (sib) sib (la) |
  sol8. re'16 dod (sib) sib (la) |
  la4. r8 |
  do8. (re16) sisb8. (do16) |
  la8. (sisb16) sol8. (la16) |
  sib2( |
  sib8) r la (sol) |
  fad2( |
  fad4) r8 re |
  mib4. sol8 |
  fad (mib) mib (re) |
  re2( |
  re8) r sol (mi) |
  \break
}
khana_one = \relative do''
{
  \time 6/4
  fad,4 sol la2 (la8) r la16 (do) sisb (do) |
  la8 r la16 (do) sisb (do) la sisb8 (la16) sol8 r re'4 do8 (sisb) |
  la16 (sib) la8 sol (fad) la sol4 fad8 mib16 (sol) sol (fad) fad (mib) mib (re) |
  do4 fad16 (mib re do) re2 re8 r8 sol mi |
  fad4 sol la sol8 sib la2 |
  re,2 re8 r sol mi fad4 sol |
  la2 (la8) r la16 (do) sisb (do) la8 r la16 (do) sisb (do) |
  la sisb8 (la16) sol8 r re'4 do8 (sisb) la16 (sib) la8 sol (fad) |
  la (sol) fad (mib) la (sol) fad(mib) re4 r |
}
taslim = \relative do'
{
  \time 6/4
  r1 r2 |
}
khana_two = \relative do''
{
  \time 6/4
  re8 re16 re re8 re re4 re mi8 (fa) mi (re) |
  fa (mi) dod (sib) mi (re) dod (sib) la4. r8 |
  re re16 re re8 re re16 (do re mi) do (sisb do re) sisb (la sisb do) la (sol la sisb) |
  sol4. r8 do4 la sisb (do) |
  re2 (re8) r r4 re8 re16 re re8 re |
  re4 re mi8 (fa) mi (re) mi (re) dod (sib) |
  mi (re) dod (sib) la4. r8 sisb4. (sisb8) |
  re16 do8 (la16) sol8 r la sib la (sol) la (sol) fad (mib) |
  la (sol) fad (mib) re2. r4 |
}
khana_three = \relative do''
{
  \time 6/4
  mi4 re8 do16 (sisb) la sisb8 (la16) sol8 r re'16 (fa) mi (fa) re8 do16 (sisb) |
  la16 sisb8 (la16) sol8 r re'16 (fa) mi (fa) re8 do16 (sisb) la16 sisb8 (la16) sol8 r |
  la4 sisb do sisb8 (re) do4. r8 |
  re8 do4 sisb8 do16 (re do sisb) la8 r sisb8. (re16) do8. la16 |
  sol4. r8 la4 sib4 dod8 (sib) do mi |
  re4. r8 mi16 (re) re (dod) dod (sib) sib (la) la4. r8 |
  mi'4 re8 do16 (sisb) la sisb8 (la16) sol8 r re'16 (fa) mi (fa) re8 do16 (sisb) |
  la sisb8 (la16) sol8 r re'16 (fa) mi (fa) re8 do16 (sisb) la sisb8 (la16) sol8 r |
  do16 sisb8 (do16) la (sib) sol (la) fad (sol) mib (fad) re (mib) do8 re4 r |
}
khana_four = \relative do''
{
  \time 6/4
  re4. re8 re4 la16 (sisb) do8 re4 r4 |
  mi4.\( re16( mi ) \) re4 do8 sisb re8 do4 sisb8 |
  re8 re16 re re8 mi re16 (do) sisb (la) sol8 la sisb4 r |
  do8 (re) do (sisb) la4 sol16 (fad) sol8 la4 r |
  sisb8 (do) sisb (do) la4 sol8 (fad) la8 sol4 (fad8) |
  la8 (sol) fad (mib) la (sol) fad (mib) re4 r |
  la'16 (sol) sol (fad) fad (mib) mib (re) re4 mib16 (fad) sol (la) sol4 r |
  sisb8 (do) sisb (do) la4 sol8 (fad) la sol4 (fad8) |
  la (sol) fad (mib) la (sol) fad (mib) re4. r8 |
}
touq = \relative do''
{
  \time 6/8
  sol8 fad sol la sisb16 do sisb la |
  sisb8 la sisb do re r |
  re do re re mi16 fa mi re |
  do8 sisb do do re16 mi re do |
  sisb8 la sisb sisb do16 re do sisb |
  la8 sol la sisb do r |
  do sisb do do re16 mi re do |
  sisb8 la sisb sisb do16 re do sisb |
  la8 sol la la sib16 do sib la |
  sol8 fad sol la sib r |
  sib la sib sib do16 re do sib |
  la8 sol la la sib16 do sib la |
  sol8 fad sol sol la16 sib la sol |
  fad8 re mib fad re r |
}
silsla = \relative do''
{
  \time 3/8
  re8 re re |
  do \( do16 (sisb do re)\) |
}
touchia = \relative do' {
  \time 2/4
  r2 |
  r2_"إستخبار الرباب" |
  \time 4/4 r1 |
  \break r1_"إستخبار  العود العربي" |
  \break r1 \mark \markup \center-column {
    \line { قصيدة في رست الذيل : حلفت يمينا لا أحب سواكم   ولا شاقني إلا نسيم هواكم }
    \line { سقاني الهوى كأسا من الحب صافياً   فيا ليته لما سقاني سقاكم }
  } |
}
draj_one = \relative do' {
  \time 6/4
  r1 r2 |
}
khafif_one = \relative do'' {
  \time 6/4
  r1 r2 |
}
khatem_one = \relative do' {
  \time 6/8
  r2 r4 |
}
btayhi_one = \relative do''
{
  \time 4/4
  r1 |
}
btayhi_two = \relative do''
{
  \time 4/4
  r1 |
}

fargha_btayhi = \relative do'
{
  \time 4/4
  r1 |
}
abyat = \relative do''
{
  \key do \major
  \time 2/4
  r2 |
  \time 4/4
  r1 |
}
dkhoul_btayhi = \relative do''
{
  \time 2/4
  r2 |
}
barwel_one = \relative do''
{
  \time 2/4
  r2 |
}
dkhoul_brawel_one = \relative do''
{
  \time 4/4
  r1 |
}
\book
{
  \score
  {
    \new Staff \istiftah
    \layout { }
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
      piece = \markup { \huge "خانة 2" }
    }
  }
  \score
  {
    \new Staff \khana_three
    \layout { }
    \header
    {
      piece = \markup { \huge "خانة 3" }
    }
  }
  \score
  {
    \new Staff \khana_four
    \layout { }
    \header
    {
      piece = \markup { \huge "خانة 4" }
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
    \header { piece = \markup { \huge "توشية(رست الذيل)" } }
  }
  \score
  {
    \new Staff \dkhoul_brawel_one
    \layout { }
    \header { piece = \markup { \huge "دخول براول" } }
  }
  \score
  {
    \new Staff \barwel_one
    \layout { }
    \header { piece = \markup { \huge "براول" } }
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
      \unfoldRepeats \taslim
      \unfoldRepeats \khana_four
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
        \unfoldRepeats \repeat volta 1 \hroub
        \unfoldRepeats \repeat volta 1 \btayhi
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
        \unfoldRepeats \repeat volta 2 \hroub
        \unfoldRepeats \repeat volta 2 \btayhi
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
      \new Staff \new DrumStaff \unfoldRepeats \repeat volta 1 \dkhoul_barwel_s
      \new Staff \with {midiInstrument = #"violin"} \unfoldRepeats \dkhoul_brawel_one
    >>
    \midi { \tempo 4 = 110 }
  }
  \score
  {
    \new StaffGroup
    <<
      \new Staff \new DrumStaff
      {
        \unfoldRepeats \repeat volta 1 \hroub
      }
      \new Staff \with {midiInstrument = #"violin"}
      {
        \unfoldRepeats \barwel_one
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
        \unfoldRepeats \repeat volta 1 \draj
        \unfoldRepeats \repeat volta 1 \khatem
        \unfoldRepeats \repeat volta 1 \khafif
        \unfoldRepeats \repeat volta 1 \khatem
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
