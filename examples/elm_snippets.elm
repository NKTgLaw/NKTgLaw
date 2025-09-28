-- Elm: functional language for front-end web apps
module Main exposing (..)

main =
    let
        x = 2.0
        v = 3.0
        m = 5.0
        dm_dt = 0.1
        p = m * v
        nktg1 = x * p
        nktg2 = dm_dt * p
    in
    Debug.log "Results" (p, nktg1, nktg2)
