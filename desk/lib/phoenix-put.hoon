/+  phx=phoenix
|%
++  make-dir-fil
  |=  [pax=path keys=(set @)]
  |^
  ^-  [dir=path fil=path]
  =/  wut=path
    ?~  de-path=(de-path:phx pax keys)
      pax
    u.de-path
  [(pretty-dir wut) (pretty-fil wut)]
  ::
  ++  pretty-dir
    |=  pax=path
    ^-  path
    =/  =(pole iota)  (pave pax)
    ?+    pole  (default-dir (pout pole))
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
  ++  pretty-fil
    |=  pax=path
    ^-  path
    =/  =(pole iota)  (pave pax)
    ?+    pole  (default-fil (pout pole))
    ::  standard unencrypted
    ::
        [[%p ship=@] [%ud rift=@] [%ta dude=@] [%ud act=@] rest=*]
      :_  /'jam'
      %-  reel  :_  (cury cat 3)
      %+  join  '-'
      ^-  path
      :*  (pretty-p ship.pole)  (pretty-ud rift.pole)
          dude.pole             (pretty-ud act.pole)
          (pout rest.pole)
      ==
    ::  standard encrypted
    ::
        [[%p ship=@] [%ud suite=@] [%ud rift=@] [%ta dude=@] [%ud act=@] rest=@]
      :_  /'jam'
      %-  reel  :_  (cury cat 3)
      %+  join  '-'
      ^-  path
      :*  (pretty-p ship.pole)  (pretty-ud rift.pole)
          dude.pole             (pretty-ud act.pole)
          (pout rest.pole)
      ==
    ==
  ::
  ++  default-dir
    |=  pax=path
    ^-  path
    =/  who
      ?~  p=(slaw %p (head pax))  'unknown'
      (pretty-p u.p)
    [%phoenix who (tail pax)]
  ::
  ++  default-fil
    |=  pax=path
    ^-  path
    =+  hax=(print-shorthash (shaz (jam page)))
    =/  who
      ?~  p=(slaw %p (head pax))  'unknown'
      (pretty-p u.p)
    /(rap 3 who '-' hax ~)/jam
  ::
  ++  pretty-p
    |=  p=ship    ^-  @ta
    (crip +:(scow %p p))
  ++  pretty-ud
    |=  ud=@ud    ^-  @ta
    (crip (a-co:co ud))
  ++  print-shorthash
    |=  hash=@uv  ^-  @ta
    (crip ((v-co:co 5) (end [0 25] hash)))
  --
--
