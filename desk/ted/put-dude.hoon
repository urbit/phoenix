/-  spider
/+  io=strandio, egg, phoenix
^-  thread:spider
|=  arg=vase
=/  m  (strand:rand ,vase)
=+  !<([~ =dude:gall key=(unit @)] arg)
;<  =bowl:rand  bind:m  get-bowl:io
|^  ^-  form:m
    ::
    ;<  raw=egg-any:gall  bind:m
      (scry:io egg-any:gall /gv/[dude]/$)
    =/  good-egg=egg-any:gall  (cook:egg raw)
    =/  egg-page=page  [%egg-any good-egg]
    ::
    =/  dat=@
      ?@  key
        (jam [%egg-any egg-page])
      =|  bol=bowl:gall
      =.  bol  bol(eny eny.bowl)
      %-  jam
      %-  ~(encrypt phoenix bol)
      [(jam egg-page) u.key]
    ::
    =/  cards=(list card:agent:gall)
      (put dat)^~
    =?  cards  ?=(^ key)
      [(import-key u.key) cards]
    ::
    ;<  ~  bind:m  (send-raw-cards:io cards)
    ::
    (pure:m !>(%done))
::
++  import-key
  |=  key=@
  ^-  card:agent:gall
  =/  =cage  [%phoenix-command !>([%add-key key])]
  [%pass / %agent [our.bowl %phoenix] %poke cage]
::
++  put
  |=  dat=@
  ^-  card:agent:gall
  =/  ship-sig=@t     (crip +:(scow %p our.bowl))
  =/  directory=path  /phoenix/[ship-sig]/[dude]
  =/  file-name=path
    :_  /'jam'
    %-  reel  :_  (cury cat 3)
    %+  join  '-'
    `path`/[ship-sig]/[dude]/(scot %da now.bowl)
  =/  =path  (weld directory file-name)
  =/  =cage  [%drum-put !>([path dat])]
  [%pass / %agent [our.bowl %hood] %poke cage]
--
