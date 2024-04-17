|%
++  on-path  ((on @ud (pair @da (each page @uvI))) lte)
++  farm-to-sky
  =,  gall
  |=  =farm
  ^-  (map path fans)
  (~(run-plot of-farm farm) (bake tail ,plot))
::
++  fresh-egg
  =,  gall
  |=  =egg-any
  |^  ^-  egg
  ?-  -.egg-any
    %15  (egg-15-to-egg +.egg-any)
    %16  +.egg-any
  ==
  ::
  ++  egg-15-to-egg
    |=  e=egg-15
    ^-  egg
    ?:  ?=(%nuke -.e)  [%nuke ~ ~]
    %=    e
        ken  [ken.e ~ ~]
    ::
        sky
      =|  =farm
      =/  ski  ~(tap by sky.e)
      |-  ^+  farm
      ?~  ski
        farm
      =/  [=spur p=plot]  i.ski
      =;  new
        ?~  nex=(~(put-grow of-farm farm) spur new)
          ~&  %weird
          !!  :: shouldn't continue else loss of ref integrity
          :: $(ski t.ski)
        $(farm u.nex, ski t.ski)
      :-  ~
      =/  m  ~(val by fan.p)
      %+  gas:on-path  *_fan.p
      %+  turn
        ^-  (list @)
        =/  wit  ~(wyt by fan.p)
        ?:  =(0 wit)  ~
        (gulf 1 wit)
      |=  a=@ud
      [a (snag (dec a) m)]
    ==
  --
::
++  of-farm
  =,  gall
  |_  =farm
  ++  key-coops
    |=  pos=path
    ^-  (list coop)
    =/  frm  (get-farm pos)
    ?~  frm  ~
    =.  farm  u.frm
    |-
    ?:  ?=(%coop -.farm)
      ~[pos]
    %-  zing
    %+  turn  ~(tap by q.farm)
    |=  [seg=@ta f=^farm]
    ^-  (list coop)
    ^$(pos (snoc pos seg), farm f)
  ::
  ++  match-coop
    =|  wer=path
    |=  =path
    ^-  (unit coop)
    ?:  ?=(%coop -.farm)
      `(flop wer)
    ?~  path
      ~
    ?~  nex=(~(get by q.farm) i.path)
      ~
    $(wer [i.path wer], path t.path, farm u.nex)
  ::
  ++  put
    |=  [=path =plot]
    ^-  _farm
    ?:  ?=(%coop -.farm)
      farm(q (~(put by q.farm) path plot))
    ?~  path
      farm(p `plot)
    =/  nex  (~(get by q.farm) i.path)
    =/  res  $(path t.path, farm ?~(nex *^farm u.nex))
    farm(q (~(put by q.farm) i.path res))
  ::
  ++  put-grow
    |=  [=path =plot]
    ^-  (unit _farm)
    ?:  ?=(%coop -.farm)
      ~
    ?~  path
      `farm(p `plot)
    =/  nex  (~(get by q.farm) i.path)
    =/  res
      $(path t.path, farm ?~(nex *^farm u.nex))
    ?~  res  ~
    `farm(q (~(put by q.farm) i.path u.res))
  ::
  ++  put-tend
    |=  [=path =plot]
    ^-  (unit _farm)
    ?:  ?=(%coop -.farm)
      `farm(q (~(put by q.farm) path plot))
    ?~  path
      `farm(p `plot)
    ?~  nex=(~(get by q.farm) i.path)
      ~
    =/  res
      $(path t.path, farm u.nex)
    ?~  res  ~
    `farm(q (~(put by q.farm) i.path u.res))
  ::
  ++  grow
    |=  [=spur now=@da =page]
    =/  ski  (gut spur)
    %+  put  spur
    =-  ski(fan (put:on-path fan.ski -< -> &/page))
    ?~  las=(ram:on-path fan.ski)
      [?~(bob.ski 1 +(u.bob.ski)) now]
    :_  (max now +(p.val.u.las))
    ?~(bob.ski +(key.u.las) +((max key.u.las u.bob.ski)))
  ::
  ++  germ
    |=  [=coop =hutch]
    ^-  (unit _farm)
    ?~  coop
      ?.  |(=(%coop -.farm) =([%page ~ ~] farm))
        ~
      `[%coop hutch ~]
    ?:  ?=(%coop -.farm)
      ~
    ?~  nex=(~(get by q.farm) i.coop)
      ~
    $(coop t.coop, farm u.nex)
  ::
  ++  tend
    |=  [=coop =path =plot]
    ^-  (unit _farm)
    ?~  coop
      ?.  ?=(%coop -.farm)
        ~
      `farm(q (~(put by q.farm) path plot))
    ?.  ?=(%plot -.farm)
      ~
    ?~  nex=(~(get by q.farm) i.coop)
      ~
    $(coop t.coop, farm u.nex)
  ::
  ++  del
    |=  =path
    ^+  farm
    ?:  ?=(%coop -.farm)
      farm(q (~(del by q.farm) path))
    ?~  path
      farm(p ~)
    ?~  nex=(~(get by q.farm) i.path)
      farm
    $(path t.path, farm u.nex)
  ::
  ++  gut
    |=  =path
    ^-  plot
    (fall (get path) *plot)
  ::
  ++  put-hutch
    |=  [=path =hutch]
    ^-  (unit _farm)
    ?~  path
      ?:  ?=(%coop -.farm)
        `farm(p hutch)
      ?.  =([%plot ~ ~] farm)
        ~
      `[%coop hutch ~]
    ?:  ?=(%coop -.farm)
      ~
    =/  nex  (~(gut by q.farm) i.path *^farm)
    =/  res  $(path t.path, farm nex)
    ?~  res  ~
    `farm(q (~(put by q.farm) i.path u.res))
  ::
  ++  get-hutch
    |=  =path
    ^-  (unit hutch)
    ?~  path
      ?.  ?=(%coop -.farm)
        ~
      `p.farm
    ?:  ?=(%coop -.farm)
      ~
    ?~  nex=(~(get by q.farm) i.path)
      ~
    $(path t.path, farm u.nex)
  ::
  ++  get-farm
    |=  =path
    ^-  (unit ^farm)
    ?:  ?=(%coop -.farm)
      ?~  (~(get by q.farm) path)
        ~
      `farm
    ?~  path  ~
    ?~  nex=(~(get by q.farm) i.path)
      ~
    $(path t.path, farm u.nex)
  ::
  ++  get
    |=  =path
    ^-  (unit plot)
    ?:  ?=(%coop -.farm)
      (~(get by q.farm) path)
    ?~  path
      p.farm
    ?~  nex=(~(get by q.farm) i.path)
      ~
    $(path t.path, farm u.nex)
  ::
  ++  tap-plot
    =|  wer=path
    |-  ^-  (list [path plot])
    =*  tap-plot  $
    ?:  ?=(%coop -.farm)
      %+  turn  ~(tap by q.farm)
      |=  [=path =plot]
      [(welp wer path) plot]
    %+  welp  ?~(p.farm ~ [wer u.p.farm]~)
    %-  zing
    %+  turn  ~(tap by q.farm)
    |=  [seg=@ta f=^farm]
    ^-  (list [path plot])
    tap-plot(wer (snoc wer seg), farm f)
  ::
  ++  run-plot
    |*  fun=gate
    %-  ~(gas by *(map path _(fun)))
    %+  turn  tap-plot
    |=  [=path =plot]
    [path (fun plot)]
  ::
  ++  gas-hutch
    |=  =(list [=coop =hutch])
    ^-  (unit _farm)
    ?~  list
      `farm
    =/  nex
      (put-hutch i.list)
    ?~  nex  ~
    $(farm u.nex, list t.list)
  ::
  ++  tap-hutch
    =|  wer=path
    %-  ~(gas in *(set [=coop =hutch]))
    |-  ^-  (list [=coop =hutch])
    =*  loop  $
    ?:  ?=(%coop -.farm)
      [wer p.farm]~
    %-  zing
    %+  turn  ~(tap by q.farm)
    |=  [seg=@ta f=^farm]
    ^-  (list [=coop =hutch])
    loop(wer (snoc wer seg), farm f)
  --
--
