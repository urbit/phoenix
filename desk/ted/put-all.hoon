/-  spider
/+  io=strandio, egg, phoenix
^-  thread:spider
|=  arg=vase
=/  m  (strand:rand ,vase)
=+  !<([~ key=(unit @)] arg)
;<  =bowl:rand  bind:m  get-bowl:io
|^  ^-  form:m
    ::
    =/  cards=(list card:agent:gall)
      %-  zing
      %+  turn
        %~  tap  in
        .^((set desk) %cd (en-beam [our.bowl %$ da+now.bowl] /))
      |=  =desk
      %+  turn
        %~  tap  in
        .^((set [dude:gall ?]) %ge (en-beam [our.bowl desk da+now.bowl] /$))
      |=  [=dude:gall ?]
      =+  .^(raw=egg-any:gall %gv (en-beam [our.bowl dude da+now.bowl] /$))
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
      (put dat dude)
    ::
    =?  cards  ?=(^ key)
      [(import-key u.key) cards]
    ::
    ;<  ~  bind:m  (send-raw-cards:io cards)
    ::
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
    `path`/[ship-sig]/[dude]/(scot %da now.bowl)
  =/  =path  (weld directory file-name)
  =/  =cage  [%drum-put !>([path dat])]
  [%pass / %agent [our.bowl %hood] %poke cage]
::
++  import-key
  |=  key=@
  ^-  card:agent:gall
  =/  =cage  [%phoenix-command !>([%add-key key])]
  [%pass / %agent [our.bowl %phoenix] %poke cage]
--
