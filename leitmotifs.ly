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
    }
    \context {
      \Score
      \omit BarNumber
    }
  }

  \transpose c c {
    \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
    \set Staff.explicitClefVisibility = #end-of-line-invisible
    \set Staff.printKeyCancellation = ##f

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
      % slur into the (non-existent) next note: end it on a hidden grace note
      % and run it off the end
      \shape #'((0 . 0) (0 . 0) (3 . 0) (4 . 0)) Slur
      \afterGrace 7/8 <e,, e,>1 ( { \hideNotes <e,, e,>16 ) \unHideNotes }
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
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
