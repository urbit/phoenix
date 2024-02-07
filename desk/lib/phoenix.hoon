/-  *phoenix, hark
::
|_  =bowl:gall
++  our-key  (shaz our-code)
++  our-code
  ^-  @t
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  %-  crip
  %+  slag  1
  %+  scow  %p
  .^(@p %j /[our]/code/[now]/[our])
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
  |=  [=ship =spur =case]
  ^-  (unit page)
  ?.  ?=([%ud @] case)  ~
  =/  fun=(unit fans:gall)
    (~(get by sky.bowl) [(scot %p ship) spur])
  ?~  fun  ~
  =/  wut=(unit (pair @da (each page @uvI)))
    (get:on-path u.fun p.case)
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
  ~|  "{<dap.bowl>}: grasp failed: {<dude>}"
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg raw)
  =/  egg-jam=@  (jam [%egg-any good-egg])
  =/  egg-crypt=[%atom @]
    (encrypt egg-jam our-key)
  `egg-crypt
::
++  encrypt
  |=  [msg=@ key=@]
  ^-  [%atom @]
  =/  cc=acru:ames   (pit:nu:crub:crypto 512 key)
  =/  encrypted-msg  (en:cc sec:ex:cc msg)
  =/     signed-msg  (sign:as:cc encrypted-msg)
  [%atom signed-msg]
::
++  decrypt
  |=  [msg=@ keys=(set @)]
  |^  ^-  (unit [%egg-any egg-any:gall])
      =/  keys=(list @)  ~(tap in keys)
      |-
      ?~  keys
        ~&  >>>  [dap.bowl %decryt-failed]
        ~
      ?^  res=(try i.keys msg)
        res
      $(keys t.keys)
  ::
  ++  try
    |=  [key=@ msg=@]
    ^-  (unit [%egg-any egg-any:gall])
    =/  cc=acru:ames  (pit:nu:crub:crypto 512 key)
    =/  sure=(unit @ux)  (sure:as:cc msg)
    ?~  sure  ~
    =/  res=(unit @ux)   (de:cc sec:ex:cc u.sure)
    ?~  res  ~
    (check u.res)
  ::
  ++  check
    |=  in=@
    ^-  (unit [%egg-any egg-any:gall])
    (mole |.(;;([%egg-any egg-any:gall] (cue in))))
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
