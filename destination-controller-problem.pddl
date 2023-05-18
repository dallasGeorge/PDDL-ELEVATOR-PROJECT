(define (problem destination-controller-problem)

  (:domain destination-controller)


  (:objects
    elevator1 elevator2 elevator3 - elevator
    floor0 floor1 floor2 floor3 floor4 - floor
  )


  (:init
    (at-floor elevator1 floor2)
    (at-floor elevator2 floor0)
    (at-floor elevator3 floor0)
    
    (assigned elevator1 floor0)
    (assigned elevator2 floor0)
    (assigned elevator3 floor0)
    (assigned elevator1 floor1)
    (assigned elevator1 floor3)
    (assigned elevator2 floor2)
    (assigned elevator2 floor3)
    (assigned elevator3 floor4)
    
  
    (call floor4)
    (call floor2)
    (call floor3)
    (call floor0)
    (call floor1)
    )

  (:goal
    (forall (?f - floor) (not (call ?f)))
   )
  
)