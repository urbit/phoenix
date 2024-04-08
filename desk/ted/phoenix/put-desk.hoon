/-  spider
/+  io=strandio
^-  thread:spider
|=  arg=vase
=+  !<([~ =desk key=(unit @)] arg)
=/  m  (strand:rand ,vase)
^-  form:m
;<  =bowl:rand  bind:m  get-bowl:io
;<  dudes=(set [dude:gall ?])  bind:m
  (scry:io ,(set [dude:gall ?]) /ge/[desk]/$)
=/  dudes=(list (pair dude:gall ?))  ~(tap in dudes)
::
|-
?~  dudes
  (pure:m !>(%done))
;<  ~  bind:m
  %-  send-raw-card:io
  ^-  card:agent:gall
  :*  %pass  /sav  %arvo  %k  %fard  q.byk.bowl
      %phoenix-put-dude  [%noun !>(`[p.i.dudes key])]
  ==
$(dudes t.dudes)
