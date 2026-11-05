\include "common.ly"

%{
  All these leitmotifs are from
  Wagner's Ring: A Listener's Companion & Concordance
  by J.K. Holman

  Where they overlap the leitmotifs already listed, these should super-cede.

  Leitmotifs with a letter in parenthesis -- ex (A) -- should all be grouped
  under the same leitmotif heading.  They are all part of the same leitmotif.

  The book lists 145 different leitmotifs (not counting the sub-motifs).  This
  file will continue to be updated until I've added all of them.
%}

\header {
  title      = "Ring Leitmotifs"
  composer   = "Richard Wagner"
  instrument = ##f
}

\paper {
  print-page-number = ##f

  % a full staff (4 staff spaces) more room between systems; defaults are 12/8/1
  system-system-spacing.basic-distance = #16
  system-system-spacing.minimum-distance = #12
  system-system-spacing.padding = #5
}

\markup \vspace #1  % extra space after title

\score {
  \layout {
    ragged-right = ##t
    \context {
      \Staff
      \remove "Time_signature_engraver"
      % each staff keeps its own timing (see "Servitude")
      \consists "Timing_translator"
    }
    \context {
      \Score
      \omit BarNumber
      \remove "Timing_translator"
    }
  }

  \transpose c c {
    \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
    \set Staff.explicitClefVisibility = #end-of-line-invisible
    \set Staff.printKeyCancellation = ##f

    % RHEINGOLD

    {
      \sectionLabel "Beginning"
      \clef bass
      \key es \major
      \time 6/8
      <<
        {
          s2.
          s2.
          s2.
          s2.
          bes,2.
          ~bes,2.
          ~bes,2.
          ~bes,2.
          ~bes,2.
          ~bes,2.
          ~bes,2.
          ~bes,2.
        }
        \\
        {
          es,2.
          ~es,2.
          ~es,2.
          ~es,2.
          ~es,2.
          ~es,2.
          ~es,2.
          ~es,2.
          ~es,2.
          ~es,2.
          ~es,2.
          ~es,2.
        }
      >>
    }

    \break

    {
      \sectionLabel "Nature"
      \clef bass
      \key es \major
      \time 6/8
      es,4. (~es,4 bes,8 es4. ~es4 g8 bes4. ~bes4 es'8 g'2.)
    }

    \break

    {
      \sectionLabel "Rhine"
      \clef bass
      \key es \major
      \time 6/8
      <<
        {
          es4. ~es4 f8 g4. ~g4 aes8 bes 4. ~ bes4 es'8 g'2.
        }
        \\
        {
          g,8 (bes, g, bes, es bes, es es bes, es g f g g es g bes g bes es' bes g es bes,)
        }
      >>
    }

    \break

    {
      \sectionLabel "Rhine Daughters"
      \clef treble
      \key es \major
      \time 6/8
      f''4 (es''8) c''4 (bes'8)
      aes'8 (es' aes' bes'4 aes'8)
      c''8 (aes' c'' es''4 c''8)
      f''8 (es'' c'' aes''4 es''8)
      c''8. (aes'16 es'8 es''8. c''16 aes'8
      f''2.
      es''4. ~es''4) r8
    }

    \break

    {
      \sectionLabel "Warning"
      \clef treble
      \key es \major
      \time 6/8
      r4 g'8 c''4 es''8 d''4. ~d''4 r8
    }

    \break

    {
      \sectionLabel "Alberich"
      \clef bass
      \key g \major
      \time 2/4
      es32 (d des c b,16 [c]) es32 \sf (d des c b,16 [c])
    }

    \break

    {
      \sectionLabel "Woe"
      \clef bass
      \key es \major
      \time 6/8
      bes4 a8 r4 ges8 des'4 c'8
    }

    \break

    {
      \sectionLabel "Water Murmurs"
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \clef treble
      \key c \major
      \time 9/8
      <b' d''>8 (<g' e''> <b' d''>
      <g' e''> <b' d''> <g' e''>
      <b' d''> <g' e''> <b' d''>
      <g' e''> <b' d''> <g' e''>
      <b' d''> <g' e''> <b' d''>
      <g' e''> <b' d''> <g' e''>)
    }

    \break

    {
      \sectionLabel "Gold"
      \clef bass
      \key c \major
      \time 3/4
      \partial 4 { d8. d16 } g4. (d16) d16-. g8-. b-. d'2.
    }

    \break

    {
      \sectionLabel "Rhine Daughters' Joy in the Gold"
      \clef treble
      \key c \major
      \time 9/8
      g''8. \f e''16 f''8 g''4. e''4 r8 
      g''8. e''16 f''8 g''4. e''4 r8 
    }

    \break

    {
      \sectionLabel "Rhinegold"
      \clef treble
      \key c \major
      \time 9/8
      a''2. \ff g''4 r8
      a''2. g''4 r8
    }

    \break

    {
      \sectionLabel "The Ring"
      \clef treble
      \key c \major
      \time 9/8
      <<
        {
          <cis'' e''>4. (<a' cis''>4. ~<a' cis''>8 <fis' a'> <e' gis'>)
          \shape #'((0 . 0) (0 . 0) (3 . 0) (4 . 0)) Slur  % run the slur off the end
          <dis' fis'>8 (<e' gis'> <fis'a'> <gis' b'>4)
        }
        \\
        {
          e'4. cis'4. ~cis'4.
        }
      >>
    }

    \break

    {
      \sectionLabel "Renunciation of Love"
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \clef treble
      \key c \major
      \time 4/4
      r2 \once \omit Accidental g'4 g'8 g'
      es''4. d''8 c''4 r8 g'8
      aes'2 g'4 g'8 g'
      es''4. d''8 c''4 r8 aes'8
      bes'4
    }

    \break

    {
      \sectionLabel "Valhalla (A)"
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \clef treble
      \key des \major
      \time 3/4
      <des' f' aes'>4 (<aes des' f'>4. <f aes des'>8
      <ges bes>8. <f aes des'>16) <f aes des'>8 (<aes c' es'>8 <aes des' f'>4)
    }

    \break

    {
      \sectionLabel "Valhalla (B)"
      \clef treble
      \key des \major
      \time 3/4
      <<
        {
          aes'4 s4 aes'8-. [r16 \tuplet 3/2 { aes'32 aes' aes' }]
          aes'4 s4 <des'' des'>8-. [r16 \tuplet 3/2 { <des'' des'>32 <des'' des'> <des'' des'> }]
        }
        \\
        {
          <des' aes>8. (<es' c' aes>16 <es' c' aes>8 [<f' des' aes>-.])
          <f' des' aes>4-^
          <des' aes>8. (<es' c' aes>16 <es' c' aes>8 [<f' des' aes>-.])
          f'4-^
        }
      >>
    }

    \break

    {
      \sectionLabel "Valhalla (C)"
      \clef treble
      \key des \major
      \time 3/4
      \shape #'((-3 . 0) (-2 . 0) (0 . 0) (0 . 0)) Slur  % come in from the previous measure
      <bes' g' des'>8 ([<aes' es' c'>])
      <bes' g' des'> ([<aes' es' c'>])
      <bes' g' des'> ([<aes' es' c'>])
      <bes' g' des'> [<aes' es' c'>]
      <bes' g' des'> [<aes' es' c'>]
      <<
        {
          <bes' g' des'>8. (<c'' aes' c'>16)
        }
        \\
        {
          es'8. ~\tuplet 3/2 { es'32 es' es' }
        }
      >>
      <c'' aes' es' c'>2.
    }

    \break

    {
      \sectionLabel "Valhalla (D)"
      \clef treble
      \key des \major
      \time 3/4
      \partial 4 { f'8. (f''16) }
      <<
        {
          f''4 (es''4. c''8) <des'' aes' f' des'>8
        }
        \\
        {
          <c'' ges'>4. \p \tuplet 3/2 { aes16 aes aes } aes8. aes16
        }
      >>
    }

    \break

    {
      \sectionLabel "Love's Enchantment"
      \clef treble
      \key f \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 2 { e''4 \> (d''8. d''16 } d''4 \p e'8) r e''4 (d''8. d''16 c''4 f') a' g'8 f'
      fis'4 g'8 bes' d''4 c''8 bes' a'4 r
    }

    \break

    {
      \sectionLabel "Love (A)"
      \clef treble
      \key g \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          g'4 (a'8 ais' b' e'' fis'' g''
          \once \stemDown c'''4)
        }
        \\
        {
          <e' b>8 r
        }
      >>
    }

    \break

    {
      \sectionLabel "Love (B)"
      \clef treble
      \key g \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          c'''4 b''8. fis''16 (a''4 g''8.) dis''16 (fis''4 e''8.) b'16 (d''4 c''8.) g'16
          (<c'' e' fis'>8)
        }
        \\
        {
          s4 <e'' g''>8 r s4 <b' e''>8 r
          s4 <g' b'>8 r s4 <e' g'>8 r
        }
      >>
    }

    \break

    {
      \sectionLabel "Giants"
      \clef bass
      \key f \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \grace { g16 (a b } <c c'>8.) <c c'>16 <c c'>4
      \grace { g16 (a b } <c c'>8.) <c c'>16 <c c'>4
      \grace { g16 (a b } <c c'>8.) <c c'>16 <c c'>4
      \grace { g16 (a b } <c c'>8.) <c c'>16 <des des'>4
      <c c'>8 [<bes, bes> <aes, aes>8. <bes, bes>16]
      <c c'>8. g16 <c c'>4
    }

    \break

    {
      \sectionLabel "Power of the Gods"
      \clef bass
      \key aes \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      es4. (bes8) bes2
      es8. f16 ges2 aes8. bes16
      b2 b,4 r8 dis8
      e4. (c'8) c'4. r8
      f8. g16 aes2 bes8. c'16 des'2
    }

    \break

    {
      \sectionLabel "Treaty"
      \clef bass
      \key aes \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      es8. (g16 bes4 es' d'
      c'4 bes8. bes16 aes4 r8 g
      f4 g8 aes c'2
      ~c'4 bes) r d es2
    }

    \break

    {
      \sectionLabel "Love (Fasolt)"
      \clef bass
      \key d \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          fis,4 (g,8 gis, a, \< cis fis a
          d'2 \> cis'4.) \! fis8
          (b2. a8 g
          a2. g8 fis
          g2. fis8 e
          d4)
        }
        \\
        {
          s1
          d2 (cis <d fis>2 <cis e>2) ~<cis e>2
          <b, d>2 ~<b, d>
          a,4 (g, fis,)
        }
        \\
        {
          s1 s1 s1 s1 s2
          cis2
        }
      >>
      r4 r2
    }

    \break

    {
      \sectionLabel "Holda's Golden Apples"
      \clef bass
      \key d \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      fis4. \p e8 d4 a,8 r
      \tuplet 3/2 { fis,8. a,16 d8 }
      \acciaccatura { fis8 } \tuplet 3/2 { e8 d e }
      fis8. (a16) a8 r
    }

    \break

    {
      \sectionLabel "Withering of Life"
      \clef bass
      \key d \major
      \time 4/4
      bes4. (es8 d4. f8 bes4 bes8 es8 d4 d8) r8
    }

    \break

    {
      \sectionLabel "Froh"
      \clef treble
      \key d \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <a' d'' fis''>8. <a' cis'' e''>16 <a' d''>4 ~
      \tuplet 3/2 { <a' d''>8 <g' a'>-. <fis' a' d''>-. }
      \tuplet 3/2 { <g' a' e''>8-. <fis' a' d''>-. <g' a' e''>-. }
      <a' d'' fis''>8.-. <d'' fis'' b''>16 <d'' fis'' b''>4 ~<d'' fis'' b''>8
    }

    \break

    {
      \sectionLabel "Spear"
      \clef bass
      \key c \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 8*5 { \tuplet 3/2 { g,16 (c e } g8-.) <f f'>8 <e e'>8. <d d'>16 }
      <c c'>4 <b, b> <a, a> <g, g> <f, f> <e, e> <d, d> <c, c> <b,, b,> <a,, a,>
      <g,, g,> <f,, f,>
      \slurToNothing <e,, e,>1
    }

    \break

    {
      \sectionLabel "Loge (A)"
      \clef bass
      \key a \major
      \time 2/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 4 { r16 cis (d g }
      gis dis e a ais eis fis b
      c' g gis cis' d' a ais dis'
      e' b ais dis' e' b ais dis')
    }

    \break

    {
      \sectionLabel "Loge (B)"
      \clef treble
      \key a \major
      \time 2/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      gis''32 (a'' gis''32 a'' gis''32 a'' gis''32 a'')
      bes'' (a'' bes'' a'' bes'' a'' bes'' a'')
      gis''32 (a'' gis''32 a'' gis''32 a'' gis''32 a'')
      bes'' (a'' bes'' a'' bes'' a'' bes'' a'')
    }

    \break

    {
      \sectionLabel "Loge (C)"
      \clef treble
      \key a \major
      \time 2/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <fis'' cis'''>4. <g'' d'''>8 (<fis'' cis'''>4.) <fis'' dis'''>8 (<fis'' cis'''>8-.)
    }

    \break

    {
      \sectionLabel "Loge's Craft"
      \clef bass
      \key a \major
      \time 2/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      cis'4. cis'8 dis4 dis8. dis16 a4. a8 bis,2
    }

    \break

    {
      \sectionLabel "Woman's Worth"
      \clef treble
      \key d \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      f''2 e''4 d''2 c''8 bes' a'2.
    }

    \break

    {
      \sectionLabel "Nibelungs"
      \clef treble
      \key des \major
      \time 9/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      f'8. f'16 f'8 f' des' es' f'8. f'16 f'8
      f'8. f'16 f'8 f' des' es' f'8. f'16 f'8
    }

    \break

    {
      \sectionLabel "Tarnhelm"
      \clef treble
      \key des \major
      \time 2/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <ces' es'>2 ~(<ces' es'>4 <ces' fes'>4)
      <ces' es'>2 ~(<ces' es'>4 <ces' fes'>4)
      <ces' es'>2 ~(<ces' fes'>4. <ces' ges'>8)
      <ces' ges'>2 ~<ces' ges'> ~<ces' ges'>
    }

    \break

    {
      \sectionLabel "Servitude"
      <<
        {  % the staff the other sections use; a \new Staff here would leave it empty
          \clef bass
          \key des \major
          \time 3/4
          <ges ges'>2-> \ff \> \( \slashedGrace { \once \slurUp ges'8 ( } <f f'>4) \) \!
          <ges ges'>2-> \> \( \slashedGrace { \once \slurUp ges'8 ( } <f f'>4) \) \!
          <ges ges'>2-> \> \( \slashedGrace { \once \slurUp ges'8 ( } <f f'>4) \) \!
          <f f'>2-> \( \slashedGrace { \once \slurUp f'8 ( } <e e'>4) \) \!
        }
        \new Staff {
          % same settings as the staff above; without them a courtesy clef and
          % key signature leave an empty bar at the end of the Tarnhelm line
          \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \set Staff.explicitClefVisibility = #end-of-line-invisible
          \set Staff.printKeyCancellation = ##f
          \clef bass
          \key des \major
          % 9/8 with each bar as long as the 3/4 bars above: the measure is 3/4
          % long and the beat is 3 eighths, which are scaled to 2/3 of their length
          \time 3/4
          \scaleDurations 2/3 {
            f,8. f,16 f,8 f, des, es, \< f,8. f,16 f,8
            f,8. \> f,16 f,8 \! f, des, es, \< f,8. f,16 f,8
            f,8. \> f,16 f,8 \! f, des, es, \< f,8. f,16 f,8 \!
            f,8. f,16 f,8 f, des, es, e,8. \< e,16 e,8 \!
            \bar "|"
          }
        }
      >>
    }

    \break

    {
      \sectionLabel "Power of the Ring"
      \clef treble
      \key des \major
      \time 3/4
      <<
        {
          g'2 (ges'4) g'2 (ges'4)
        }
        \\
        {
          <bes des'>2. <bes des'>2.
        }
      >>
      \clef bass
      \once \slurUp <f des' f'>4. (<des bes des'>8 <es c' es'>4 <f des' f'>2 <g bes des' g'>4
      \once \slurUp
      \slurToNothing <a c' f' a'>2.) \ff
    }

    \break

    {
      \sectionLabel "Serpent"
      \clef bass
      \key a \major
      \time 4/4
      <dis,, dis,>4 \p \< (<e,, e,>4 <dis,, dis,>4 \> <fis,, fis,>8.) r16 \!
      <eis,, eis,>4 \< (<fis,, fis,>4 <eis,, eis,>4 \> <gis,, gis,>8.) r16 \!
      <fisis,, fisis,>4 \< (<gis,, gis,>4 <fisis,, fisis,>4 <b,, b,>8.) \> r16 \!
    }

    \break

    {
      \sectionLabel "Hoard"
      \clef bass
      \key des \major
      \time 3/4
      <<
        {
          bes2. (bes2) s4 bes2. (bes2)
        }
        \\
        {
          <bes, bes>2 \< (<c c'>4 \! <des des'>2) \p <bes, bes>4 \<
          <c c'>2 (<des des'>4 \! <es es'>2) \p
        }
      >>
    }

    \break

    {
      \sectionLabel "Hatred"
      <<
        {
          \clef bass
          \key d \major
          \time 12/8
          \partial 2. { r2. }
          r8 <eis a>4 \> ~<eis a>8 [<eis a> <eis a>] \! <eis a>8 <eis a>4 \p ~<eis a>8 r r
          r8 <eis a>4 ~<eis a>8 [<eis a> <eis a>] <eis a>8 <eis a>4 ~<eis a>8
        }
        \new Staff {
          \clef bass
          \key d \major
          % 4/4 scaled by 3/2 lasts as long as the 12/8 bars above, so the
          % measure is 12/8 long
          \time 12/8
          \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
          \set Staff.explicitClefVisibility = #end-of-line-invisible
          \set Staff.printKeyCancellation = ##f
          \scaleDurations 3/2 {
            \partial 2 { r4 r8
            \< g,32 (a, b, bis, } cis2.) \! r8
            \< g,32 (a, b, bis,   cis2.) \! r8
          }
        }
      >>
    }

    \break

    {
      \sectionLabel "Curse"
      \clef bass
      \key d \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r2 r4 fis8 fis a2 \< a4 a8. a16 c'2. \! r8 c' e'2 \ff e4 e8 c8 g2 r2
    }

    \break

    {
      \sectionLabel "Erda"
      \clef bass
      \key e \major
      \time 4/4
      <e, cis>4. (<gis, dis>8 <cis e>4. <dis fis>8 <e gis>4. <gis cis'>8 <cis' e'>4.)
    }

    \break

    {
      \sectionLabel "Downfall"
      \clef treble
      \key e \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          <fis'' a''>4. (<e'' gis''>8 <d'' fis''>4. <a' e''>8 <fis' d''>4. <e' a'>8 <d' fis'>4.)
        }
        \\
        {
          <a' d''>2 ~a'4.
        }
      >>
    }

    \break

    {
      \sectionLabel "Donner's Call"
      \clef bass
      \key bes \major
      \time 4/4
      \partial 16 f16 bes2. r8. f16 d'8. f16 bes2
    }

    \break

    {
      \sectionLabel "Rainbow Bridge"
      \clef bass
      \key des \major
      \time 3/4
      \slashedGrace ges,,8 (ges,4) (bes,4. des8 ges8. bes16 des'4 bes4 ges4
      des4 bes,8 ces8 des4 bes,4 ges,8 aes,8)
      <<
        { \slurToNothing bes,4 } \\ { ges,8 }
      >>
    }

    \break

    {
      \sectionLabel "Sword"
      \clef treble
      \key des \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 8 { g'8 }
      <<
        {
          c''2 c'4.. e'16 g'4. c''8 \stemDown e''2
        }
        \\
        { <c' e'>2 }
      >>
    }

    \break

    {
      \sectionLabel "Rhine Daughters' Lament"
      \newSpacingSection
      \override Score.SpacingSpanner.shortest-duration-space = #1.3  % squeeze onto one line
      \clef treble
      \key des \major
      \time 9/8
      f''2. es''4 r8
      f''2. es''4 r8
      f''4. (aes''4. ~aes''8 g''8 f''8)
      es''4. ~es''4 r8 c''4.
      (es''8. des''16 c''8 es''2.)
      es''8. (des''16 c''8 f''8 es''4 ~es''4 c''8 bes'2.)
    }

    % 42 - Rheingold Conclusion, has no music

    \break

    % THE VALKYRIE

    {
      \sectionLabel "Storm"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo the previous squeeze
      \clef bass
      \key f \major
      \time 6/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      % notes here
    }

    \break

    {
      \sectionLabel "Storm"
      \newSpacingSection
      \override Score.SpacingSpanner.shortest-duration-space = #0.9  % squeeze onto one line
      \override Score.SpacingSpanner.spacing-increment = #0.8
      \clef bass
      \key f \major
      \time 6/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      d,16 \f (e, f, g, bes,4) a,4-. \p g,-. f,-. \< e,-.
      d,4-. e,-. f,-. g,-. a,-. f,-.
      d,16 \f (e, f, g, bes,4) a,4-. \p g,-. f,-. \< e,-.
      d,4-. e,-. f,-. g,-. a,-. f,-. \!
    }

    \break

    {
      \sectionLabel "Siegmund"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key f \major
      \time 6/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          b,1 ~b,4 a, \< (gis,) f, \> (e,4. d,8) \! d,4 (e, f,1.)
        }
        \\
        {
          b,,1. \fp ~b,,4
        }
      >>
    }

    \break

    {
      \sectionLabel "Sieglinde"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \clef treble
      \key f \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r8 <g bes>8 \< ([<bes e'> <e' g'>] <g' bes'>8. \p <f' a'>16
      <e' g'>8) r16 g32 g g2
      ~g8 <bes d'> \< ~([<g' d'> <g' bes'>] \! <bes' d''>8. \p ^\markup { \italic "rit." }
      <a' c''>16 <g' bes'>2.)
    }

    \break

    {
      \sectionLabel "Dawning Love"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \clef treble
      \key f \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          \stemDown bes'2. ~(\stemUp bes'4 a'4. es'8 g'2.)
          ~g'4 (f'4. c'8 es'4. e'8 [f'8. c'16]
          es'4 d'8) [es' (e'8. bes16])
        }
        \\
        {
          s2. <c' es'>2. \p <bes d'> <a c'> <g bes>2 \> <a c'>4
          bes2 \! _\markup { \italic "piu" \dynamic "p" } <gis b>4
        }
      >>
    }

    \break

    {
      \sectionLabel "Volsung' Woe"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \clef bass
      \key f \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      d2 (cis8. d16 bes2 g4) <e, e>2. ~<e, e>8 r8 r4
    }

    \break

    {
      \sectionLabel "Hunding"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \clef bass
      \key es \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <f aes c'>4 <f aes c'> r8. <f c'>32 <f c'>
      \tuplet 3/2 { <f c'>8 <f aes> <aes c' f'> } <g b d'>8. <g b d'>16 <g b d'>4
    }

    \break

    {
      \sectionLabel "Rights"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key es \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      c'4. (c'8 aes4 f d2.) r4 g4. (f8 es4 d8. d16 c2.) r4
    }

    \break

    {
      \sectionLabel "Bride's Lament"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 12/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 8*11 {
      }
      <<
        {
          <f' es''>8 (<aes' d''> <d' c''> <f' b'> <d' bes'> s4. g'4) r8
          r8 <f' es''> (<aes' d''> <d' c''> <f' b'> <f' bes'> <d' aes'>4. g'4) r8
        }
        \\
        {
          s4 s4. \once \stemUp <b aes'>4. ~b8 (d' c')
          s2. s4. es'8 (d' b)
        }
      >>
    }

    \break

    {
      \sectionLabel "Volsung Race"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key es \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <es g c'>2 <d g>8. <d g>16
      <es g c'>8. <g d'>16 
      <<
        {
          \stemDown <c' es'>4. (<g d'>8 \stemUp
          \clef treble
          <es' g'>4 ~ \tuplet 3/2 { <es' g'>8 \< <d' fis'> <es' g'> } <g' bes'>8.  <e' c''>16 \!
          <g' bes'>2 \> <f' aes'>4 \!)
        }
        \\
        { s2 s2. c'2.  }
      >>
    }

    \break

    {
      \sectionLabel "Crisis"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 2 {
        <<
          {
            a''8 ([bes'' b''8. c'''16]) c'''4 (e''8)
          }
          \\
          {
            a'2 bes'4.
          }
        >>
      }
      r8 r2
    }

    \break

    {
      \sectionLabel "Purpose of the Sword"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r2 r4 c''4 f''4.. f'16 f'4 aes'8 f' c''2 e'8 r8 r8 e''8 e''4 a'8 b' c''4.  a'8 fis'2 r2
    }

    \break

    {
      \sectionLabel "Volse"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      gis''2
      \fermata  % TODO: move fermata right so it's between these two notes
      gis'4 r
      g''2
      \fermata  % TODO: move fermata right so it's between these two notes
      g'4 r
    }

    \break

    {
      \sectionLabel "The Sword's Chosen"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 8 <c' e' g'>16 <c' e' g'>
      <c' e' g'>4. <e' g' c''>16 <e' g' c''> <e' g' c''>4. <g' b' d''>16 <g' b' d''>
      <g' b' d''>8 (<c'' e''> <e'' g''>4.) <d'' fis''>8 [<c'' e''> <gis' d''>]
      <g'! cis''>8
    }

    \break

    {
      \sectionLabel "Spring Song"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 9/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      bes'4 (f'8 f'4 bes'8 d'' c'' d'' es''4 d''8 c''4. ~c''8)
    }

    \break

    {
      \sectionLabel "Love (Sieglinde)"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      es''4 d''4. aes'8 c''2
    }

    \break

    {
      \sectionLabel "Bliss (A)"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key des \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r8 f'8 d''4. (es''8)
      r8 f'8 d''4. (es''8)
    }

    \break

    {
      \sectionLabel "Bliss (B)"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key des \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r8. f'16 d''4. es''16 es'' ges'4 f'8
    }

    \break

    {
      \sectionLabel "Love's Deepest Distress"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      g'2 (g'4. g'8 es''2. d''4 c''2 g' aes'1->)
    }

    \break

    {
      \sectionLabel "Notung"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      e''1 e'2 r e''1 e'2
    }

    \break

    {
      \sectionLabel "Valkyries"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key c \major
      \time 9/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 4 r8 <g, g>8
      <c e g c'>8.-> g16 c'8 <e e'>4. <c c'>
      <e g c' e'>8.-> c'16 e'8 <g g'>4. <e e'>
    }

    \break

    {
      \sectionLabel "Hojotoho!"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key d \major
      \time 9/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      g''8 \f (dis''8.) g'16 b'4. ~b'4 r8
      g''8 (dis''8.) g'16 b'4. ~b'8 r b'16 b'
      e''2. ~e''8 r e''16 e'' g''2. ~g''8 r r
    }

    \break

    {
      \sectionLabel "Fricka"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r8. <es' aes' c'' es''>16 <es' aes' c'' es''>4.
      <<
        { aes'4 bes'8 c''2 f'4. g'8 a'2 f'4. d'8 g'2 }
        \\
        { <c'es' aes'>4. ~<c' es' aes'>2 <aes c'> ~<aes c'> aes (<g d'>) }
      >>
      r2
    }

    \break

    {
      \sectionLabel "Withered Love"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key b \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      dis''2 ~(dis''8 cisis'' cis'' ais' cis''4 b'8 fisis'8 ais'4 gis'8 dis'8 e'2)
    }

    \break

    {
      \sectionLabel "Frustration"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key c \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 2 \grace { e16 (f g } f2) \sf
      (e4. \> d8 c 4. e16 d c2 b,4. \p c8 d2)
    }

    \break

    {
      \sectionLabel "Struggling Against Fate"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key c \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      g,8. ([a,16 bes,8. c16] d8. [g16 bes8. a16]
      g8. [d16 bes,8. c16] d8. g,16) \grace { d16 (f } es4) \>
      (d8. \! \> [c16 bes,8. d32 c] bes,4 a,8. g,16) \!
    }

    \break

    {
      \sectionLabel "Rage"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <dis'' gis'' b'' dis'''>4-. <b' dis'' gis'' b''>8-. r16
      <eis' gis' dis''>16-. <eis' gis' dis''>4-. <eis' gis' b'>4-.
      <dis'' gis'' b'' dis'''>4-. <b' dis'' gis'' b''>8-. r16
      <eis' gis' dis''>16-. <eis' gis' dis''>4-. <eis' gis' b'>4-.
    }

    \break

    {
      \sectionLabel "Hunding's Pursuit"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key aes \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      bes4. \p (a8 aes4. g8 fis4. g8 es4. c8)
    }

    \break

    {
      \sectionLabel "Fate"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key a \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        { a2. (gis4 <eis gis b>1) ~ \once \stemDown <eis gis b>4 }
        \\
        { eis1 }
      >>
    }

    \break

    {
      \sectionLabel "Annunciation of Death"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key a \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          s2 (fis'4. gis'8 a'2. gis'4 b'2. ais'4 cis''1) \fermata
        }
        \\
        {
          \once \stemUp cis'2 ~cis'4 bis
        }
        \\
        {
          \stemDown \slurDown a1 (<a cis'>2) <b d'> <d' fis'> <b eis'> <ais e'!>1
        }
      >>
    }

    \break

    {
      \sectionLabel "Brünnhilde's Defiance"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key a \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \tuplet 3/2 { a'8 cis'' fis'' }
      <a' a''>8. <gis' gis''>16
      <b' b''>8. <a' a''>16
      <cis'' cis'''>8. <b' b''>16
      <d'' d'''>8. <cis'' cis'''>16
      <e'' e'''>8. <dis'' dis'''>16
      <fis'' fis'''>8. <eis'' eis'''>16
      <gis'' gis'''>8. <fis'' fis'''>16
      \tuplet 3/2 { <a'' a'''>8 (d''') e'''-. }
      \tuplet 3/2 { fis'''8-. gis'''-. a'''-. }
      a'''4. (\slurToNothing <d'' gis'' b''>8)
    }

    \break

    {
      \sectionLabel "The Heroic Siegfried"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 6/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 4. g'4. c''4. ~c''4 c''8 es''4. d''4 c''8
      aes''2. c''4. bes'4 aes'8
      es''4. ~es''4 es''8
      f''4. ~f''8 c'' d''
      es''2.
    }

    \break

    {
      \sectionLabel "Redemption"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 6/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r4 r8 d''4. g''4. ~(g''8 fis'' g'' a''4. g''4) fis''8 g''2. a'4
    }

    \break

    {
      \sectionLabel "Brünnhilde's Reproach"
      \newSpacingSection
      \override Score.SpacingSpanner.shortest-duration-space = #1.7  % squeeze onto one line
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      c'2 (b8. a16 g'2 fis'4 e'2 d'8. c'16 a'4. g'8 fis'8. e'16 d''2 c''8.
      c''16 b'4. a'8 g'8. fis'16 fis''2.)
    }

    \break

    {
      \sectionLabel "Brünnhilde's Love for Wotan"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key e \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          % TODO: half-notes are rolled
          e''4. dis''8 \< [cis''8. b'16]
          <a' a''>2 \> <gis' gis''>4
          <fis' fis''>4. \< <e' e''>8 [dis''8. \! cis''16]
          <cis'' cis'''>2 \> <>\!
        }
        \\
        {
          <gis' b'>2 s4
          <b' e''>2.
          <a' cis''>2 s4
          <dis'' fis''>2.
        }
        \\
        { \once \stemDown e'4 }
      >>
    }

    \break

    {
      \sectionLabel "Sleep"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key d \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          <e' g' c''>2 (<dis' fis' b'> bes'2. a'4 <b e' gis'>2 <bes es' g'> ges'2.  f'4
          <c' e'>2.)  % TODO: this should be rolled
        }
        \\
        {
          s1 <d'! f'>2 <c' fis'> s1 <a es'>2 <aes d'> g4
        }
      >>
    }

    \break

    {
      \sectionLabel "Brünnhilde in Sleep"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r4 aes'4 g' \< es'8. d'16 c'4 \!
    }

    \break

    {
      \sectionLabel "Wotan's Love for Brünnhilde"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key g \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 8 fis8 (b4. bis8 cis'2 cis'4. b16 ais b4.)
      b16 (b c'4. b8 b4 a8. r16 b4. fis8 gis2)
    }

    \break

    % SIEGFRIED

    {
      \sectionLabel "Brooding"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key des \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      r2. r r <ges bes>2. \p (<a, c>2. ~<a, c>4) r r
    }

    \break

    {
      \sectionLabel "Siegfried's Horn Call"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 6/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      g8-. \p d'8.-^ b16-. g8-. a-. b-. c'-. b-. a-. d'-. c'-. b-. e'-. d'-.
      c'-. fis'-. e'-. d'-.
    }

    \break

    {
      \sectionLabel "Youthful Energy"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 2/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \slashedGrace { \once \slurUp fis''8 ( } <g' bes' g''>-.) \sfz
      [d''8-. es''-. bes'-.]
      \slashedGrace { \once \slurUp fis''8 ( } <g' bes' g''>-.) \sfz
      [d''8-. es''-. bes'-.]
      \slashedGrace { \once \slurUp fis''8 ( } <g' bes' g''>-.) \sfz
      [d''8-. es''-. bes'-.]
      \slashedGrace { \once \slurUp fis''8 ( } <g' bes' g''>-.) \sfz
      [d''8-. es''-. bes'-.]
    }

    \break

    {
      \sectionLabel "Mime's Mission"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key aes \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \slashedGrace { des''8 ( } c''4) bes' aes' g'2 r4
      \slashedGrace { c''8 ( } bes'4) aes' g' f'2 r4
    }

    \break

    {
      \sectionLabel "Yearning for Knowledge"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          \clef treble
          \key f \major
          \time 2/4
          e''2 d''4 (c''8) b' a' gis' e''4 d'' c''8 b'
        }
        \new Staff {
          \clef treble
          \key f \major
          \time 2/4
          b'8 [(a') e'' (b'] d'' [a' c'' b'] a' [gis') e'' (b'] d'' [a' c'' b'])
        }
      >>
    }

    \break

    {
      \sectionLabel "Yearning for Love"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key f \major
      \time 6/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          g4. ~g4 gis8 a4. ~a4 b8 c'4 cis'8 e'4 d'8 c'!4. b4.
        }
        \\
        {
          e2. \p \< ~e4. f4. ~f4 e8 a4. \> f2. <>\!
        }
      >>
    }

    \break

    {
      \sectionLabel "Joy of Freedom"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \clef treble
      \key bes \major
      \time 2/4
      r2 r4 bes'8 c''8
      \time 3/4
      d''4 c'' c''8 d'' es''4 d'' ~d''8 r
      f''8 es'' d''4 c''8 bes' f''4 r
    }

    \break

    {
      \sectionLabel "Mission"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          g''4 f''8-. es''-. d''4
          f''4 es''8-. d''-. c''4
        }
        \\
        {
          es''8 [(b' c'' fis' g' a')] bes'! [(f' g' gis'] a'-.) g'-.
        }
      >>
    }

    \break

    {
      \sectionLabel "Mime's Frustration"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key des \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      des''2 ces''8 ces'' beses'2 r4 es''2 des''4 ces''2 r4
      f''4. f''8 es''4 ^\markup { \italic "rall." } des''2 c''8 bes'
    }

    \break

    {
      \sectionLabel "Wanderer"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 4/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <b fis' b'>2-. (<a d' a'>-. <bes f'! bes'>-. <b e' gis'>-.)
      <a e' a'>-. (<g c' g'>-. <aes es' aes'>-. <a d' fis'>-.)
    }

    \break

    {
      \sectionLabel "World Ash Tree"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key des \major
      \time 3/4
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        { f'2 ~f'8 r } % TODO: put this 8th rest center of staff
        \\
        { f4. (g8 a bes \stemUp <a c'>8. <c' f'>16 <f' a'>2) }
        \\
        { s2 \once \stemDown \once \omit Accidental g4 }
      >>
    }

    \break

    {
      \sectionLabel "Blow, Bellows!"
      \newSpacingSection
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key f \major
      \time 6/8
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \partial 4 { a,8 r }
      <a, a>4. <bes, bes>8 <a, a> <g, g>
      <f, f>4. <a, a>8 <g, g> <f, f>
      <e, e>4. <g, g>8 <f, f> <e, e>
      <d, d>4.
    }

    \break

    {
      \sectionLabel "Hammering"
      \newSpacingSection
      \override Score.SpacingSpanner.shortest-duration-space = #0.5  % squeeze onto one line
      \revert Score.SpacingSpanner.spacing-increment
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      <<
        {
          \clef treble
          \key f \major
          \time 4/4
          \stemDown f'4-^ r r2 f'4-^ r r2 f'4-^ r r2
        }
        \new Staff {
          \clef treble
          \key f \major
          \time 4/4
          <a a'>8 \tuplet 3/2 { c'16 [d' e'] } f'8 d' f' [des' g' c']
          <b f' a'>8-. bes32 ([c' d' e'] f'8-.) d'-. f'-. des'-. g'-. c'-.
          <b f' a'>8-. bes32 ([c' d' e'] f'8-.) d'-. f'-. des'-. g'-. c'-.
        }
      >>
    }

    \break

    {
      \sectionLabel "Fafner as Dragon"
      \newSpacingSection
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \override Score.SpacingSpanner.shortest-duration-space = #0.5  % squeeze onto one line
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key aes \major
      \time 3/4
      \stemUp d,2 es,4 d,2.
      <<
        { es,4 (d, f, e,2.) ~e,8 }
        \\
        {
          s2 r8. ges,,64 \pp aes,, bes,, c, ~c,8 [r16 c,16] c,8 r ges,, r c,
        }
      >>
      r8 r4
    }

    \break

    {
      \sectionLabel "Mission (Mutation)"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      <<
        {
          \clef bass
          \key f \major
          \time 4/4
          \partial 4 r8 d
          bes4 a8 g f4 r8 f8
          c'4 c c r
        }
        \new Staff {
          \clef treble
          \key f \major
          \time 4/4
          \partial 4 r4
          <bes d' bes'>4 r <d' f'> r
          <c' a' c''>4 <g' bes'>8-. <f' a'>-. <c' e' g'>4 r
        }
      >>
    }

    \break

    {
      \sectionLabel "Forest Murmurs"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key f \major
      \time 4/4
      d8 e d e d e d e
      f8 g f g f g f g
      \clef treble
      a8 bes a bes a bes a bes
    }

    \break

    {
      \sectionLabel "Wood Bird (A)"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key e \major
      \time 9/8
      \partial 8*5 r8 cis'''8-> ~cis'''4.
      \time 4/4
      \omit TupletNumber
      \tuplet 3/2 { b''8-. gis''8.-. \< e''16-. }
      \tuplet 3/2 { cis''8-. a'-. cis''-. }
      \tuplet 3/2 { gis''-. e''-. gis''-. }
      b''4 \f
      \undo \omit TupletNumber
    }

    \break

    {
      \sectionLabel "Wood Bird (B)"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key e \major
      \time 1/4
      b'8-. \p \< e''16-. gis''-. \!
      \time 9/8
      <<
        {
          fis''8.\arpeggio (e''16 fis'' e'' \repeat tremolo 6 { fis''16 e'' }
          \time 3/4
          \stemDown <b' e'' gis''>8\arpeggio) e''4 \p \< (e'' e''8) \> <>\!
        }
        \\
        {
          <a' cis''>2.\arpeggio \fp
        }
      >>
    }

    \break

    {
      \sectionLabel "False Flattery"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key d \major
      \time 3/4
      r4 \grace { gis16 (a b } a4.->) g8-.
      fis8.-. g16-. a4. d'8-.
      a8.-. b16-. a4-. b8-. cis'-.
      r4 \grace { dis'16 (e' fis' } \slurToNothing e'2) \sf \> <>\!
    }

    \break

    {
      \sectionLabel "Siegfried's Horn Call (Mutation)"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key c \major
      \time 3/4
      \omit TupletNumber
      r4 \tuplet 3/2 { cis8-. a8.-. f16-. }
      \clef treble
      <<
        {
          \omit TupletNumber
          \tuplet 3/2 { bes8-. ges'8.-. d'16-. }
          a8. (cis'16 f'8)
        }
        \\
        { bes4 a4 ~a8 }
      >>
      r8 r4
      \undo \omit TupletNumber
    }

    \break

    {
      \sectionLabel "Yearning for Love/Mission"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 3/4
      <<
        {
          d'4. (e'8 [f' fis']
          g' gis' a'4. g'8
          f' e') a'4. (g'8
          f' [e']) a'8 (g' f' e'
          a'8 [g'] f' [e'])
        }
        \\
        {
          \stemDown
          g2. s4 bes2 s4 bes2
        }
        \\
        {
          \stemDown
          s2 \slurDown d'4 (d'4) e' cis' <g cis'> e' cis'
          <g cis'>4 <bes e'> cis' <bes e'> cis'
        }
        \\
        {
          % these notes are here only to get the tie to render
          \hideNotes
          s2. s s s2 s8
          e'8 ~e'4
          \unHideNotes
        }
      >>
    }

    % 99 - Act 3 Prelude, has no music

    \break

    {
      \sectionLabel "Wala! Awake!"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key es \major
      \time 4/4
      f'4 es'2 r8 bes des'2 ~des'8 r r4
    }

    \break

    {
      \sectionLabel "World's Inheritance"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 4/4
      <c''es'' aes'' c'''>2-^ <es' es''>2 ~<es' es''>4 (<c' c''>8)
      <des' des''>8-. <es' aes' es''>4^^ <f' a' c'' f''>4-^
      <g' bes' des'' g''>4.-^ <aes' aes''>8 <bes' bes''>2 ~<bes' bes''>16
    }

    \break

    {
      \sectionLabel "Ravens"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key bes \major
      \time 4/4
      r4 r8. <bes, bes>16 (<a, a>4.) r16 <bes bes'>16 (<a a'>4) r8.
      \clef treble
      <bes' bes''>16 \fp (<a' a''>4.) r8
    }

    \break

    {
      \sectionLabel "Resistance"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key es \major
      \time 4/4
      \partial 8*5 r8 es'4 es'8. es'16 es'4 fes4 d'4 des'8. des'16 c'4 e8
    }

    \break

    {
      \sectionLabel "Awakening"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \override Score.SpacingSpanner.shortest-duration-space = #1.5  % squeeze onto one line
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 3/4
      <e'' g'' b''>2. \f \>
      <c'' e'' g'' c'''>4. \pp \<
      \clef bass \tuplet 3/2 { c16 [e g] }
      \clef treble \tuplet 3/2 { c'16 [e' g'] } \tuplet 3/2 { c''16 [e'' g''] }
      \tuplet 3/2 { c'''16 \f r e } \tuplet 3/2 { g16 [c' e'] }
      \tuplet 3/2 { g' [c'' c'] } \tuplet 3/2 { e' _\markup { \italic "dim." } [g' c''] }
      \tuplet 3/2 { e'' \> [g'' g'] } c''32 e'' g'' c'''
      <e'' g'' c''' e'''>16\arpeggio \p
    }

    \break

    {
      \sectionLabel "Love's Greeting"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 3/4
      r4 r4 d'' g''8. b'16 fis''4. e''8 \tuplet 3/2 { d''8-> c''-> b'-> } a'2
    }

    \break

    {
      \sectionLabel "Love's Ecstasy"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 3/4
      <e'' c''' e'''>8. <f''' a'''>32 (<e''' g'''>
      g''8.) <f'' d'''>32 (<g'' e'''>)
      <<
        {
          d'''8. \trill s16 s2 d'''4 \trill
        }
        \\
        {
          f''8 r16 b'16
          <e'' g'' c''' e'''>8. \once \slurUp <f''' a'''>32 (<e''' g'''>)
          g''8. \once \slurUp <f'' d'''>32 (<g'' e'''>)
          f''4 \grace { c'''16 (d''' } <e'' g'' c''' e'''>8.)
        }
      >>
    }

    \break

    {
      \sectionLabel "Immortal Beloved"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key e \major
      \time 4/4
      b'2 ~(b'8 e' \tuplet 3/2 { fis'8 gis' a' } b'2.)
      <<
        { b4 (b'2 ~b'8 e' \tuplet 3/2 { fis'8 gis' a' } cis''4 b'2) }
        \\
        { s4 s2. s2 gis'4 }
      >>
    }

    \break

    {
      \sectionLabel "World's Treasure"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 4/4
      b'2 (c''4) es'' aes''4. (es''8 c''4) aes' es''2 (des''4.) c''8 bes'4
    }

    \break

    {
      \sectionLabel "Laughing at Death"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 4/4
      r4 a' e' g' d' f' c' e' a d'8 e' f'4 e'
      <<
        { d'4 e'8 f' \slurToNothing g'2 }
        \\
        { b4 s d' }
      >>
    }

    \break

    % TWILIGHT OF THE GODS

    % 110 - Prelude, has no music

    {
      \sectionLabel "Rope of Fate"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key ges \major
      \time 6/4
      <<
        {
          % TODO: put all rests in the center of the staff
          r2. r8 <es' ces''> (<d' aes'> f' <aes d'> f'
          <d' aes'>4) r r r8 <aes' es''> (<es' ces''> <d'! aes'> f' <d' aes'>
          \once \stemDown f'2.)
        }
        \\
        { s1. ces'2. s2. \once \stemUp ces''4 }
      >>
    }

    \break

    {
      \sectionLabel "Siegfried (Definitive)"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 4/4
      <es'' g'' bes'' es'''>4 \ff
      <es' g' bes'>2^^ ~<es' g' bes'>8 <bes es' g'>-.
      <g bes es'>2 <f bes d' f'>4-. <g bes es' g'>4-.
      <aes c' es' aes'>8-. <bes es' g'>-.
      <f c' es' f'>2
      <aes' bes' d'' f'' aes'' bes''>4^^ \ff
    }

    \break

    {
      \sectionLabel "The Woman Brünnhilde"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 4/4
      <<
        {
          aes'4. (g'32 aes' bes' aes' f''4. c''8 es''4 \slurToNothing f'2)
        }
        \\
        {
          d'2. es'4 f'8 r
        }
      >>
    }

    \break

    {
      \sectionLabel "Giving in Love"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 4/4
      <<
        {
          \tuplet 3/2 { es''8 (fis'') g''-. } s2.
          <aes' c''>4 (\once \stemDown <c'' es'' aes''>2
          <c'' f''>8. d''16) \slurToNothing es''4
        }
        \\
        {
          \tuplet 3/2 { g'8 c'' bes' }
          \once \slurUp <es'' g'' c'''>4. (<es'' bes''>8
          \tuplet 3/2 { <bes' g''>8 <g' es''>) <bes' d''>8^. }
          s2. aes'4 \tuplet 3/2 { es'8 fis' g' }
        }
      >>
    }

    \break

    {
      \sectionLabel "Mission (Definitive)"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 4/4
      r4 g''4 f''8 es'' d''4 f''4 es''8 d'' c''2
    }

    \break

    {
      \sectionLabel "Radiant Star, Victorious Light"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 4/4
      <<
        {
          aes''2 (c''8 d'' es'' f'')
          g''2 ~( \tuplet 3/2 { g''8 c'' d'' } \tuplet 3/2 { es'' g'' f'') }
          f''2 ~( \tuplet 3/2 { f''8 bes' c'' } \tuplet 3/2 { d'' f'' e'') }
          \slurToNothing <es'! bes' es''!>2
        }
        \\
        {
          <c'' es''>2 aes' g' aes'
          f'2 ~f'4. e'8
        }
      >>
    }

    \break

    {
      \sectionLabel "Treachery"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 3/4
      <d' fis'>4. (<b d'>8 <cis' e'>4 <d' fis'>2.)
      <d' fis'>4. (<b d'>8 <cis' e'>4 <d' fis'>2)
    }

    \break

    {
      \sectionLabel "Hagen"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key d \major
      \time 3/4
      b4 e r
    }

    \break

    {
      \sectionLabel "Gunther"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \override Score.SpacingSpanner.shortest-duration-space = #1.5  % squeeze onto one line
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key d \major
      \time 3/4
      <d fis b>8. [cis'16 d'8. cis'16 d'8. <cis' e'>16]
      \clef treble
      <d' fis'>8. <d' a'>16
      <<
        { d''8 (cis'') b'8. ais'16 }
        \\
        { fis'4 <cis' e'> }
      >>
      <d' b'>8 r16 <fis cis'>16-. [<b d'>8. <cis' e'>16-. <d' fis'>8. <e' g'>16-.]
      <fis' a'>8. <a' d''>16 <d'' fis''>8 ([<a' e''>]) <g' b'>8.-. [<e' cis''>16-.]
      <fis' a' d''>4.
    }

    \break

    {
      \sectionLabel "Gutrune"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \override Score.SpacingSpanner.shortest-duration-space = #1.5  % squeeze onto one line
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 3/4
      bes'8. ges'16 des'2 ~des'8 r es' f' ges' aes' bes'8. ces''16 des''4 des''
      des'' (ges''8 f'') es'' des'' ces''2 bes'8. bes'16 es''4 r
    }

    \break

    {
      \sectionLabel "Potion"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 3/4
      <<
        { <b dis'>2. ~(<b dis'>4 e' fis' g'2) g'4 ~g'8 b'4.  }
        \\
        { s2. s4 b2 c'2. (cis'4)
        }
      >>
    }

    \break

    {
      \sectionLabel "Plotting"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key es \major
      \time 3/4
      r8 es'' fis'4. g'8
    }

    \break

    {
      \sectionLabel "Rowing"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \override Score.SpacingSpanner.shortest-duration-space = #0.2  % squeeze onto one line
      \revert Score.SpacingSpanner.spacing-increment
      <<
        {
          \clef bass
          \key f \major
          \time 9/8
          <<
            {
              \once \stemDown <e g bes d'>2. \p \> (\once \stemDown <f a c'>4. \p ~
              c'8 bes a bes4. a4 g8)
              \once \stemDown <e g bes d'>2. \> (\once \stemDown <f a c'>4. \p ~
              c'8 bes a bes4. a4 g8)
            }
            \\
            { s2. s4. f4. e d s2. s4. f4. e d }
          >>
        }
        \new Staff {
          \clef bass
          \key f \major
          \time 9/8
          <<
            {
              f,8 d8. bes,16 g,8-. a,-. bes,-. c4.  d4. ~d4 (c8 b,4.)
              f,8 d8. bes,16 g,8-. a,-. bes,-. c4.  d4. ~d4 (c8 b,4.)
            }
            \\
            {
              f,2. \sfz ~f,8 [ \once \slurUp f,16 (\set stemRightBeamCount = 1 g,
              \tuplet 3/2 { \set stemLeftBeamCount = 1 a,16 bes, c ]) } f,2. s4.
              f,2. \sfz ~f,8 [ \once \slurUp f,16 (\set stemRightBeamCount = 1 g,
              \tuplet 3/2 { \set stemLeftBeamCount = 1 a,16 bes, c ]) } f,2. s4.
            }
          >>
        }
      >>
    }

    \break

    {
      \sectionLabel "Friendship"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \override Score.SpacingSpanner.shortest-duration-space = #0.7  % squeeze onto one line
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 4/4
      <<
        {
          f'4 bes2 ~(\tuplet 3/2 { bes8 d') c'-. }
          g'4-. c'2.
          \clef bass
          f'4 bes2.
        }
        \\
        {
          s2 g2
          bes4 ~(\tuplet 3/2 { bes8 g a) } a8 (g32 a bes a \tuplet 3/2 { c'8 bes a) }
          \clef bass
          a4 ~(\tuplet 3/2 { a8 fis g) }
          \once \slurUp g8 (fis32 g a g \tuplet 3/2 { bes8 a g) }
        }
      >>
    }

    \break

    {
      \sectionLabel "Gutrune's Deception"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key g \major
      \time 3/4
      <b'' d'''>4 <e'' g''>4. <fis'' a''>8 <g'' b''>4 <c'' e''>4. <d'' fis''>8
    }

    \break

    {
      \sectionLabel "Mission (as Blood-Brotherhood)"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 4/4
      r1 es''1 d''4. c''8 bes'2 c''1 f'4 r f'2
      \key d \major
      fis'!1
    }

    \break

    {
      \sectionLabel "Blood-Brotherhood"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key bes \major
      \time 4/4
      f''2 ~ \tuplet 3/2 { f''4 f'' f'' } f''2 es''
      des''2 ~ \tuplet 3/2 { des''4 bes' (c'') } des''2. ~des''8 r
    }

    \break

    {
      \sectionLabel "Vow of Atonement"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key bes \major
      \time 4/4
      d'2. d'4 b2 gis4. e8 dis1
    }

    \break

    {
      \sectionLabel "Hagen Ascending"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef bass
      \key bes \major
      \time 4/4
      \tuplet 3/2 { ces4 des es } \tuplet 3/2 { f ges aes }
    }

    \break

    {
      \sectionLabel "Escape"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key a \major
      \time 4/4
      \partial 4 fis'4 g'2 fis'4. e'8 a'2 r4 d' b' d' d' cis'8 bis gis'4 cis'
    }

    \break

    {
      \sectionLabel "Betrayal"
      \newSpacingSection
      \stemNeutral
      \set Timing.measurePosition = #ZERO-MOMENT  % don't inherit partial bar
      \revert Score.SpacingSpanner.shortest-duration-space  % undo any squeeze
      \revert Score.SpacingSpanner.spacing-increment
      \clef treble
      \key c \major
      \time 4/4
      bes1 ~(bes4 a gis4. e'8)
      g!1 ~(g4 fis f4. d'8)
      \bar "||"
      \clef bass
      \key a \major
      e4
    }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
