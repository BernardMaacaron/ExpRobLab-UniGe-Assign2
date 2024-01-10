(define (problem navigate_world)
(:domain assignment2)
(:objects
    wp0 wp1 wp2 wp3 wp4 - waypoint
    bear - robot
)
(:init
    (= (charge bear) 0)
    (robot_at bear wp0)
    (docked bear)
    (dock_at wp0)
)
(:goal (and
    (visited wp0)
    (visited wp1)
    (visited wp2)
    (visited wp3)
    (visited wp4)
    (visited wp0)
    (docked bear)
    (> (charge bear) 0)
)))
