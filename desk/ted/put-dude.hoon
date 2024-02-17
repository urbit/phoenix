/-  spider
/+  io=strandio, egg, phoenix
^-  thread:spider
|=  arg=vase
=/  m  (strand:rand ,vase)
=+  !<([~ =dude:gall key=(unit @)] arg)
;<  our=@p   bind:m  get-our:io
;<  now=@da  bind:m  get-time:io
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
      (jam [%atom %42])
    ::
    =/  =card:agent:gall  (put dat)
    ;<  ~  bind:m  (send-raw-card:io card)
    ::
    (pure:m !>(%done))
::
++  put
  |=  dat=@
  ^-  card:agent:gall
  =/  ship-sig=@t  (crip +:(scow %p our))
  =/  directory=path  /phoenix/[ship-sig]/[dude]
  =/  file-name=path
    :_  /'jam'
    %-  reel  :_  (cury cat 3)
    %+  join  '-'
    `path`/[ship-sig]/[dude]/(scot %da now)
  =/  =path  (weld directory file-name)
  =/  =cage  [%drum-put !>([path dat])]
  [%pass / %agent [our %hood] %poke cage]
--
