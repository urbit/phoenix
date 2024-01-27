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
++  our-code
  ^-  @t
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  %-  crip
  %+  slag  1
  %+  scow  %p
  .^(@p %j /[our]/code/[now]/[our])
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
  |=  [=ship =dude:gall =case]
  ^-  (unit page)
  ?.  ?=([%ud @] case)  ~
  =/  fun=(unit fans:gall)
    (~(get by sky.bowl) /(scot %p ship)/[dude])
  ?~  fun  ~
  =/  wut=(unit (pair @da (each page @uvI)))
    (get:on-path u.fun +.case)
  ?~  wut  ~
  ?.  ?=(%& -.q.u.wut)  ~
  `p.q.u.wut
::
++  grasp
  |=  [=ship =dude:gall =case]
  ^-  (unit page)
  ?.  ?&  =(our.bowl ship)
          =([%da now.bowl] case)
      ==
    (pluck ship dude case)
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    %-  (slog leaf+"%phoenix: dude not live: {<dude>}" ~)
    ~
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg raw)
  ::  XX encrypt
  ::
  `[%egg-any (jam good-egg)]
::
++  encrypt
  |=  [e=egg-any:gall key=@t]
  ^-  [%egg-any @]
  ::  [%egg-any (jam e)]
  !!
::
++  decrypt
  |=  [dat=* keys=(set @)]
  |^  ^-  (unit [%egg-any egg-any:gall])
      =?  dat  ?=(@ dat)
        (cue dat)
      ?.  ?=([%egg-any *] dat)
        ~&  >  [dap.bowl %decryt-failed %bad-page]
        ~
      ?:  ?=([%egg-any egg=^] dat)
        ?^  res=(check dat)
          res
        ~&  >  [dap.bowl %decryt-failed %bad-egg]
        ~
      ?>  ?=([%egg-any egg=@] dat)
      =/  keys=(list @)  ~(tap in keys)
      ::
      |-
      ?~  keys
        ~&  >  [dap.bowl %decryt-failed]
        ~
      ?^  res=(try dat i.keys)
        res
      $(keys t.keys)
  ::
  ++  try
    |=  [[%egg-any egg=@] key=@]
    ^-  (unit [%egg-any egg-any:gall])
    ::  decrypt
    ::
    ::  =/  egg=*  *egg-any:gall
    (check [%egg-any egg])
  ::
  ++  check
    |=  foo=*
    ^-  (unit [%egg-any egg-any:gall])
    (mole |.(;;([%egg-any egg-any:gall] dat)))
  --
--
