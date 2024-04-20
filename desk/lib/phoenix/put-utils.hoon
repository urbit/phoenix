/+  phx=phoenix
|%
++  pretty-p   |=(=@p `@ta`(crip +:(scow %p p)))
++  pretty-ud  |=(=@ud `@ta`(crip (a-co:co ud)))
++  pretty-da
  |=  t=@da
  ^-  @ta
  =+  (yore t)
  =/  dos   (d-co:co 2)
  %+  rap  3
  %+  join  '-'
  %-  turn  :_  crip
  ^-  (list tape)
  :~  (a-co:co y)  (dos m)  (dos d.t)
      (dos h.t)  (dos m.t)  (dos s.t)
  ==
::
++  make-dir-fil
  |=  [pax=path =page keys=(set @)]
  ^-  [dir=path fil=path]
  =/  wut=path
    ?~  de-path=(de-path:phx pax keys)
      pax
    u.de-path
  [(pretty-dir wut) (pretty-fil wut page)]
  ::
++  pretty-dir
  |=  pax=path
  |^  ^-  path
  =/  =(pole iota)  (pave pax)
  ?+    pole  default-dir
  ::  unencrypted
  ::
      [[%p ship=@] [%ud rift=@] [%ta dude=@] [%ud act=@] rest=*]
    :*  %phoenix
        (pretty-p ship.pole)  (pretty-ud rift.pole)
        dude.pole             (pretty-ud act.pole)
        (pout rest.pole)
    ==
  ::  encrypted
  ::
      [[%p ship=@] [%ud suite=@] [%ud rift=@] [%ta dude=@] [%ud act=@] rest=*]
    :*  %phoenix
        (pretty-p ship.pole)  (pretty-ud rift.pole)
        dude.pole             (pretty-ud act.pole)
        (pout rest.pole)
    ==
  ==
  ::
  ++  default-dir
    =/  who
      ?~  p=(slaw %p (head pax))  'unknown'
      (pretty-p u.p)
    [%phoenix who (tail pax)]
  --
::
++  pretty-fil
  |=  [pax=path =page]
  |^  ^-  path
  =/  =(pole iota)  (pave pax)
  ?+    pole  default-fil
  ::  unencrypted
  ::
      [[%p ship=@] [%ud rift=@] [%ta dude=@] [%ud act=@] rest=*]
    :_  /'jam'
    %+  rap  3
    %+  join  '-'
    ^-  path
    :*  (pretty-p ship.pole)  (pretty-ud rift.pole)
        dude.pole             (pretty-ud act.pole)
        (pout rest.pole)
    ==
  ::  encrypted
  ::
      [[%p ship=@] [%ud suite=@] [%ud rift=@] [%ta dude=@] [%ud act=@] rest=*]
    :_  /'jam'
    %+  rap  3
    %+  join  '-'
    ^-  path
    :*  (pretty-p ship.pole)  (pretty-ud rift.pole)
        dude.pole             (pretty-ud act.pole)
        (pout rest.pole)
    ==
  ==
  ::
  ++  print-shorthash  |=(hash=@uv `@ta`(crip ((v-co:co 5) (end [0 25] hash))))
  ++  default-fil
    =+  hax=(print-shorthash (shaz (jam page)))
    =/  who
      ?~  p=(slaw %p (head pax))  'unknown'
      (pretty-p u.p)
    /(rap 3 who '-' hax ~)/jam
  --
--
