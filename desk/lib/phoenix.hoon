/-  *phoenix, hark
/+  egg
::
|_  =bowl:gall
++  get-rift
  |=  =ship
  ^-  @ud
  .^(@ud %j (en-beam [our.bowl %rift da+now.bowl] /(scot %p ship)))
::
++  on-path  ((on @ud (pair @da (each page @uvI))) lte)
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
  [%egg-cyf (encrypt egg-jam key eny)]
::
++  encrypt
  |=  [msg=@ key=@ eny=@uvJ]
  ^-  [key-id cyf=@]
  ?<  =(0 eny)
  =/  =key-id        [eny (shas eny key)]
  =/  new-key=@      (shaz (mix eny key))
  =/  encrypted-msg  (en:crub:crypto new-key msg)
  [key-id encrypted-msg]
::
++  decrypt
  |=  [[=key-id msg=@] keys=(set @)]
  |^  ^-  (unit page)
      ^-  (unit [%egg-any egg-any:gall])
      ?~  key=(find-key key-id keys)
        ~&  >>>  [dap.bowl %no-key-match]
        ~
      =/  new-key=@  (shaz (mix salt.key-id u.key))
      (unlock new-key msg)
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
  |=  [key-id keys=(set @)]
  ^-  (unit @)
  =/  keys=(list @)  ~(tap in keys)
  |-
  ?~  keys
    ~
  ?:  =(salted-key (shas salt i.keys))
    `i.keys
  $(keys t.keys)
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
  :~  (scot %ud crypto-suite)
      (scot %uv salt)
      (scot %uv salted-key)
      (scot %uv cyf)
  ==
::
++  good-path
  |=  [=ship =rift =dude:gall act=@ud rest=path key=@ eny=@uvJ]
  ^-  path
  =/  =spur   [(scot %ud rift) dude (scot %ud act) rest]
  =/  pat=@t  (spat spur)
  =+  (encrypt pat key eny)
  :~  (scot %p ship)
      (scot %ud crypto-suite)
      (scot %uv salt)
      (scot %uv salted-key)
      (scot %uv cyf)
  ==
::
++  de-path
  |=  [pax=path keys=(set @)]
  ^-  (unit path)
  =/  =(pole iota)  (pave pax)
  ?.  ?=([[%p ship=@] [%ud suite=@] [%uv sal=@] [%uv ski=@] [%uv cyf=@] ~] pole)
    ~
  ?.  =(1 suite.pole)  ~
  ?~  key=(find-key [sal.pole ski.pole] keys)  ~
  =/  new-key=@  (shaz (mix sal.pole u.key))
  =/  res=(unit @ux)  (de:crub:crypto new-key cyf.pole)
  ?~  res  ~
  (mole |.([(scot %p ship.pole) (scot %ud suite.pole) (stab ;;(@t u.res))]))
::
++  valid-path
  |=  =(pole iota)
  ^-  ?
  ?=([[%p ship=@] [%ud suite=@] [%uv sal=@] [%uv ski=@] [%uv cyf=@] ~] pole)
--
