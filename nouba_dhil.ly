\language "italiano"
\include "arabic.ly"
#(set-global-staff-size 22)
\header {
  title = \markup { \magnify #2.5 "نوبة الذيل" }
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
  do2( |
  do4.) r8 |
  fa16 misb re do si la sol8( |
  sol16) r sol8 (la4) |
  sisb4 do |
  re sisb8 (re) sol16 \(la8. (la8)\) sol8 |
  r16 sisb8. (re4) |
  fa16 misb re do sisb la sol8( |
  sol) la16 (sisb) do8. (re16) sisb8. (re16) do4 |
  sisb8. (re16) do4 |
  sisb8. (re16) do4( |
  do8) r8 r4 |
  sol16 sol8 sol16(sol) sol16 sol8 \( ( |
  sol16) la\) fa (misb) re4 |
  r16 re misb fa sol8 la |
  sol fa misb re |
  sol16 la8.(la8) sol8 |
  r16 misb8. (re4) |
  do16 sisb la sisb do4( |
  do8) r r4 |
  la16 (sisb do) la (sisb do) la (sisb |
  do4.) \tuplet 3/2 { do16 (sisb la) } |
  sisb2 |
  r8 re re do |
  re misb fa misb |
  re do sisb do re8. (do16) sisb8. (la16) |
  sol4. r8 |
  la'16 (sisb do) la16 (sisb do) la16 (sisb |
  do4) mi4 |
  re8. (do16) sisb8. (la16) |
  sol8 r8 \tuplet 3/2 {re (do re)} |
  do4 do16 re misb fa |
  sol4 la |
  sol fa |
  misb8. (re16) sol4 |
  sol8. (misb16) re4|
  \tuplet 3/2 {sol8 fad sol} \tuplet 3/2 {la sisb do} |
  re4\fermata \tuplet 3/2 {do8 sisb do} |
  la8 r16 la16 (re4\fermata) |
  \tuplet 3/2 {do8 re do} la4\fermata |
  sol16 (la) sol8 do4( |
  do4) sib16 (la sol fa) |
  misb4. r8 |
  do16 (re misb fa) sol4 |
  la16 (sol fa misb) re4 |
  misb16 (fa misb re) misb4 |
  sol16 (fa misb re) do8 r |
  do'8. (re16) sisb8. (do16) |
  la8. (sisb16) sol4 |
  fa8 (misb16) re misb8 fa |
  sol4 la8 sol |
  do4\fermata sol4 |
  re16 (misb) fa8 \((fa) misb\) |
  re do la sol |
  la8. (sol16) re'8. (do16) |
  do8\fermata r do re|
  \break
}
khana_one = \relative do'
{
  \time 6/4
  \repeat volta 2
  {
    misb8.(re16) sol8.(fad16) misb8.(re16) do8 r sol' la16.(fad32) sol16.(misb32) fad16.(re32) |
    misb8(re16) do do sol do re misb8.(re16) fa(misb) sol(misb) misb(re) fa(sol) misb16.(re32) do8 |
    sol'8 \(la16 sol (sol) \) (la) fa8 misb16 sol fa misb re8 r fa16 misb re do sisb la sol8 |
    do16 sisb8 (re16) do8 r re16 (misb) fa8 (fa) sol misb16(fa) misb(fa) re8 r |
  }
}
taslim = \relative do'
{
  \time 6/4
  do8 do16 do do8 re sisb do sisb do la2 |
  \grace la8 (sisb4.) sisb8 \grace sisb8 do4. do8 \grace sisb8 re4. re8 |
  misb16(re) fa(sol) misb(fa) re(misb) do8 r sol' sol16(fad) sol4 do |
  do4. sisb8 re16 do sib la sol (la) sol fad sol16. (fad32 misb16) fad16 misb16.(re32 do8) |
}
khana_two = \relative do''
{
  \time 6/4
  sol16 \(fasd mi8 (mi)\) mi fasd8. (mi16) fasd4 sol4 sol16. (fasd32) sol8 |
  la16 (sib la sol) fasd (mi) sol (fasd) fasd16.(mi32 re8) mi16.(re32 mi8) fasd8.(mi16) fasd4 |
  sol4 sol16.(fasd32) sol8 la8 la16 la la8 la sisb do16(re) sisb16(do) la(sisb) |
  sol8 r fa sol16 la sol16 la8.(la8) sol8 fa16(misb) fa(sol) fa(misb re8) |
}
khana_three = \relative do''
{
  \time 6/4
  do32\(sisb la8.(la8)\) r la16 (sisb) do(re) do(sisb) la8(la4.) r8 |
  sol8.(fasd16) la8.(sol16) fasd8.(mi16) sol16.(fasd32) la16.(sol32) fasd16(mi) sol(fasd) fasd16.(mi32 re8) |
  r4 la'16(sol sol fasd) fasd(mi) sol(fasd) fasd16.(mi32 re8) r8 mi16 (fa) mi (fa) re8( |
  re16) misb8. sol,16(la32 sisb do re misb fa) sol4 sol8 la sol16(sib) la (sol32 fasd) sol8 r |
}
khana_four = \relative do'
{
  \time 6/4
  r8 do16 (reb) mi (fa) sol(lab) sol(fa) mi(reb) do4 r8 sol'16(la) sol8(fa) |
  mi(re) sol(lab) si16(do) lab(si) sol(lab) fa(sol) mi (fa mi reb) do4 |
  r8 sol'16 sol la16.(fa32) sol16.(fa32 mi16) fa16. (mi32 re16) mi16.(re32 do8) r8 do16(re) do(re) do8( |
  re16) misb8 (fa16) sol8 r la16 sol fa8\(( fa) misb\) re do16 misb re4 |
}
touq = \relative do''
{
  \time 6/8
  sol16(fasd re8) fasd16(misb) fasd8 sol4 |
  sol16(fasd) sol8 la8 la16 la la8 la |
  sol8 la16(sib) sol16 la fa sol misb fa re misb |
  do8 r misb16(fa) re(misb) do8 r |
  misb16(fa) re(misb) do8 r misb8.(re16) |
  fa8.(misb16) sol fa misb re do8 r |
  sol' fa sol sol la16(sib la sol) |
  fa8 misb fa fa sol16(la sol fa) |
  misb8(re) misb misb fa16(sol fa misb) |
  re8(do) re(misb) fa8 r |
  re8 misb fa fa sol16(la sol fa) |
  misb8(re) misb misb fa16(sol fa misb) |
  re8(do) re misb fa16 sol misb fa |
  re16(misb) do(re) sisb(do) la(sisb) sol8 r |
  la16(sisb la sol) la8 sisb do re |
  misb16(fa misb re) misb8 fa sol4 |
  la8 sisb do sisb16(re) do8 r |
}
silsla = \relative do''
{
  \time 3/8
  \repeat volta 2
  {
    re8 re re |
    do \( do16 (sisb do re)\) |
    sisb8 \( sisb16 ( la sisb do)\) |
    la8 \( la16 (sol la sisb)\) |
    do8 \( do16 (sisb do re)\) |
    sisb8 \( sisb16 (la sisb do)\) |
    la8 \( la16 (sol la sib)\) |
    sol8 \( sol16 (fad sol la)\) |
    sib8 \( sib16 (la sib do)\) |
    la8 \( la16 (sol la sib)\) |
    sol8 \( sol16 (fa sol la)\) |
    fa8 \( fa16 (misb fa sol)\) |
    la8 \( la16 (sol la sib)\) |
    sol8 \( sol16 (fa sol la)\) |
    fa8 \( fa16 (misb fa sol)\) |
    misb8 \( misb16 (re misb fa)\) |
    sol8 \( sol16 (fa sol la)\) |
    fa8 \( fa16 (misb fa sol)\) |
    misb8 \( misb16 (re misb fa)\) |
    re8 \( re16 (do re misb)\) |
    fa8 \( fa16 (misb fa sol)\) |
    misb8 \( misb16 (re misb fa)\) |
    re8 \( re16 (do re misb)\) |
    do8 r4 |
  }
}
abyat = \relative do''
{
  \time 2/4
  \repeat volta 2
  {
    \repeat percent 2 { sol16(do) sisb(do) la(sisb) sol8 | }
    sol16 la8 la16 sisb8 sisb |
    do8 sisb16 do re8 re |
    re16(do sisb do) re8 re16(do) |
    re16(misb re do) sisb(la sol8) |
    fa'8(misb16 re) misb8(re16 do) |
    re16(misb re do) sisb (la sol8) |
  }
  \repeat volta 2
  {
    sol16 sisb8 sisb16 re16(do) do(sisb) |
    do(re) sisb(do) la(do) sisb(la) |
  }
  \repeat percent 2 { sol do sisb do la sisb sol8 | }
  sol16 la8 la16 sisb8 sisb |
  do8 sisb16 do re8 re |
  re16 misb8(re16) misb(re misb fa) |
  sol8.(fa16) sol(la) sol8 |
  sol16 do sisb do la sisb sol la |
  fa sol misb fa re misb do8 |
  do16 misb8 misb16 sol8 sol |
  lab16(sol32 lab sol16 fad) sol4\fermata |
  \break
  r2_"استخبار اصبعين على درجة النوا"
  \break
  sol,2 |
  la8 la la16(sol fa8) |
  sol16(fa) sol(la) sol(fa misb8) |
  fa16(misb) fa(sol) fa16(misb re8) |
  re16 misb8(re16) misb(re) misb(fa) |
  sol8.(la16) sol16(la) sol8 |
  sol16(do) sisb(do) la(sisb) sol(la) |
  fa(sol) misb(fa) re(misb) do8 |
  do16 misb8 misb16 sol8 sol16(fa) |
  sol32(la sol16 fa misb) misb(re do8) |
  \time 4/4
  re8 re16 re re8 re re sol re r |
  fa16 misb re do sisb(la sol8) la16(sol) la(sisb) do8 r |
  sol'16(fa) fa(misb) misb(re) re(do) re8 fa16(misb) re16(do) do(sisb) |
  sisb8\(la16 sol(sol8)\) la(sol16) la8(sisb16) do4 |
  re8 misb sol misb(do16) re8(sisb16) do4( |
  do4) r8 \break \mark \markup { \huge "ﺍﻸﺒﻳﺎﺗ"} do16 do(do) do8 do16 do8. sisb16 |
  sisb4 r8 do do16 do sisb do re misb fa sol |
  sol(fa) fa(misb) misb(re) re8(do16) misb8(re16) re32(misb re16 do sisb) |
  sisb32(do sisb16 la sol) r8 do16 do(do) do(sisb do) re4 |
  misb32(fa misb16 re do) do16 r sol'8 sol16 la8(sol16) fa8 misb |
  fa16(misb re do) sisb(la sol8) sol16(do) sisb(do) re8 misb |
  fa8(misb) re(do) sisb8 re16.(do32) misb32(re do8.) |
  \break \mark \markup { \huge "فارغة"} r8 misb16(fa) sol8 sol la16(sol32 la) sol16(fa) sol4 |
  r8 la16(sisb) do(sisb) do8(re16) sib8(la16) la(sol) sol(fa) |
  do'(sib) sib(la) la(sol) sol(fa) sol8 sib16(la) sol(fa) misb(re) |
  do8 misb16 fa sol(lab) si do re do si lab sol4 |
  r8 re'16 re re8 si8(si16) sol8(lab16) si(do) si lab |
  sol8 do16 do do sisb do8(re16) sib8(la16) la(sol) sol(fa)|
  do'(sib32 do sib16 la) la(sol) sol(fa) sol8 sib16(la) sol(fa) fa(misb) |
  misb8(re16 do) r8 \mark \markup { \huge "إنشاد"} do'16 do(do) do(sisb) do la(do) sisb8 |
  re16 do sisb la sol8 la8(la16) la8 la16 la(sisb) do(re) |
  do16 sisb la8 r8 la8 la16 sol8(sib16) la sol fad(mib) |
  re4 r8 do'16 do(do) do8 do16 do8(la) |
  sol4 r8 sol sol16 la8 la16 fa8.(misb16) |
  sol32(la sol16 fa misb re8) sol8(sol16) sol(fa sol) la4 |
  la16(sol fa8) r16 sol8(la16) sol16(fa misb8) r16 fa8 sol16 |
  misb8. fa16 re8 misb do16(re8) sisb16(do4) |
  sol'16(do) sisb(do) la(sisb) sol(la) fa(sol) misb(fa) misb32(fa misb16 re do) |
  r8 do16(re) misb(re) misb fa sol32(la sol16 fa misb) misb32(fa misb16 re do) |
  \repeat volta 2
  {
    \break \mark \markup { \huge "فارغة"} fa16(misb) fa(sol) fa(misb) re8 misb16(re) misb(fa) misb(re) do8 |
    do do16 do misb8 misb sol fa16(la) sol4 |
    r8 la16 sisb do(sisb) do8(re16) sib8(la16) la(sol) sol(fa) |
  }
  \alternative
  {
    { do'(sib32 do) sib16(la) la(sol) sol(fa) sol8 sib16(la) sol fa misb32(re do16) | }
    { do'(sib32 do) sib16(la) la(sol) sol(fa) sol8 sib16(la) sol fa fa misb | }
  }
  misb32(fa misb16 re do) r8 \mark \markup { \huge "إنشاد"} do'16 do(do) do(sisb do) la(do) sisb8 |
  re16(do sisb la sol) r la8(la16) la8 la16 la(sisb) do re |
  do(sisb) la8(la16) r la8 la16(sol8) sib16(la) sol fad mib |
  re4 r8 do'16 do(do16) do8 do16 do8 la |
  sol4 r8 sol8(sol) do do(sib) |
  sib \((la la) sol\) sol fa sol16(fa misb8) |
  re8 do4 re8 misb16(fa misb re) misb4 |
}
dkhoul_btayhi = \relative do''
{
  \key do \major
  \time 2/4
  sol2\prall |
  la8 la la16(sol) fa8 |
  sol16(fa) sol(la) sol(fa) misb8 |
  fa16(misb) fa(sol) fa(misb) re8 |
  re16 misb8(re16) misb(re) misb(fa) |
  sol8.(fa16) sol16(la) sol8 |
  sol16(do) sisb(do) la(sisb) sol(la) |
  fa(sol) misb(fa) re(misb) do8 |
  do16 misb8 misb16 sol8 sol16(fa) |
  sol(la) sol(fa) misb(re) do8 |
  fa16(misb) fa(sol) misb(re) do8 |
  \time 4/4
  do8 do16 do misb8 misb sol fa16 la sol4 |
  r8 misb16 fad sol fad sol8(fa16) sol8(fa16) la8 sol |
  r8 do16(re) misb(re) misb(fa) sol(fa) fa(misb) misb8(re16 do) |
  fa(misb) fa(sol) fa(misb) re8 misb16(re) misb(fa) misb(re) do8 |
  do8 do16 do misb8 misb sol fa16 la sol4 |
  r8 la16(sisb) do sisb do8(re16) sib8(la16) la(sol) sol(fa) |
  do(sib32 do sib16 la) la(sol) sol(fa) sol8 (sib16 la) sol(fa) fa(misb) |
  misb8(re16 do) do4 r2 |
}
btayhi_one = \relative do''
{
  \time 4/4
  r4 r4 do8 do sisb16(do) sisb(do) |
  \repeat volta 3
  {
    la8 sisb\((sisb) do\) re32(mi re16 do sisb) sisb32(do sisb16 la sol) |
    la4. la8(la16) la8(sol16) sol(fa) la(sol) |
    fa(misb) sol(fa) misb(re) fa8 sol32(la sol16 fa misb) misb32(fa misb16 re do) |
    sol'8 sol16 sol fa8 sol la r fa fa16 fa |
    misb8 fa sol16(la) sol8 r8 misb16 misb sol8 fa16(misb) |
    re16(misb32) fa re16(misb) do8 r misb fa sol sib16(la) |
    sol8 fa16(misb re8) fa16(misb) sol fa8.\((fa8.)misb16\) |
  }
  \alternative
  {
    { sol fa misb re do8 r do' do sisb16 do sisb do | }
    { sol fa misb re do8 r re' do sisb16 do sisb do | }
  }
  la8 sisb4(do8) re32(mi re16) do32(re do16) sisb32(do sisb16) la32(sisb la16) |
  sol4 r8 re'(re16) sisb8(la16) sol8 r |
  sol8 la(la) la(sol16) la8(sol16) re'8.(do16) |
  misb32(re do8.)(do4) re8 do sisb16(do sisb do) |
  la8 sisb4(do8) re32(mi re16) do32(sisb do16) sisb32(la sisb16) la32(sisb la16) |
  sol4 r8 la(la16) la8(sol16) sol8(fa) |
  sol la(la) la(sol16) la8(sol16) sol8(fa) |
  sol4 fa8 sol la8 r fa4 |
  misb8(fa) sol4 r8 misb16 misb sol8(fa16 misb) |
  re(misb) re(misb) do4 sol'8 sol la4 |
  sol8 misb\((misb16) re\) fa8(fa16) re8(misb16) do4 |
  re8 fa16(misb) re4(re8) do sisb16(do) la(sisb) |
  sol8 la4 la8(sol16) la8(sol16) re'8.(do16) |
  misb32\(re do8.(do8)\)r8 r2 |
}
fargha_btayhi = \relative do'
{
  \time 4/4
  %r8 misb16 fa sol8 sol la16 sol32(la) sol16 fa sol4 |
  %r8 la16 sisb do sisb do8(re16) sib8(la16) la(sol) sol(fa) |
  %do'16 sib32(do) sib16(la) la(sol) sol(fa) sol8 sib16(la) sol fa misb re |
  %do8 misb16 fa sol(lab) si(do) re(do) si(lab) sol4 |
  %r8 re'16 re re8 si(si16) sol8(lab16) si16(do) si lab |
  %sol8 do16 do do si do8(re16) sib8(la16) la(sol) sol(fa) |
  %do'\(sib32(do)\) sib16(la) la(sol) sol(fa) sol8 sib16(la) sol fa misb32(re do16) |
  %sol'8(fa) sol(la) sol\(la16(sib)\) la\((sol) fa8\) |
  %fa8(misb) fa(sol) fa\((sol16) la\) sol16(fa) misb8 |
  %misb8(re) misb(fa) misb\((fa16)sol16\) fa\((misb)re8\) |
  %fa16 misb re do sisb la sol8 la16(sol) la sisb do8 r |
  %sol'16(fa) fa(misb) misb(re) re(do) re8 fa16(misb) re16(do) do(sisb) |
  %sisb8 la16\(sol(sol8)\) la(sol16) la8 sisb16 do8 r |
  %re8(misb) sol misb(do16) re8(sisb16) do8 r |
}
btayhi_two = \relative do''
{
  \time 4/4
  \break \mark \markup {\huge "بطايحي ثاني" }r1 |
}
touchia = \relative do'' {
  \key la \bayati
  \time 2/4
  % version du sifr incomplete
  %\repeat volta 2
  %{
  %  \repeat percent 2 { r8 re16 re re8 re | re16(do) do(sisb) sisb4 | }
  %  sol8 sol sisb sisb |
  %  do16(re) do(re) sisb4 |
  %  do16(re) do(re) sisb(do) sisb(do) |
  %  la16(sisb la sol) sisb4 |
  %  sol16 la sisb do re(do) do(sisb) |
  %  la(sol) do(sisb) sisb4\fermata |
  %}
  %\alternative
  %{
  %  { r2_"إستخبار الرباب" | }
  %  { \break \time 4/4 sol8 sol16 sol sisb8 sisb do16(re) do(re) sisb4 | }
  %}
  %\repeat volta 2
  %{
  %  r8 sisb16 do re8 re re16(do) sisb(do) re8 do |
  %  re fa16(mi) re(mi) do(re) sisb(la) do(sisb) sisb32(do sisb16 la sol) |
  %  do8.(sisb16) re32 do sisb8(la16) do32(sisb) la8(sol16) fa'16(mi) re(do) |
  %}
  %\alternative
  %{
  %  {
  %    sisb32(do sisb16 la sol) r8 la16 sisb do(re) sisb(do) sisb32(do sisb16 la sol) |
  %    r8 do16(sisb) la(sol) la(sisb) do(re) sisb(do) sisb32(do sisb16 la sol) |
  %  }
  %  { sisb16 la sol fasd fasd8 fasd8(fasd16) sol8(la16) sisb32(do sisb16 la sol) | }
  %}
  %r8 la16(sisb) la(sol) la(sisb) do(re) sisb(do) sisb32(do sisb16 la sol) |
  %r8 do16 do do8 do(do16) do(sisb la) sisb4 |
  %r8 sisb16 do re8 re re16 do sisb do re8 do |
  %re8 fa16(mi) re(mi) do(re) sisb(la) do(sisb) sisb32(do sisb16 la sol) |
  %do8.(sisb16) re32(do) sisb8(la16) do32(sisb) la8(sol16) fa' mi re do |
  %sisb(la) sol(fasd) fasd8 fasd(fasd16) sol8(la16) sisb32(do sisb16 la sol) |
  %r8 la16(sisb) la(sol) la(sisb) do(re) sisb(do) sisb16.(la32 sol8) |
  %sol16 do sisb do la sib sol la fad(sol) mib(fad) re(mib) do sol' |
  %sol(fa) fa(misb) misb(re) re(do) re8 fa16 misb re do sisb la |
  %sol8 re''16 re16 re8 re do16(re) do(re) mi8.(re16) |
  %\repeat volta 2
  %{
  %  re(do) do(sisb) sisb(la) la8(la16) sol8(la16) sisb(do) sisb(la) |
  %  sol8 la16(sisb) do(sisb) do8(sisb16) do8 do16 mi8 re |
  %  sisb8 la16(sisb) la(sisb) sol8 \grace mi8 re'8.(do16) sib32(do sib16 la sol) |
  %}
  %\alternative
  %{
  %  { sol8 re'16 re re8 re do16(re) do(re) mi8.(re16) | }
  %  { re8 do16(re) mi16. re32 do8 r16 do sisb do re16.(do32) sisb8 | }
  %}
  %\repeat volta 2
  %{
  %  r16 sisb la sisb do16.(sisb32 la8) r16 la sol la sisb(do) sisb(la) |
  %  sol8 la16(sisb) do sisb do8(sisb16) do8 do16 mi8 re |
  %}
  %\alternative
  %{
  %  { sisb16(do) sisb(do) la(sisb) sol8 re'8.(dod16) sib32(dod sib16 la sol) | }
  %  { sisb16(do) sisb(do) la(sisb) sol8 do16(re) do(sisb) do(re) do(sisb) | }
  %}
  %la8 la16 sisb do re do8(sisb16) do8(sisb16) do32(re do16 sisb la) |
  %\repeat volta 2
  %{
  %  r8 do16(sisb) la(sol) la8 sisb do re32(mi re16 do sisb) |
  %  sisb32(do sisb16 la sol) r8 do16 re mi(do) re(sisb) do32(re do16 sisb la) |
  %  r8 do16(sisb) la(sisb) sol8(sol16) do8(re16) mi8.(re16) |
  %  do16(re) do(sisb) la8 do sisb16 re do sisb la8 r |
  %}
  %\alternative
  %{
  %  { fa16 mi re do sisb la sol8(sol16) la8 sisb16 do4 | }
  %  { r1 | }
  %}
  %\repeat volta 2
  %{
  %  r8 do16(sisb) la16(sol) la8 sisb32(do sisb16 la do) sisb4 |
  %}
  %\break r1_"إستخبار  العود العربي" |
  \repeat volta 2
  {
    \repeat percent 2 { r8 re16 re re8 re | re16(do) do(sisb) sisb4 | }
    sol8 sol sisb sisb |
    do16(re) do(re) sisb4 |
    do16(re) do(re) sisb(do) sisb(do) |
    la16(sisb la do) sisb4 |
  }
  \break r1_"إستخبار الرباب" |
  \repeat volta 2
  {
    \break \repeat percent 2 { r8 re16 re re8 re | re16(do) do(sisb) sisb4 | }
    sol8 sol sisb sisb |
    do16(re) do(re) sisb4 |
    do16(re) do(re) sisb(do) sisb(do) |
    la16(sisb la do) sisb4 |
  }
  \time 4/4
  \break sol8 sol16 sol sisb8 sisb do16(re) do(re) sisb4 |
  \repeat volta 2
  {
    r8 sisb16 do re8 re re16 do sisb do re8 do |
    re fa16 mi re do do sisb do re sisb do sisb16. la32 sol8 |
    do8. sisb16 re32 do sisb8 la16 do32 sisb la8 sol16 fa' mi re do |
  }
  \alternative
  {
    {
      sisb do sisb32 la sol16 r8 la16 sisb do re sisb do sisb16. la32 sol8 |
      r8 do16 sisb la sol la sisb do re sisb do sisb16. la32 sol8 |
    }
    { sisb16 do sisb32 la sol16 r8 fasd8(fasd16) sol8 la16 sisb16. la32 sol8 | }
  }
  r8 la16 sisb la sol la sisb do re sisb do sisb16. la32 sol8 |
  r8 do16 do do8 do r16 do sisb la sisb4 |
  r8 sisb16 do re8 re re16 do sisb do re8 do |
  re fa16 mi re do do sisb do re sisb do sisb16. la32 sol8 |
  do8. sisb16 re32 do sisb8 la16 do32 sisb la8 sol16 fa' mi re do |
  sisb la sol fasd fasd4(fasd16) sol8 la16 sisb16. la32 sol8 |
  r8 la16 sisb la sol la sisb do re sisb do sisb16. la32 sol8 |
  sol'16 do sisb do la sib sol la fa sol misb fa misb16. re32 do16 sol' |
  sol fa fa misb misb re re do re8 fa16 misb re do sisb32 la sol16 |
  \repeat volta 2
  {
    re'8 do16 re mi16. re32 do8 r16 do sisb do re16. do32 sisb8 |
    r16 sisb32 do la16 sisb do16. sisb32 la8 r16 la32 sisb sol16 la sisb do sisb la |
    sol8 la16 sisb do sisb do8 sisb16 do8 do16 mi16 re re8 |
    sisb16 do sisb do la sisb sol8 re'8(re16) dod sib8(sib16) la |
  }
  \repeat volta 2
  {
    sol8 sisb16 re do re do8 sisb16 do8 sisb16 do16. sisb32 la8 |
    sol do16 sisb la16. sol32 la8 sisb do re do16 sisb |
    sisb8 la16 sol r8 do16 re mi16. do32 re16 sisb do16. sisb32 la8 |
    sol do16 sisb la sol fasd sol la sisb do re mi8(mi16) re |
    do re do sisb la8 do sisb16 re do sisb la8 la16 la |
  }
  do8 sol16 do8 sol16 do8 sol16 do8 re16 do16. sisb32 la16 sol |
  r8 do16 sisb la sol la8 sisb do la16 do sisb8( |
  sisb) la16 sol r8 do sisb16. la32 sol8 la4 |
  sol8 do16 sisb la sol fasd sol la sisb do re mi8(mi16) re |
  do re do sisb la8 do sisb16 re do sisb la8 la16 la |
  do8 sol16 do8 sol16 do8 sol16 do8 re16 do16. sisb32 la16 sol |
  r8 do16 sisb la sol la8 sisb do la16 do sisb8 |
  sisb la16 sol r8 do8 sisb16. la32 sol8 la4 |
  r8 la16 sol mi8 re16 do re do mi re mi re do si |
  la4(la8) la sib16. la32 sol8 la4 |
  mi'8 fa16 sol mi fa re mi dod re do sib la4 |
  sib16. la32 sol16 la sol8 la(la16) sib sib32 la sol16 la4 |
  mi'8 fa16 sol mi fa re mi dod re dod sib la4 |
  \repeat volta 2
  {
    r8 mi'16 fasd sol fasd sol8 fasd16 la8 sol16 fasd16. mi32 re8 |
    mi8 fasd16 sol mi fasd re mi dod re dod sib la4 |
  }
  r8 re16 dod sib16. la32 sol8 r16 la sol la sib16. la32 sol8 |
  \break r1_"إستخبار  العود العربي" |
}
draj_one = \relative do'' {
  \time 6/4
  sol8 sol16 sol sol8 sol sol4 fa8(misb) sol4 r4 |
  la8(sib16 do) la8(sol) fa4 fa8(misb) fa4 r4 |
  sol8(la) sol(fa) misb16(fa misb re) do8(re) misb4 r4 |
  fa8(sol) fa(misb) re4 la'8.(sol16) sib(la sol fa) misb(re do8) |
  misb(fa) sol(la) sol8.(fa16) sol8.(misb16) fa8.(misb16) misb(re do8) |
  re8(misb) re(do) sisb(sol) la(sisb) do r r4 |
  \time 3/8 \break \mark \markup { \huge "باسم عن ﻵل" } fa4. |
  sol8 fa4 |
  re16( mi do8) fa8( |
  fa) sol sol |
  la sib16( do la sol |
  sol8) fa16( sol fa misb) |
  re8 misb16 sol fa8( |
  fa4) r8 |
  sol4. |
  sol8 sol4( |
  sol4) sol16(la) |
  fa(sol) misb(fa) re8 |
  misb4 fa8( |
  fa) sol(la) |
  sol(fa) la( |
  la) sol r |
  do, re do |
  re misb16(fa re misb |
  do8) r misb( |
  misb) sol sol |
  fa16(sol fa sol) misb(fa |
  misb fa) re(misb re misb) |
  do8 re misb16(fa |
  re misb) do8 r |
  do'4.( |
  re8) do16(re do re) |
  sisb(do sisb do) la(sib |
  la sib) sol8 r |
  sol sol16(fa) sol8 |
  sol16(fa) misb8.(re16) |
  la'8.(sol16) sol8( |
  fa16) misb misb32(fa misb16 re do) |
  fa8(misb16 re) do8( |
  re8) misb16(fa re misb |
  do8) r misb( |
  misb) sol sol |
  fa16(sol fa sol) misb(fa |
  misb fa) re(misb re misb) |
  do8 re misb16(fa |
  re misb) do8 r |
  do'4.( |
  re8) do16(re do re) |
  sisb(do sisb do) la(sib |
  la sib) sol8 r |
  \time 6/4
  sol8.(fa16) sol8.(fa16) misb8.(re16) la'8.(sol16) sol8 fa16(misb) misb(re) do8 |
  \repeat volta 2
  {
    do'8.(sisb16) do8 do sisb8.(la16) do8.(sisb16) re16 do sisb la sol r sol8 |
    do16(re do re) sisb(do sisb do) la(sib la sib) sol(la sol fad) mib sol(fad mib) re(mib do8) |
    fa(misb16 re) do8 re misb16(fa) re(misb do8) r misb4 sol8 sol |
    fa16(sol fa sol) misb(fa misb fa) re(misb re misb) do(sisb la sisb) do4 r |
  }
}
khafif_one = \relative do'' {
  \time 6/4
  \repeat percent 2 { sol8 r do re misb8.(re16) fa8.(misb16) misb8.(re16) do4 | }
  r4 sol8 sol sol(la) fa(sol) misb(fa) re4 |
  misb4 fa sol8.(fa16) la8.(sol16) sol4. r8 |
  do4. sisb8 la4 do16(re do8) sisb16(do sisb8) la16(sisb la8) |
  sol4. r8 fa(re) misb(fa) sol4 r |
  do4. sisb8 la4 do16(re do8) sisb16(do sisb8) la16(sisb la8) |
  sol4. fa8 la4 sol4 misb8(fa) misb(re) |
  do4 r r1 |
  \break \mark \markup { \huge "بالله اش كانت ذنوبي" }
  r4 misb8 misb sol8.(fad16) sol8.(fad16) sol4 fa8(misb16 re) |
  misb8 r sol sol16(fad) sol4 sol fa8.(re16) misb8 misb |
  sol4 fad8.(misb16) sol8.(misb16) fad(misb) misb(re) do re8(do16) do4 |
  r do'8(sisb do) la do(sisb) sisb16(do sisb8) la8 sol |
  r sol sol sol sol do sisb do la sib sol(fad) |
  sol4 fad8(misb) misb sol fad(misb) re8.(do16) do4 |
  r4 fa8 fa fa16(misb) sol(fa) fa8.(misb16) sol8 la16(fa) fa(misb) misb(re) |
  r4 la'8 la la4\((la8.) sol16\) sol8.(fa16) fa8.(misb16) |
  sol8.(fa16) fa8.(misb16) sol8.(fa16) fa8.(misb16) misb8.(re16) re4 |
  r re8(misb) fa4 sol8 misb fa4(misb8 re) |
  la'8.(sol16) sol4 fa16(misb) sol(fa) fa8.(misb16) sol8.(fa16) fa(misb) misb(re) |
  r4 re8(misb) fa4 sol8 misb fa4 r8 fa |
  la4 sol fa misb re do |
  sisb la8(sol) do4 do8 do misb16(re) fa(misb) misb(re do8) |
  r4 fa8(misb fa) re fa(misb) misb16(fa misb8) re8(do) |
  r8 sol'8 sol sol16(fad) sol8.(fad16) sol4 fad8.(misb16) misb8(re) |
  sol4(fad8 misb) sol8.(misb16) fa16(misb) misb(re) do re8(do16) do4 |

  r4 sol'8(fad) sol la\((la) sol\) la16 (sib la sol) fad4 |
  r4 fad8(sol) la(sib) la(sol) fa(mib) re4 |
  fad8.(mib16) fa4 sol8.(fad16) fad8.(misb16) fad(misb) misb\((re) re4\) |
  r4 sol8(fad) sol(la) sisb do(la16) do(sisb la) sol4 |
  r4 fad8(sol) la(sib) la(sol) fa(mib) re4 |
  fad8.(mib16) fa4 sol8.(fad16) fad8.(misb16) fad(misb) misb(re re4) |
  r4 fa8 fa fa16(misb) sol(fa) fa8.(misb16) sol8 la16(fa) fa(misb) misb(re) |
  r4 la'8 la la4\((la8.) sol16\) sol8.(fa16) fa8.(misb16) |
  sol8.(fa16) fa8.(misb16) sol8.(fa16) fa8.(misb16) misb8.(re16) re4 |
  r4 re8(misb) fa4 sol8 misb(fa4) misb8(re) |
  la'8.(sol16) sol4 fa16(misb) sol(fa) fa8.(misb16) sol8.(fa16) fa(misb) misb(re) |
  r4 re8(misb) fa4 sol8 misb fa4 r8 fa |
  la4 sol fa misb re do |
  sisb4 la8(sol) do4 do8 do misb16(re) fa(misb) misb(re do8) |
  r4 fa8(misb fa) re(fa) misb misb16(re misb8 re do) |
  r8 sol' sol sol16(fad) sol8.(fad16) sol4 fad8.(misb16) misb8(re8) |
  sol4 fad8(misb) sol8.(misb16) fa(misb) misb\((re) do\) re8(do16) do4 |

  r4 sol' sol8(la) sol(fa) sol16(la sol fa mi4) |
  r4 do8 re do re do si do re mi fa |
  sol r sol sol misb8.(re16) misb8.(sol16) fa8.(re16) do4 |
  r4 do'8.(sisb16 la) r sisb8\((sisb16) la sol fa\) sol(la sol fa) mi4 |
  r4 sol8 sol la4\((la8.) sol16\) sol8.(fa16) fa8.(misb16) |
  misb8.(re16 do8) re misb8.(re16) misb8.(sol16) fa8.(re16) do4 |
  r4 fa8 fa fa16(misb) sol(fa) fa8.(misb16) sol8(la16 fa) fa(misb) misb(re) |
  r4 la'8 la la4\((la8.) sol16\) sol8.(fa16) fa8.(misb16) |
  sol8.(fa16) fa8.(misb16) sol8.(fa16) fa8.(misb16) misb8.(re16) re4 |
  r4 re8(misb) fa4(sol8) misb(fa4) misb8(re) |
  la'8.(sol16) sol4 fa16(misb) sol(fa) fa8.(misb16) sol8.(fa16) fa(misb) misb(re) |
  r4 re8(misb) fa4\((sol8)\) misb fa4 r8 fa |
  la4 sol fa misb re do |
  sisb(la8 sol) do4 do8 do misb16(re) fa(misb) misb(re) do8 |
  r4 fa8(misb fa) re(fa) misb misb16(fa misb8 re do) |
  r8 sol' sol sol16(fad) sol8.(fa16) sol4 fa8.(misb16) misb8(re) |
  sol4 fad8(misb) sol8.(misb16) fa(misb) misb(re do) re8(do16) do4 |
}
khatem_one = \relative do'' {
  \time 6/8
  \partial 4 la4 |
  sisb do2( |
  sisb4) re do |
  sisb(la8) do(sisb la) |
  la2 la8(sisb |
  la sol) la4 sisb |
  do2 la4 |
  sisb4 do2( |
  sisb4) re do |
  sisb(la8) do(sisb la) |
  sol4 r4 la( |
  la8) la la4 la |
  la8(sib la sol) fa4 |
  sol la2( |
  la4) la la |
  la(sol8) la4(sol8) |
  fa'8(misb re) r8 la4 |
  sisb do8(re) sisb(do) |
  la4 sol sol |
  fa(misb8) sol(fa misb |
  re) r r4 sol |
  sol sol8(fa misb re |
  do) r re4 re |
  misb4(re8) misb4(fa8) |
  sol2 la4 |
  sisb do8(re) sisb(do) |
  la4 sol sol |
  fa(misb8) sol(fa misb) |
  re r r4 do' |
  do la sisb |
  do re re |
  misb8(re do) re(do sisb) |
  do2 la4 |
  sisb do2( |
  sisb4) re do |
  sisb4(la8) do(sisb la) |
  sol2 fa'8(misb) |
  misb(re) re(do) do(sisb) |
  do2 la4 |
  sisb do2( |
  sisb4) re do |
  sisb(la8) do(sisb la) |
  sol4 r la( |
  la8) la la4 la |
  la8(sib la sol) fa4 |
  sol4 la2( |
  la4) la la |
  la(sol8) la4(sol8) |
  fa(misb re) r la'4( |
  sisb) do8(re) sisb(do) |
  la4 sol sol |
  fa(misb8) sol(fa misb) |
  re4 r sol |
  sol sol8(fa misb re) |
  do8 r re4 re |
  misb(re8) misb4(fa8) |
  sol4 r la |
  sisb do8(re) sisb(do) |
  la4 sol sol |
  fa(misb8) sol(fa misb) |
  re4 r do'\fermata( |
  sisb8) re( do sisb la) sol\fermata |
  r4 sol la |
  sisb do la |
  sol_\fermata r8 misb re(fa) |
  misb8._\fermata do16 re8._\fermata sisb16 do4_\fermata |
}
barwel_one = \relative do'
{
  \time 2/4
  \partial 8 do8 |
  \repeat volta 3
  {
    do16 re8 re16 la8(sisb) |
    do4 r8 do8 |
    do16 re8 re16 la8 sisb |
    do4 r8 do'( |
    sisb16) do8(sisb16) do8 la |
    sol8 sol16(la) sol8 fa16(misb |
    fa16) re8(misb16) fa8 la |
    sol16(fa misb re do8) la'( |
    la16) sol8 sol16 fa(misb) fa(misb) |
  }
  \alternative
  {
    { re16 fa(misb re do r) do8 | }
    { re16 fa(misb re do8) do | }
  }
  do16 re8 re16 la8 sisb |
  do4 r8 do'8 |
  sib16 do8(sib16) do8(do) |
  la(sol) sol fa( |
  misb16) fa8. misb8 sol |
  fa4 r8 do' |
  sib16 do8 sib16 la(sol) la8 |
  do16(sib) la(sib) fa8 do' |
}
dkhoul_brawel_one = \relative do''
{
  \time 2/4
  \repeat volta 3
  {
    r16 sol8 sol16 sol16(fa) sol8 |
    sol16 la8(sol16) fa misb re8 |
    r16 misb8(sol16) fa(misb re8) |
    misb fa sol4 |
    do,16 sol'8 sol16\((sol16) la\) fa(misb) |
    fa(sol) misb(re) misb(fa) re8 |
    r16 do(sisb do) re8 mib( |
    re16) do8(sisb16) re(do) do8 |
  }
  \repeat volta 2
  {
    r16 sol'8 sol16 sol16(fa) sol8( |
    misb16) fa8(la16) sol(fa misb8) |
    r8 do16 do re misb fa8( |
    re16) misb8(re16) do16(sisb) do8 |
  }
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
    \header { piece = \markup { \huge "غرست الوداد" } }
  }
  %\score
  %{
  %  \new Staff { \fargha_btayhi \btayhi_two }
  %  \layout { }
  %  \header { piece = \markup { \huge "فارغة" } }
  %}
  \score
  {
    \new Staff \touchia
    \layout { }
    \header { piece = \markup { \huge "توشية(عراق)" } }
  }
  \score
  {
    \new Staff \dkhoul_brawel_one
    \layout { }
    \header { piece = \markup { \huge "خمرة الحب اسكرتني" } }
  }
  \score
  {
    \new Staff \barwel_one
    \layout { }
    \header { piece = \markup { \huge "فق يا الخمار" } }
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
    \header { piece = \markup { \huge "ختم يا اهيل الحمى" } }
  }
  %\score
  %{
  %  \new Staff \with {midiInstrument = #"violin"}
  %  {
  %    \unfoldRepeats \istiftah
  %    \unfoldRepeats \khana_one
  %    \unfoldRepeats \taslim
  %    \unfoldRepeats \khana_two
  %    \unfoldRepeats \taslim
  %    \unfoldRepeats \khana_three
  %    \unfoldRepeats \taslim
  %    \unfoldRepeats \khana_four
  %    \unfoldRepeats \touq
  %    \unfoldRepeats \silsla
  %  }
  %  \midi { \tempo 4 = 80 }
  %}
  %\score
  %{
  %  \new Staff \with {midiInstrument = #"violin"}
  %  {
  %    \unfoldRepeats \abyat
  %  }
  %  \midi { \tempo 4 = 80 }
  %}
  %\score
  %{
  %  \new StaffGroup
  %  <<
  %    \new Staff \new DrumStaff
  %    {
  %      \unfoldRepeats \repeat volta 1 \hroub
  %      \unfoldRepeats \repeat volta 1 \btayhi
  %    }
  %    \new Staff \with {midiInstrument = #"violin"}
  %    {
  %      \unfoldRepeats \dkhoul_btayhi
  %      \unfoldRepeats \btayhi_one
  %      \unfoldRepeats \fargha_btayhi
  %      \unfoldRepeats \btayhi_two
  %    }
  %  >>
  %  \midi { \tempo 4 = 60 }
  %}
  %\score
  %{
  %  \new StaffGroup
  %  <<
  %    \new Staff \new DrumStaff
  %    {
  %      \unfoldRepeats \repeat volta 2 \hroub
  %      \unfoldRepeats \repeat volta 2 \btayhi
  %    }
  %    \new Staff \with {midiInstrument = #"violin"}
  %    {
  %      \unfoldRepeats \touchia
  %    }
  %  >>
  %  \midi { \tempo 4 = 80 }
  %}
  %\score
  %{
  %  \new StaffGroup
  %  <<
  %    \new Staff \new DrumStaff \unfoldRepeats \repeat volta 1 \dkhoul_barwel_s
  %    \new Staff \with {midiInstrument = #"violin"} \unfoldRepeats \dkhoul_brawel_one
  %  >>
  %  \midi { \tempo 4 = 110 }
  %}
  %\score
  %{
  %  \new StaffGroup
  %  <<
  %    \new Staff \new DrumStaff
  %    {
  %      \unfoldRepeats \repeat volta 1 \hroub
  %    }
  %    \new Staff \with {midiInstrument = #"violin"}
  %    {
  %      \unfoldRepeats \barwel_one
  %    }
  %  >>
  %  \midi { \tempo 4 = 60 }
  %}
  %\score
  %{
  %  \new StaffGroup
  %  <<
  %    \new Staff \new DrumStaff
  %    {
  %      \unfoldRepeats \repeat volta 1 \draj
  %      \unfoldRepeats \repeat volta 1 \khatem
  %      \unfoldRepeats \repeat volta 1 \khafif
  %      \unfoldRepeats \repeat volta 1 \khatem
  %    }
  %    \new Staff \with {midiInstrument = #"violin"}
  %    {
  %      \unfoldRepeats \draj_one
  %      \unfoldRepeats \khafif_one
  %      \unfoldRepeats \khatem_one
  %    }
  %  >>
  %  \midi { \tempo 4 = 80 }
  %}
}
