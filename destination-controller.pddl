(define (domain destination-controller)
  (:types floor elevator)
  (:predicates
    (at-floor ?e - elevator ?f - floor)
    (moving ?e - elevator)
    (call ?f - floor)
    (assigned ?e - elevator ?f - floor)
    (served ?e -elevator ?f - floor)
  )


  (:action move
    :parameters (?e - elevator ?f1 ?f2 - floor)
    :precondition (and (assigned ?e ?f2) (at-floor ?e ?f1) (call ?f2) (not (served ?e ?f2)))
    :effect (and (not (at-floor ?e ?f1)) (at-floor ?e ?f2) (moving ?e))
  )

  (:action serve
    :parameters (?e - elevator ?f - floor)
    :precondition (and (at-floor ?e ?f) (call ?f) (not (served ?e ?f)) (moving ?e))
    :effect (and (not (call ?f)) (assigned ?e ?f) (not (moving ?e)) (served ?e ?f))
  )
)