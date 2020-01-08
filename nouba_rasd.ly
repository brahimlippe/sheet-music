\language "italiano"
\include "arabic.ly"
#(set-global-staff-size 22)
\header {
  title = \markup { \magnify #2.5 "نوبة الرصد العبيدي" }
  composer = "Transcription: Brahim SAHBI et Aymen MAJOUL"
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
  do4 re do la sol2 r4 r8 do re mi fa4 mi \grace sol8 (fa4) mi16 fa mi8 re4
  mi16 fa mi8 re4 r \tuplet 3/4 { sol8 fa sol } la4\fermata sol mi re do8. mi16
  re4 r8 do re do la4 sol do8. re16 mi8. do16 \tuplet 3/4 { re8 do mi } re4
  r \grace do'8 (sisb4.) la16 sisb la4. sol16 la sol4 r8 re mi re sol2
  r16 do, re mi fa4 \grace sol8 mi4 \grace fa8 re4 do8. mi16 re4 r8
  do re do la4 sol do2
  \break
}
khana_one = \relative do''
{
  \time 6/4
  \repeat volta 2
  {
    \mark \markup { \huge "Khâna 1 خانة"}
    sol8 fa16 mi re do re mi fa8. sol16 fa8 sol mi16 fa mi fa re4 |
    r8 sol16 sol sol8 la sol16 la8 sol16 mi8 re do16 re do mi re4 |
    do16 re8 do16 la8 sol do4 re mib8 re16 do re4 |
    sol16 la8. (la8) sol (sol16) mi8. mi8 re mi16 fa mi re do4 |
    r8 do16 re do8 re mi fa mi re do16 re8 do16 la8 sol |
  }
}
taslim = \relative do''
{
  \time 6/4
  \repeat volta 2
  {
    r8 sol16 do si8 si la16 la8 sol16 mi8 re mi fad la16. sol32 sol8 |
    r8 sol16 si la8 la sol16 la8 sol16 mi8 re do re mi16. re32 re8 |
    r8 do16 do do8 re re16 mi8 re16 sol4 sol16 la8 sol16 mi8 re |
    do' sisb la sol fad mib re do re16 mi8 re16 sol4 |
    fa8 mi re do fa16 mi8 re16 re8 do do16 re8 do16 la8 sol |
  }
}
khana_two = \relative do'
{
  \time 6/4
  \repeat volta 2
  {
    r8 fad4 sol8 r16 la8 sib16 la sol fad sol fad mib re do re4 |
    r8 fad4 sol8 r16 la sisb do sisb16. la32 sol8 la4. sol8 |
    r16 mi8 re16 mi8 \grace sol8 (fa16) re do8 do16 re mi16. re32 mi16 fa sol4 r16 la sib do |
    re8 do la sol r16 re8 mi16 fa8 la sol mi re do |
  }
  \alternative
  {
    { r8 do16 re mib16. re32 mib16 fad sol8 do do16 sib la sol fad sol fad la sol4 | }
    { r8 do,16 re mib16. re32 mib16 fad sol8 do do16 sib la sol fad la sol8 r4 | }
  }
}
khana_three = \relative do'
{
  \time 6/4
  \repeat volta 2
  {
    sol16 do8. (do8) mib re16 sol8 fad16 la8 sol mib16 fad mib re mib16. re32 do8 |
    r8 mib16 fad sol fad sol8 mib16 fad8 re16 mib8 sol16 do sib la sol la sib16. la32 sol8 |
    r8 do16 sisb do8 la do16 sisb8 re16 do sisb do8 la16 sol do8 do32 re sisb do la sisb sol16 |
    fad8 sol16 do sisb do la8 sib16 sol8 la16 fad sol mib re sol32 la sol la fad16 mib mib32 fad mib fad re16 do |
  }
}
khana_four = \relative do''
{
  \time 6/4
  \repeat volta 2
  {
    r16 sol la sisb do8 re16 sisb la sol do8 sisb la16 sol la8 sol16 fa sol4 |
    r16 sol32 sol sib16 la sib8 do16 la sol fa do'16. la32 sib16. sol32 la16. fa32 sol8 fa16 mi \grace re8 mi4 |
    r16 la32 la la16 la la8 sol16 fa sol8 la16 fa mi re la'8 sol mi16 re mi8 re16 do |
    do16 sol la si do re mi fasd sol8 fa16 mi re8 la' sol mi16 re mi16. re32 do8 |
  }
}
touq = \relative do'
{
  \time 6/4
  r8 do16 do do8 re re16 mi8 re16 mi8 re re16 mi16 re8 sol4 |
  r8 sol16 sol sol8 la sol16 la8 sol16 mi8 re mi16 sol fa mi re do do8 |
  do4 re8 mi fa16 sol fa mi mi fa mi re mi8 fa sol4 |
  \time 3/4
  sol8 fa sol la la16 sib la sol |
  fa8 mi fa sol sol16 la sol fa |
  mi8 re mi fa fa16 sol fa mi |
  re8 do re mi fa4 |
  fa8 mi fa sol sol16 la sol fa |
  mi8 re mi fa fa16 sol fa mi |
  re8 do re mi fa mi |
  re do re do la sol |
}
silsla = \relative do''
{
  \time 3/8
  la8 la la |
  sol8. fa16 sol la |
  fa8. mi16 fa sol |
  mi8. re16 mi fa |
  sol8. fa16 sol la |
  fa8. mi16 fa sol |
  mi8. re16 mi fa |
  re8. do16 re mi |
  fa8. mi16 fa sol |
  mi8. re16 mi fa |
  re8. do16 re mi |
  do8 r r |
}
touchia = \relative do' {
  \key la \bayati
  \time 2/4
  \repeat volta 2
  {
    r8 mi16 fad sol8 la~ |
    la sol16 la sol8 mi |
    mi16 sol fa sol fa mi re8 |
    re16 fa mi fa mi re do8 |
    re8. do16 mi8 re |
    do16 re do sisb la4 |
    sol8 re'4 re8 |
    sol, la16 sisb do8 r |
    fad8. mi16 sol8. fad16 |
    la8 sol16 fad fad mi re8 |
    r8 mi16 fad sol8 la~ |
    la sol16 la sol8 mi |
    mi16 sol fa sol fa mi re8 |
    re16 fa mi fa mi re do8 |
    re8. do16 mi8. re16 |
    do16 sisb do sisb la sol8 la16 |
    sol8 do4 mi8 |
    re16 fa8 mi16 sol8 la|
    sol16 fad mi re do8 mi |
    mi16 re do sisb la4 |
  }
  \alternative
  {
    { r1_"إستخبار الرباب" | }
    { \time 4/4 sol'8 re do do16 sisb la sol la sisb do re do sisb | }
  }
  la sol sol4 la8 la16 sisb8 la16 do8 re16 do |
  la sol sol4 la8. sisb8 la16 do4 |
  re8. re16 re8 re8. la16 sisb do re4 |
  r8 sol4 la8. sisb8 la16 do8 re16 sisb |
  la sol sol4 la8. sisb8 la16 do8 sisb16 la |
  la do sisb8. do16 sisb8 do16 sisb8 do16 sisb4 |
  sol8 la16 sisb do8 re16 do mi re do sisb la4 |

  re8 do8 do sisb la sol la4 |
  sisb8 do sisb la sol fad sol4 |
  la8 sisb la sol fad mi fad4 |
  sol4 la sisb8. la16 do8 re16 sisb |
  la16 sol sol8 la16 sol la sisb do re do re do4 |
  mi8 re do sisb la sol la4 |
  sisb8 do sisb la sol fad sol4 |
  la8 sisb la sol fad mi fad4 |
  sol la sisb8. la16 do8. sisb16 |
  do8 re8. do16 mi8. re16 do sisb la4 |

  r8 fa4 fa8. fa8 mi16 re8 do |
  re8 sol4 mi8 sol8. fad16 mi8. re16 |
  do8 fa mi fa16 sol la sol fa mi re4 |
  do8. sisb16 do8 mi mi16 re do sisb la4 |

  r8 mi'4 mi4 re8 mi fa |
  sol fa mi re do16 re do sisb la4 |
  r8 mi'4 mi4 re8 mi fa |
  sol fa mi re do16 sisb do sisb la sol8 la16|
  sol8 do4 mi8 re16 fa8 mi16 sol8 la |
  sol16 fa mi re do8 mi mi16 re do sisb la4 |
  \break r1_"إستخبار  العود العربي" |
  \break r1_"قصيدة في الرصد العبيدي : \"قدم المساء يا مرحبا بقدومه     وهذا النهار قد انقضى في سبيله\"" |
}
ya_hal_tara = \relative do' {
  \key do \major
  \time 6/4
  \repeat volta 2
  {
    % TODO A verfier
    re8 re16 re re8 re mi re mi re sol4 r |
    la8 la16 la la8 la la sol8 la sol8 mi16 fa mi fa re4 |
    sol8 sol16 la fa8 fa16 sol mi8 mi16 fa re8 do16 mi re4 r |
    do8 re4 do8. re8 do16 re8 do8 (la16 sisb la sisb sol4) |
  }
  \repeat volta 5
  {
    \Segno
    \break mi'8 fa16 \mark \markup { \huge "درج يا هل ترى" } sol mi8 re do4 re mi8 fa16 sol mi8 re |
    mi re mi fa sol4 fa8 la sol4 r |
    do do8 si si16 la si do si8 la la4. r8 |
    sol la sol fa mi re mi fa sol4 r |
    mi8 fa16 sol mi8 re do4 re4 mi8 fa16 sol16 mi8 re |
    mi re mi fa sol4 fa8 la sol4 r |
    mi8 fa16 sol mi8 re do4 mi re r |
    re4. do8 re do re do la16 sisb la sisb sol8 r\coda |
  }
  \repeat volta 3
  {
    \time 6/8
    la'4 la la |
    la2 la4 |
    sol la sol |
    mi2 re4 |
    do do re |
    mi2. |
    do4 mi do |
    re2. |
  }
  \DScoda
}
afnani = \relative do'' {
  \key do \major
  \time 6/4
  \repeat volta 2
  {
    % TODO A verifier
    la4 sol mi re do la16 (sisb la sisb |
    sol4) do8 re mi8. re16 mi8 sol fa4 r |
    sol4 fa mi fa sol mi |
    re la'2 sol4 mi8 fa mi fa |
    re4 do8 re mi sol fa mi re2 |
    r4 do re do la16 (sisb la sisb sol4) |
  }
  \repeat volta 5
  {
    \break \Segno
    r sol' la8 \mark \markup { \huge "خفيف أفناني" } si do re do4 la |
    la la8 sol sol fa la sol sol fa fa mi |
    fa4 r2 sol4 fa mi |
    fa sol fa sol mi re |
    la'2 sol4 mi8 fa mi fa re4~ |
    re8 re4 (do8) re4 do la sol |
    do2 sol4 do2 re4 |
    mib4. (re8) fad mib re do re4 r4 \coda |
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
assoummou = \relative do' {
  \key do \major
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
    mi re2\coda |
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
  \key do \major
  sol8. sol8 mi16 re8 r16 sol |
  \repeat volta 2
  {
    \mark \markup { \huge "بطايحي بلغ إلى أهل الديار "} sol8 la4 sol8 mi re mi16 re sol8 |
    fa32 sol fa sol mi16 re r8 do8. re8. mi8 re |
    sol8 la4 sol8 sol16 mi8 re16 fa32 mi fa sol fa16 mi |
    mi16. re32 do16 re do8 r8 mi16 mi8. mi8 re8 |
    mi16 fa32 sol mi fa re mi do16 si do8 mi16 re8. re8 do |
  }
  \alternative
  {
    { la sol r sol'8. sol8 mi16 re8 r16 sol | }
    { la,8 sol r \Segno la' sisb16 sisb8 la16 la sol sol re | }
  }
  \repeat volta 3
  {
    sol8 la4 sol8 mi re mi16. re32 sol16 sol32 fa |
    fa32 sol fa sol mi16 re r8 do do16 re8. mi8 re |
    sol la4 la8 sol16 mi8 re16 fa32 mi fa sol fa16 mi |
    mi16. re32 do16 re do8 r8 mi16 mi8. ~ mi8 re |
    mi16 fa32 sol mi fa re mi do16 si do8 mi16 re8. re8 do |
  }
  \alternative
  {
    { la sol r la' sisb16 sisb8 la16 la sol sol re | }
    { la8 sol r do8 do16 re8. mib8 mib16 re | }
  }
  \repeat volta 3
  {
    mib re mib fad mib fad re8 r16 re8 do16 re8 do |
  }
  \alternative
  {
    { la sol r do8 do16 re8. mib8 mib16 re | }
    { la8 sol r do8 do16 re8. mi8 re | }
  }
  sol la4 la8 sol16 mi8 re16 fa32 mi fa sol fa16 mi |
  mi16. re32 do16 re do8 r mi16 mi8. ~ mi8 re |
  mi16 fa mi re do si do8 mi16 re8. re8 do |
  la sol r8
  \DScoda
}
fargha_btayhi = \relative do'
{
  \set Timing.measurePosition = #(ly:make-moment -5/8)
  fa16 mi re do re mi fa4 |
  \repeat volta 2
  {
    r8 sol16 fa sol8 sol (sol16) fa8 (sol16) la4 |
    r8 la16 la la8 la (sol16) la8 (sol16) mi8 re |
    r8 do16 re mi8 re do mi re do |
  }
  \alternative
  {
    { la sol r8 fa'16 mi re do re mi fa4 | }
    { \break la,8 sol r8 }
  }
}
ya_hibi = \relative do''
{
  \key do \major
  \mark \markup { \huge "بطايحي يا حبي ما لك"} la8. la8. sol8 fa |
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
    { la16 sisb sol8 \coda r la' la16 la8. sol8 fa }
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
  mi4 re8 do |
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
  r8 sol4 la8 (la) sol sol mi |
  re8 do (do) do4 re8 mib re |
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
      piece = \markup { \huge "خانة 2 (Nabil Ghannouchi)" }
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
    \new Staff \khana_four
    \layout { }
    \header
    {
      piece = \markup { \huge "خانة 4(Salem Bnouni)" }
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
    \new Staff \jitou
    \layout { }
    \header { piece = \markup { \huge "بطايحي جئت بالإحتقار" } }
  }
  \score
  {
    \new Staff { r4 r8 \fargha_btayhi \baligh }
    \layout { }
    \header { piece = \markup { \huge "فارغة" } }
  }
  \score
  {
    \new Staff { \fargha_btayhi \ya_hibi }
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
    \new Staff \ya_hal_tara
    \layout { }
    \header { piece = \markup { \huge "دخول الأدراج" } }
  }
  \score
  {
    \new Staff \afnani
    \layout { }
    \header { piece = \markup { \huge "دخول الخفائف" } }
  }
  \score
  {
    \new Staff \assoummou
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
        \unfoldRepeats \repeat volta 24 \hroub
        \unfoldRepeats \repeat volta 134 \btayhi
      }
      \new Staff \with {midiInstrument = #"violin"}
      {
        \unfoldRepeats \dkhoul_btayhi
        \unfoldRepeats \jitou
        r4 r8
        \unfoldRepeats \fargha_btayhi
        \unfoldRepeats \baligh
        \unfoldRepeats \fargha_btayhi
        \unfoldRepeats \ya_hibi
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
        \unfoldRepeats \ya_hal_tara
        \unfoldRepeats \afnani
        \unfoldRepeats \assoummou
      }
    >>
    \midi { \tempo 4 = 80 }
  }
}
