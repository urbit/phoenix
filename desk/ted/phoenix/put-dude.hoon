/-  spider, *phoenix
/+  io=strandio, egg, phx=phoenix
^-  thread:spider
|=  arg=vase
=+  !<([~ =dude:gall key=(unit @)] arg)
=/  m  (strand:rand ,vase)
;<  =bowl:rand  bind:m  get-bowl:io
|^  ^-  form:m
    ;<  raw=egg-any:gall  bind:m
      (scry:io egg-any:gall /gv/[dude]/$)
    =/  good-egg=egg-any:gall  (cook:egg raw)
    =/  egg-page=page  [%egg-any good-egg]
    =/  egg-jam=@  (jam egg-page)
    =/  dat=@
      ?@  key
        egg-jam
      %-  jam
      [%phx (encrypt:phx [egg-jam u.key eny.bowl])]
    ;<  rift=@ud  bind:m  (scry:io @ud /j/rift/(scot %p our.bowl))
    =+  act=(get-act:egg good-egg)
    =/  raw-path=path
      /(scot %p our.bowl)/(scot %ud rift)/[dude]/(scot %ud act)
    =/  cards=(list card:agent:gall)
      =+  dir=(pretty-dir our.bowl rift dude act)
      =+  fil=(pretty-fil our.bowl rift dude act)
      :-  (put dir fil dat)
      ?~  key  ~
      (import-key u.key)^~
    ;<  ~  bind:m  (send-raw-cards:io cards)
    (pure:m !>(%done))
::
++  put
  |=  [dir=path fil=path dat=@]
  ^-  card:agent:gall
  =/  =path  (weld dir fil)
  =/  =wire  [%sav path]
  =/  =cage  [%drum-put !>([path dat])]
  [%pass wire %agent [our.bowl %hood] %poke cage]
::
++  import-key
  |=  key=@
  ^-  card:agent:gall
  =/  =cage  [%phoenix-command !>(`command`[%add-keys (silt key ~)])]
  [%pass / %agent [our.bowl %phoenix] %poke cage]
::
++  ship-sig
  |=  =ship
  ^-  @ta
  (crip +:(scow %p ship))
::
++  pretty-fil
  |=  [=ship rift=@ud =dude:gall act=@ud]
  ^-  path
  :_  /'jam'
  %-  reel  :_  (cury cat 3)
  %+  join  '-'
  `path`/(ship-sig ship)/(scot %ud rift)/[dude]/(scot %ud act)
::
++  pretty-dir
  |=  [=ship rift=@ud =dude:gall act=@ud]
  ^-  path
  /phoenix/(ship-sig ship)/(scot %ud rift)/[dude]/(scot %ud act)
--
