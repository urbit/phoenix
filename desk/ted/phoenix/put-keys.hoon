/-  spider
/+  io=strandio, phoenix
^-  thread:spider
|=  arg=vase
=/  m  (strand:rand ,vase)
;<  =bowl:rand  bind:m  get-bowl:io
|^  ^-  form:m
    ;<  keys=(set @)  bind:m  (scry:io (set @) /gx/phoenix/keys/noun)
    ;<  code=@p       bind:m  (scry:io @p /j/code/(scot %p our.bowl))
    =/  keys  (~(put in keys) (shaz code))
    =/  dat=@  (jam [%keys keys])
    ;<  ~  bind:m  (send-raw-card:io (put-keys dat))
    (pure:m !>(%done))
::
++  put-keys
  |=  dat=@
  ^-  card:agent:gall
  =/  ship-sig=@t  (crip +:(scow %p our.bowl))
  =/  directory=path  /phoenix/[ship-sig]/keys
  =/  file-name=path
    :_  /'jam'
    %-  reel  :_  (cury cat 3)
    %+  join  '-'
    `path`/[ship-sig]/keys/(pretty-date:phoenix now.bowl)
  =/  =path  (weld directory file-name)
  =/  =cage  [%drum-put !>([path dat])]
  [%pass / %agent [our.bowl %hood] %poke cage]
--
