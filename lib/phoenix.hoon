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
--
