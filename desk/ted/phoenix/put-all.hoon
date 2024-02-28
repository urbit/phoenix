/-  spider
/+  io=strandio, egg, phoenix
^-  thread:spider
|=  arg=vase
=+  !<([~ key=(unit @)] arg)
=/  m  (strand:rand ,vase)
;<  =bowl:rand  bind:m  get-bowl:io
|^  ^-  form:m
    ;<  desks=(set desk)  bind:m  (scry:io (set desk) /cd/$)
    =/  desks=(list desk)  ~(tap in desks)
    =|  cards=(list card:agent:gall)
    |-
    =*  outer  $
    ?~  desks
      =?  cards  ?=(^ key)
        [(import-key u.key) cards]
      ;<  ~  bind:m  (send-raw-cards:io cards)
      (pure:m !>(%done))
    ;<  dudes=(set [dude:gall ?])  bind:m
      (scry:io (set ,[dude:gall ?]) /ge/[i.desks]/$)
    =/  dudes=(list (pair dude:gall ?))  ~(tap in dudes)
    ::
    |-
    ?~  dudes
      outer(desks t.desks)
    ;<  raw=egg-any:gall  bind:m
      (scry:io egg-any:gall /gv/[p.i.dudes]/$)
    =/  good-egg=egg-any:gall  (cook:egg raw)
    =/  egg-page=page  [%egg-any good-egg]
    =/  egg-jam=@  (jam egg-page)
    =/  dat=@
      ?@  key
        egg-jam
      =/  eny=@uvJ  (shaz (mix p.i.dudes eny.bowl))
      %-  jam
      (encrypt:phoenix [egg-jam u.key eny])
    =.  cards
      :_(cards (put dat p.i.dudes))
    $(dudes t.dudes)
::
++  put
  |=  [dat=@ =dude:gall]
  ^-  card:agent:gall
  =/  ship-sig=@t  (crip +:(scow %p our.bowl))
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
