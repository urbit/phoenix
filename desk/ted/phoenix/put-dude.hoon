/-  spider
/+  io=strandio, egg, phoenix
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
      (encrypt:phoenix [egg-jam u.key eny.bowl])
    =/  cards=(list card:agent:gall)
      :-  (put dat dude)
      ?~  key  ~
      (import-key u.key)^~
    ;<  ~  bind:m  (send-raw-cards:io cards)
    (pure:m !>(%done))
::
++  put
  |=  [dat=@ =dude:gall]
  ^-  card:agent:gall
  =/  ship-sig=@t     (crip +:(scow %p our.bowl))
  =/  directory=path  /phoenix/[ship-sig]/[dude]
  =/  file-name=path
    :_  /'jam'
    %-  reel  :_  (cury cat 3)
    %+  join  '-'
    `path`/[ship-sig]/[dude]/(pretty-date:phoenix now.bowl)
  =/  =path  (weld directory file-name)
  =/  =cage  [%drum-put !>([path dat])]
  [%pass / %agent [our.bowl %hood] %poke cage]
::
++  import-key
  |=  key=@
  ^-  card:agent:gall
  =/  =cage  [%phoenix-command !>([%add-keys (silt key ~)])]
  [%pass / %agent [our.bowl %phoenix] %poke cage]
--
