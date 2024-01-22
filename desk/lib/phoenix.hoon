/-  hark
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
--
