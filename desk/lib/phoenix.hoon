/-  *phoenix, hark
=>
  |%
  ++  on-path  ((on @ud (pair @da (each page @uvI))) lte)
  --
|_  =bowl:gall
++  all-desks
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  .^((set desk) %cd /[our]//[now])
::
++  live-dudes
  |=  =desk
  ^-  (set dude:gall)
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  %+  roll
    %~  tap  in
    .^((set [dude:gall ?]) %ge /[our]/[desk]/[now]/$)
  |=  [[=dude:gall live=?] acc=(set dude:gall)]
  ?.  live
    acc
  (~(put in acc) dude)
::
++  all-live-dudes
  ^-  (set dude:gall)
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  =+  .^(desks=(set desk) %cd /[our]//[now])
  %-  silt
  ^-  (list dude:gall)
  %-  zing
  %+  turn  ~(tap in desks)
  |=  =desk
  %+  murn
    %~  tap  in
    .^((set [dude:gall ?]) %ge /[our]/[desk]/[now]/$)
  |=  [=dude:gall live=?]
  ?.  live
    ~
  `dude
::
++  is-moon       |=(=ship =(%earl (clan:title ship)))
++  our-moon      |=(=ship (moon:title our.bowl ship))
++  get-sponsor   |=(=ship (sein:title our.bowl now.bowl ship))
++  same-sponsor  |=([a=ship b=ship] =((get-sponsor a) (get-sponsor b)))
++  fellow-moon   |=(=ship &((is-moon our.bowl) (same-sponsor ship our.bowl)))
++  our-team
  |=  =ship
  ^-  ?
  ?|  =(our.bowl ship)    ::  us
      (our-moon ship)     ::  our moons
      (fellow-moon ship)  ::  fellow moons
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
::  strip type so cue works
::
++  cook-egg
  |=  raw=egg-any:gall
  ^-  egg-any:gall
  ?-    -.raw
      ?(%15 %16)
    ?>  ?=(%live -.+.raw)
    raw(p.+.old-state.+ %noun)
  ==
::
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
  |=  [=ship =spur =case]
  ^-  (unit page)
  ?.  ?=([%ud @] case)  ~
  =/  fun=(unit fans:gall)
    (~(get by sky.bowl) [(scot %p ship) spur])
  ?~  fun  ~
  =/  wut=(unit (pair @da (each page @uvI)))
    (get:on-path u.fun +.case)
  ?~  wut  ~
  ?.  ?=(%& -.q.u.wut)  ~
  `p.q.u.wut
::
++  grasp
  |=  [=ship =spur =case]
  ^-  (unit page)
  ?.  ?&  =(our.bowl ship)
          =([%da now.bowl] case)
      ==
    (pluck ship spur case)
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  =/  =dude:gall  (slav %tas (head spur))
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    %-  (slog leaf+"%phoenix: dude not live: {<dude>}" ~)
    ~
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg raw)
  =/  egg-jam=@  (jam [%egg-any good-egg])
  =/  egg-crypt=[%atom @]
    (encrypt egg-jam our-key)
  `egg-crypt
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
:: ++  derive-symmetric-key
::   |=  [=public-key:ames private-key=@uwprivatekey]
::   ^-  symmetric-key:ames
::   ?>  =('b' (end 3 public-key))
::   =.  public-key  (rsh 8 (rsh 3 public-key))
::   ::
::   ?>  =('B' (end 3 private-key))
::   =.  private-key  (rsh 8 (rsh 3 private-key))
::   ::
::   `@`(shar:ed:crypto public-key private-key)
::
++  encrypt
  |=  [msg=@ key=@]
  ^-  [%atom @]
  =/  cc=acru:ames  (pit:nu:crub:crypto 512 key)
  :: =/  =symmetric-key:ames
  ::   (derive-symmetric-key [pub sec]:ex:cc)
  =/  encrypted-msg  (en:cc sec:ex:cc msg)
  =/  sealed-msg     (seal:as:cc pub:ex:cc encrypted-msg)
  [%atom sealed-msg]
::
++  decrypt
  |=  [msg=@ keys=(set @)]
  |^  ^-  (unit [%egg-any egg-any:gall])
      =/  keys=(list @)  ~(tap in keys)
      |-
      ?~  keys
        ~&  >  [dap.bowl %decryt-failed]
        ~
      ?^  res=(try i.keys msg)
        res
      $(keys t.keys)
  ::
  ++  try
    |=  [key=@ msg=@]
    ^-  (unit [%egg-any egg-any:gall])
    =/  cc=acru:ames  (pit:nu:crub:crypto 512 key)
    =/  ok=(unit @ux)
      (sure:as:cc msg)
    ?~  ok  ~
    :: =/  =symmetric-key:ames
    ::   (derive-symmetric-key [pub sec]:ex:cc)
    =/  res=(unit @ux)
      (de:cc sec:ex:cc u.ok)
    ?~  res  ~
    (check u.res)
  ::
  ++  check
    |=  in=@
    ^-  (unit [%egg-any egg-any:gall])
    (mole |.(;;([%egg-any egg-any:gall] (cue in))))
  --
--
