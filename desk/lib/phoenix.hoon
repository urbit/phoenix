/-  *phoenix, hark
/+  egg
::
|_  =bowl:gall
++  pretty-date
  |=  t=@da
  ^-  @t
  =/  =date  (yore t)
  =,  date
  =/  dos   (d-co:co 2)
  %-  reel  :_  (cury cat 3)
  %+  join  '-'
  %-  turn  :_  crip
  ^-  (list tape)
  :~  (a-co:co y)  (dos m)  (dos d.t)
      (dos h.t)  (dos m.t)  (dos s.t)
  ==
::
++  our-key  (shaz our-code)
++  our-code
  ^-  @t
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  %-  crip
  %+  slag  1
  %+  scow  %p
  .^(@p %j /[our]/code/[now]/[our])
::
++  on-path  ((on @ud (pair @da (each page @uvI))) lte)
++  make-offer
  |=  =ship
  ^-  offer
  %-  silt
  ^-  (list [spur case])
  %-  zing
  %+  murn  ~(tap by sky.bowl)
  |=  [pax=path =fans:gall]
  ^-  (unit (list [spur case]))
  ?~  pax  ~
  ?.  =(ship (slav %p i.pax))
    ~
  %-  some
  ^-  (list [spur case])
  %+  murn  (tap:on-path fans)
  |=  [rev=@ud wen=@da wut=(each page @uvI)]
  ^-  (unit [spur case])
  ?-  -.wut
    %|  ~
    %&  `[pax ud+rev]
  ==
::
++  pluck
  |=  =beam
  ^-  (unit page)
  ?.  ?=([%ud @] r.beam)  ~
  =/  fun=(unit fans:gall)
    (~(get by sky.bowl) [(scot %p p.beam) [q.beam] s.beam])
  ?~  fun  ~
  =/  wut=(unit (pair @da (each page @uvI)))
    (get:on-path u.fun p.r.beam)
  ?~  wut  ~
  ?.  ?=(%& -.q.u.wut)  ~
  `p.q.u.wut
::
++  snap
  |=  =dude:gall
  ^-  page
  =/  raw=egg-any:gall  (snap:egg [our.bowl dude da+now.bowl])
  =/  good-egg=egg-any:gall  (cook:egg raw)
  =/  egg-page=page  [%egg-any good-egg]
  =/  egg-jam=@      (jam egg-page)
  =/  key=@
    =/  =beak  [our.bowl %phoenix da+now.bowl]
    =+  .^(backup-key=(unit @) %gx (en-beam beak /backup-key/noun))
    ?^  backup-key
      u.backup-key
    .^(static-code=@ %gx (en-beam beak /static-code/noun))
  (encrypt egg-jam key eny.bowl)
::
++  encrypt
  |=  [msg=@ key=@ eny=@uvJ]
  ^-  [%phx key-id @]
  ?<  =(0 eny)
  =/  =key-id        [eny (shas eny key)]
  =/  new-key=@      (shaz (mix eny key))
  =/  cc=acru:ames   (pit:nu:crub:crypto 512 new-key)
  =/  encrypted-msg  (en:cc sec:ex:cc msg)
  [%phx [key-id encrypted-msg]]
::
++  decrypt
  |=  [[=key-id msg=@] keys=(set @)]
  |^  ^-  (unit page)
      ^-  (unit [%egg-any egg-any:gall])
      =/  key=(unit @)
        =/  keys=(list @)  ~(tap in keys)
        |-
        ?~  keys
          ~
        ?:  =(salted-key.key-id (shas salt.key-id i.keys))
          `i.keys
        $(keys t.keys)
      ?~  key
        ~&  >>>  [dap.bowl %no-key-match]
        ~
      =/  new-key=@  (shaz (mix salt.key-id u.key))
      (unlock new-key msg)
  ::
  ++  unlock
    |=  [key=@ msg=@]
    ^-  (unit [%egg-any egg-any:gall])
    =/  cc=acru:ames    (pit:nu:crub:crypto 512 key)
    =/  res=(unit @ux)  (de:cc sec:ex:cc msg)
    ?~  res  ~
    (mole |.(;;([%egg-any egg-any:gall] (cue u.res))))
  --
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
--
