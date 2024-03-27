|%
++  snap
  |=  =beak
  ^-  egg-any:gall
  ~|  [%egg %snap-failed beak]
  .^(egg-any:gall %gv (en-beam beak /$))
::  strip type so cue works
::
++  cook
  |=  raw=egg-any:gall
  ^-  egg-any:gall
  ?-    -.raw
      ?(%15 %16)
    ?>  ?=(%live -.+.raw)
    raw(p.+.old-state.+ %noun)
  ==
::
++  get-act
  |=  =egg-any:gall
  ^-  @ud
  ?-    -.egg-any
      ?(%15 %16)
    ?>  ?=(%live -.+.egg-any)
    change.stats.+.egg-any
  ==
--
