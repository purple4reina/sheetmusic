%%%%%%%%%%%%%%%%%%%
% COMMON SETTINGS %
%%%%%%%%%%%%%%%%%%%

\header {
  tagline = #(
    strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time))
  )
}

\layout {
  indent = #0
  ragged-last = ##f
  \compressEmptyMeasures
  \clef treble
  \override MultiMeasureRest.expand-limit = #1
}

%%%%%%%%%%
% MACROS %
%%%%%%%%%%

txtUp =
#(define-music-function
  (text)
  (string?)
  #{
    ^\markup { \italic #text }
  #}
)

txtDown =
#(define-music-function
  (text)
  (string?)
  #{
    _\markup { \italic #text }
  #}
)

% Slur a note or chord into a (non-existent) next note, running off the end.
% The slur ends on a hidden grace note, shaped to extend to the right.
% Usage:  \slurToNothing <a c' f'>2.      (add \once \slurUp / \slurDown before it to
% force the direction; post-events such as ) or \ff go inside the argument)
slurToNothing =
#(define-music-function (music) (ly:music?)
   (let* ((hidden (ly:music-deep-copy music))
          (chord? (music-is-of-type? music 'event-chord))
          (slur (lambda (dir)
                  (make-music 'SlurEvent 'span-direction dir)))
          (add-event!
           (lambda (m ev)
             (if (music-is-of-type? m 'event-chord)
                 (ly:music-set-property! m 'elements
                   (append (ly:music-property m 'elements) (list ev)))
                 (ly:music-set-property! m 'articulations
                   (append (ly:music-property m 'articulations) (list ev)))))))
     ;; hidden grace note: same pitches, 16th, no articulations
     (music-map
      (lambda (m)
        (if (music-is-of-type? m 'note-event)
            (begin
              (ly:music-set-property! m 'duration (ly:make-duration 4))
              (ly:music-set-property! m 'articulations '())))
        m)
      hidden)
     (if (music-is-of-type? hidden 'event-chord)
         (ly:music-set-property! hidden 'elements
           (filter (lambda (e) (music-is-of-type? e 'note-event))
                   (ly:music-property hidden 'elements))))
     (add-event! music (slur START))
     (add-event! hidden (slur STOP))
     #{
       \shape #'((0 . 0) (0 . 0) (3 . 0) (4 . 0)) Slur
       \afterGrace 7/8 $music { \hideNotes $hidden \unHideNotes }
     #}))

markNum    = \set Score.rehearsalMarkFormatter = \format-mark-numbers
markBoxNum = \set Score.rehearsalMarkFormatter = \format-mark-box-numbers
markCirNum = \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

t = \tuplet 3/2 \etc

tremolo = \repeat tremolo \etc

fermataBar = {
  \once \set Staff.caesuraType = #'((underlying-bar-line . "||"))
  \once \set Staff.caesuraTypeTransform = ##f
  \bar "||"
  \caesura \fermata
}
