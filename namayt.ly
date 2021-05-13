\version "2.18.2"
\language "italiano"
\include "arabic.ly"

iqaa = \new DrumStaff {
  \drummode {
    \repeat unfold 32 {bd8 hh16 sn8 hh16 sn8 hh8 bd8 sn4}
  }
}
chanson = \relative do' {
  \set Staff.keySignature = #`((6 . ,FLAT)
                               (3 . ,SHARP)
                               (2 . ,FLAT))
  r4. do8 re16 mib8 re16 sol8. fad16
  sol16. fad32 sol8 r16 sol16 sol8 sol8 la16 sol sib la sol fad
  mib fad mib re do8 do re16 mib8 re16 sol8 sol16 fad
  sol8 la16 fad sol mib fad mib re do re8 mib fad
  sol32 la sol la fad16 mib re do \tag #'mouhasbachant {r1 r r r} \tag #'mouhasba {do8 re16 mib8 re16 sol8. fad16
  sol16. fad32 sol8 r16 sol16 sol8 sol8 la16 sol sib la sol fad
  mib fad mib re do8 do re16 mib8 re16 sol8 sol16 fad
  sol8 la16 fad sol mib fad mib re do re8 mib fad
  sol32 la sol la fad16 mib re do} do8 re16 mib8 re16 sol8. fad16
  sol fad sol8 r16 sol16 sol4 fa8 sol16 la sol la
  fa8 sol16 la sol la fa8 r16 sol8 fa16 la8 sol
  re mib32 fa mib fa re8 do'16 sisb do re8. sisb16 do sisb la
  sol fad mib re do8 do re16 mib8 re16 sol8 sol16 fad
  sol8 la16 fad sol mib fad mib32 re do16 re8 do16 do8 do'16 do
  do sisb la sol fad mib re do r8 re mib fa
  sol misb r8 sol8 sol16 la8 sol16 sib la sol fad
  mib fad mib re do8 do16 sisb do re8 misb16 fa8 misb
  re do si16. la32 sol8 la16 sol la sisb do8 mib8 |
  mib32 re do8. r16 la' la8 la16 la8 sol16 sol8. fa16 |
  fa8 sol la sol16 fa sol8 fa16 misb misb re fa sol |
  fa misb re8 r16 \tag #'mouhasbachant {r1 r} \tag #'mouhasba {la'16 la8 la16 la8 sol16 sol8. fa16
  fa8 sol la sol16 fa sol8 fa16 misb misb re fa sol
  fa misb re8 r16} re16 misb8 fa16 sol8 fa16 sol4 |
  la32 sol fa8~fa32 misb misb16. re32 re8 r16 la'8 sol16 sib la sol8 |
  sol16 fa misb re do sol' sol8 sol16 sol8 fa16 fa8. misb16 |
  misb re fa misb re8 do8 r do'8 do16 sisb la sol |
  fa misb re do r sol do sisb do re8 misb16 fa8 misb |
  re do sisb16. la32 sol8 la16 sol la sisb do8 misb16 misb |
  misb4~misb16 misb misb8 misb16 fa8 re16 do8 r16 sol'16 |
  sol16. fad32 sol16. fad32 sol16. fad32 sol8 r do do16 sisb la sol |
  fa misb re do r sol do sisb do re8 misb16 fa8 misb |
  re do si16. la32 sol8 la16 sol la sisb do8 mib |
  mib32 re do8. r16
}
basse = \new Staff \new Voice \relative do, {
  \clef bass
  \set midiInstrument = #"fretless bass"
  \voiceThree
  \set Staff.keySignature = #`((6 . ,FLAT)
                               (3 . ,SHARP)
                               (2 . ,FLAT))
  do,4. do'8 r16 mib8 r16 sol8. r16
  \repeat volta 2
  {
    sol8 sol4 sol8 sol8 la16 sol sib la sol fad
    mib fad mib re do8 do re16 mib8 re16 sol8 sol16 fad
    sol8 la16 fad sol mib fad mib re do re8 mib fad
    sol32 la sol la fad16 mib re do do8 re16 mib8 re16 sol8. fad16
  }
  sol fad sol8 r16 sol16 sol4 fa8 sol16 la sol la
  fa8 sol16 la sol la fa8 r16 sol8 fa16 la8 sol
  re mib32 fa mib fa re8 do'16 sisb do re8. sisb16 do sisb la
  sol fad mib re do8 do re16 mib8 re16 sol8 sol16 fa
}
\book
{
\score {
  \new Staff \with {midiInstrument = #"violin"} \keepWithTag #'mouhasba \chanson
  \layout { }
}
\score {
  \new StaffGroup
  <<
    \new Staff \iqaa
    \new Staff \with {midiInstrument = #"violin"} \keepWithTag #'mouhasba \chanson
    \new Staff \with {midiInstrument = #"choir aahs"} \keepWithTag #'mouhasbachant \chanson
  >>
  \layout { }
  \midi {
    \tempo 4 = 60
  }
}
}
