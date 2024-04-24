/-  *phoenix, hark
/+  egg=phoenix-egg-utils, *phoenix-gall-utils
::
|_  =bowl:gall
++  get-rift
  |=  =ship
  ^-  @ud
  .^(@ud %j (en-beam [our.bowl %rift da+now.bowl] /(scot %p ship)))
::
++  recover-sky
  |=  fam=farm:gall
  ^-  (list [spur page])
  =/  sky=(map path fans:gall)  (farm-to-sky fam)
  =/  sly=(list [pax=path fan=fans:gall])  ~(tap by sky)
  =|  tmp=(set [rev=@ud spur page])
  |-
  ?~  sly
    %-  turn  :_  tail
    %+  sort  ~(tap in tmp)
    |=([[a=@ud *] [b=@ud *]] (lth a b))
  =.  tmp
    %-  ~(gas in tmp)
    ^-  (list [rev=@ud path page])
    %+  murn  (tap:on-path fan.i.sly)
    |=  [rev=@ud wen=@da wut=(each page @uvI)]
    ?-  -.wut
      %|  ~
      %&  `[rev pax.i.sly p.wut]
    ==
  $(sly t.sly)
::
++  make-offer
  |=  =ship
  ^-  offer
  %-  silt
  ^-  (list [case spur])
  %-  zing
  %+  murn  ~(tap by sky.bowl)
  |=  [pax=path =fans:gall]
  ^-  (unit (list [case spur]))
  ?~  pax  ~
  ?~  who=(slaw %p i.pax)  ~
  ?.  =(ship u.who)
    ~
  %-  some
  ^-  (list [case spur])
  %+  murn  (tap:on-path fans)
  |=  [rev=@ud wen=@da wut=(each page @uvI)]
  ^-  (unit [case spur])
  ?-  -.wut
    %|  ~
    %&  `[ud+rev pax]
  ==
::
++  pluck
  |=  [=case =spur]
  ^-  (unit page)
  ?.  ?=(%ud -.case)  ~
  =/  fun=(unit fans:gall)
    (~(get by sky.bowl) spur)
  ?~  fun  ~
  =/  wut=(unit (pair @da (each page @uvI)))
    (get:on-path u.fun p.case)
  ?~  wut  ~
  ?.  ?=(%& -.q.u.wut)  ~
  `p.q.u.wut
::
++  snap
  |=  [=dude:gall key=@ eny=@uvJ]
  ^-  page
  =/  raw=egg-any:gall  (snap:egg [our.bowl dude da+now.bowl])
  =/  good-egg=egg-any:gall  (cook:egg raw)
  =/  egg-page=page  [%egg-any good-egg]
  =/  egg-jam=@      (jam egg-page)
  =+  (encrypt egg-jam key eny)
  [%egg-cyf cyf]
::
++  encrypt
  |=  [msg=@ key=@ eny=@uvJ]
  ^-  [=key-id cyf=@]
  ?<  =(0 eny)
  =/  =key-id        [current-suite eny (shas eny key)]
  =/  new-key=@      (shaz (mix eny key))
  =/  encrypted-msg  (en:crub:crypto new-key msg)
  [key-id encrypted-msg]
::
++  decrypt
  |=  [[=key-id msg=@] keys=(set @)]
  |^  ^-  (unit page)
      ^-  (unit [%egg-any egg-any:gall])
      ?-    -.key-id
          %'1'
        ?~  key=(find-key key-id keys)
          ~&  >>>  [dap.bowl %no-key-match]
          ~
        =/  new-key=@  (shaz (mix salt.key-id u.key))
        (unlock new-key msg)
      ==
  ::
  ++  unlock
    |=  [key=@ msg=@]
    ^-  (unit [%egg-any egg-any:gall])
    =/  res=(unit @ux)  (de:crub:crypto key msg)
    ?~  res  ~
    (mole |.(;;([%egg-any egg-any:gall] (cue u.res))))
  --
::
++  find-key
  |=  [=key-id keys=(set @)]
  ^-  (unit @)
  ?-    -.key-id
      %'1'
    =/  keys=(list @)  ~(tap in keys)
    |-
    ?~  keys
      ~
    ?:  =(salted-key.key-id (shas salt.key-id i.keys))
      `i.keys
    $(keys t.keys)
  ==
::
++  send-hark
  |=  [who=ship msg=cord]
  ^-  (list card:agent:gall)
  ?.  .^(? %gu /(scot %p our.bowl)/hark/(scot %da now.bowl)/$)
    ~
  =/  con=(list content:hark)  [ship+who msg ~]
  =/  =id:hark      (end 7 (shas %phx-notif eny.bowl))
  =/  =rope:hark    [~ ~ q.byk.bowl /(scot %p who)/[dap.bowl]]
  =/  =action:hark  [%add-yarn & & id rope now.bowl con /[dap.bowl] ~]
  =/  =cage         [%hark-action !>(action)]
  [%pass /hark %agent [our.bowl %hark] %poke cage]^~
::
++  encrypt-path
  |=  [=spur key=@ eny=@uvJ]
  ^-  ^spur
  =/  pat=@t  (spat spur)
  =+  (encrypt pat key eny)
  ?-    -.key-id
      %'1'
    :~  -.key-id
        (scot %uv salt.key-id)
        (scot %uv salted-key.key-id)
        (scot %uv cyf)
    ==
  ==
::
++  make-good-path
  |=  [=ship =rift =dude:gall act=@ud rest=path key=@ eny=@uvJ]
  ^-  path
  =/  =spur   [(scot %ud rift) dude (scot %ud act) rest]
  =/  pat=@t  (spat spur)
  =+  (encrypt pat key eny)
  ?-    -.key-id
      %'1'
    :~  (scot %p ship)
        -.key-id
        (scot %uv salt.key-id)
        (scot %uv salted-key.key-id)
        (scot %uv cyf)
    ==
  ==
::
++  de-path
  |=  [pax=path keys=(set @)]
  ^-  (unit path)
  =/  =(pole iota)  (pave pax)
  ?+    pole  ~
      [[%p ship=@] [%ud suite=@] [%uv sal=@] [%uv ski=@] [%uv cyf=@] ~]
    ?.  =(%'1' (scot %ud suite.pole))  ~
    ?~  key=(find-key [%'1' sal.pole ski.pole] keys)  ~
    =/  new-key=@  (shaz (mix sal.pole u.key))
    =/  res=(unit @ux)  (de:crub:crypto new-key cyf.pole)
    ?~  res  ~
    (mole |.([(scot %p ship.pole) (scot %ud suite.pole) (stab ;;(@t u.res))]))
  ==
::
++  valid-path
  |=  =path
  =/  =(pole iota)  (pave path)
  ^-  ?
  ?&  ?=([[%p ship=@] [%ud suite=@] [%uv sal=@] [%uv ski=@] [%uv cyf=@] ~] pole)
      =(%'1' (scot %ud suite.pole))
  ==
::
++  get-kid
  |=  =path
  =/  =(pole iota)  (pave path)
  ^-  (unit key-id)
  ?.  ?=([[%p ship=@] [%ud suite=@] [%uv sal=@] [%uv ski=@] [%uv cyf=@] ~] pole)
    ~
  ?.  =(%'1' (scot %ud suite.pole))  ~
  `[%'1' sal.pole ski.pole]
--
