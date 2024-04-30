/-  spider
/+  io=strandio
^-  thread:spider
|=  arg=vase
=+  !<([~ key=(unit @)] arg)
=/  m  (strand:rand ,vase)
^-  form:m
;<  =bowl:rand  bind:m  get-bowl:io
;<  desks=(set desk)  bind:m  (scry:io ,(set desk) /cd/$)
=/  desks=(list desk)  ~(tap in desks)
::
|-
=*  outer  $
?~  desks
  (pure:m !>(%done))
;<  dudes=(set [dude:gall ?])  bind:m
  (scry:io ,(set [dude:gall ?]) /ge/[i.desks]/$)
=/  dudes=(list (pair dude:gall ?))  ~(tap in dudes)
::
|-
?~  dudes
  outer(desks t.desks)
;<  ~  bind:m
  %-  send-raw-card:io
  ^-  card:agent:gall
  :*  %pass  /sav  %arvo  %k  %fard  q.byk.bowl
      %phoenix-put-dude  [%noun !>(`[p.i.dudes key])]
  ==
$(dudes t.dudes)
