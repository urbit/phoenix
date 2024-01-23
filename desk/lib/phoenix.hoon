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
  ^-  (list (pair spur case))
  %-  zing
  %+  murn  ~(tap by sky.bowl)
  |=  [pax=path =fans:gall]
  ^-  (unit (list (pair spur case)))
  ?~  pax  ~
  ?.  =(ship (slav %p i.pax))
    ~
  %-  some
  ^-  (list (pair spur case))
  %+  murn  (tap:on-path fans)
  |=  [rev=@ud wen=@da wut=(each page @uvI)]
  ^-  (unit (pair spur case))
  ?-  -.wut
    %|  ~
    %&  `[pax ud+rev]
  ==
--
