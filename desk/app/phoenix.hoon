::  %phoenix
::
::  :phoenix|add-admin ~zod
::  :phoenix|del-admin ~zod
::  :phoenix|get-dude %pals
::  :phoenix|send-egg our %pals
::
/-  *phoenix
/+  phoenix, default-agent, dbug, verb, *mip
=>
  |%
  +$  card  $+(card card:agent:gall)
  +$  versioned-state  $%(state-0)
  +$  state-0  [%0 records-0]
  --
=|  state-0
=*  state  -
%+  verb  &
%-  agent:dbug
^-  agent:gall
=<
  |_  =bowl:gall
  +*  this  .
      def   ~(. (default-agent this %|) bowl)
      cor   ~(. +> bowl)
  ++  on-init  `this
  ++  on-save  !>(state)
  ++  on-load  |=(=vase `this(state !<(state-0 vase)))
  ++  on-poke
    |=  [=mark =vase]
    ^-  (quip card _this)
    ?+    mark  (on-poke:def mark vase)
        %phoenix
      ?>  ?|  =(our src):bowl
              (~(has in admins) src.bowl)
          ==
      =+  !<([=dude:gall egg-jam=@] vase)
      =^  cards  state
        abet:(on-phoenix:cor src.bowl dude egg-jam)
      [cards this]
    ::
        %phoenix-command
      ?>  =(our src):bowl
      =+  !<(cmd=command vase)
      ?-    -.cmd
          %add-admin  `this(admins (~(put in admins) ship.cmd))
          %del-admin  `this(admins (~(del in admins) ship.cmd))
          %del-dude   `this(eggs (~(del bi eggs) src.bowl dude.cmd))
          %get-dude
        =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
        ?.  .^(? %gu /[our]/[dude.cmd]/[now]/$)
          [~ this]
        =+  .^(raw=egg-any:gall %gv /[our]/[dude.cmd]/[now]/$)
        =/  good-egg=egg-any:gall  (cook-egg raw)
        `this(eggs (~(put bi eggs) our.bowl dude.cmd (jam good-egg)))
      ::
          %send-egg
        =/  maybe-egg  (~(get bi eggs) ship.cmd dude.cmd)
        ?~  maybe-egg
          ~&  >>  [%phoenix 'dude not found']
          `this
        :: =/  good-egg=egg-any:gall  (cook-egg u.maybe-egg)
        :: =/  dat=@  (jam good-egg)
        =/  =cage  [%phoenix !>([dude.cmd u.maybe-egg])]
        :_  this
        [%pass /yeet %agent [ship.cmd dude.cmd] %poke cage]~
      ::
          ?(%put-all %put-desk %put-dude %restore %import-clay)
        =^  cards  state
          =<  abet
          ?-  -.cmd
            %put-all      put-all:cor
            %put-desk     (put-desk:cor desk.cmd)
            %put-dude     (put-dude:cor dude.cmd)
            %import-clay  (import-clay:cor [ship dude path]:cmd)
            %restore      (restore:cor dude.cmd)
          ==
        [cards this]
      ==
    ==
  ::
  ++  on-leave  on-leave:def
  ++  on-watch  on-watch:def
  ++  on-arvo
    |=  [=wire =sign-arvo]
    ^-  (quip card _this)
    =^  cards  state  abet:(arvo:cor wire sign-arvo)
    [cards this]
  ::
  ++  on-peek
    |=  =(pole knot)
    ?+  pole  (on-peek:def pole)
      [%x %admins ~]      ``noun+!>(admins)
      [%x %eggs ~]        ``noun+!>(~(key by eggs))
      [%x %egg dude=@ ~]  ``noun+!>((~(got by eggs) dude.pole))
    ==
  ::
  ++  on-agent
    |=  [=(pole knot) =sign:agent:gall]
    ?+    pole  (on-agent:def pole sign)
        [%yeet ~]  `this
        [%sav dude=@ ~]
      =/  =dude:gall  (slav %tas dude.pole)
      ~&  >  [%phoenix-saved dude]
      `this
    ==
  ++  on-fail   on-fail:def
  --
=|  cards=(list card)
|_  =bowl:gall
+*  cor   .
    phx   ~(. phoenix bowl)
++  abet  [(flop cards) state]
++  emit  |=(=card cor(cards [card cards]))
++  set-timer  |=(t=@dr [%pass /interval %arvo %b %wait (add t now.bowl)])
++  arvo
  |=  [=(pole knot) =sign-arvo]
  ^+  cor
  ?+  pole  ~|([%bad-arvo-pole pole] !!)
    [%eyre ~]  cor
  ==
::
++  put-desk
  |=  =desk
  =/  dudes  ~(tap in (live-dudes:phx desk))
  |-  ^+  cor
  ?~  dudes
    cor
  $(cor (put-dude i.dudes), dudes t.dudes)
::
++  put-all
  =/  dudes  ~(tap in all-live-dudes:phx)
  |-  ^+  cor
  ?~  dudes
    cor
  $(cor (put-dude i.dudes), dudes t.dudes)
::
++  put-dude
  |=  =dude:gall
  ^+  cor
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    ~&  >>  [%phoenix-ignore dude]
    cor
  ~&  >  [%phoenix-put dude]
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg raw)
  =/  =path  /[dap.bowl]/[dude]/[now]/'jam'
  =/  dat=@  (jam good-egg)
  =/  =cage  [%drum-put !>([path dat])]
  %-  emit
  [%pass /sav/[dude] %agent [our.bowl %hood] %poke cage]
::  TODO
::
:: ++  import-dat
::   |=  dat=@
::   =/  res  ;;(egg-any:gall (cue dat))
::   cor
::
++  import-clay
  |=  [=ship =dude:gall =path]
  =+  .^(dat=@ %cx path)
  :: =+  ;;(raw=egg-any:gall (cue dat))
  :: =/  good-egg=egg-any:gall  (cook-egg raw)
  :: =/  egg-
  :: ~&  >>>  %here
  cor(eggs (~(put bi eggs) ship dude dat))
::
++  cook-egg
  |=  raw=egg-any:gall
  ^-  egg-any:gall
  ?-    -.raw
      %15
    ?>  ?=(%live -.+.raw)
    raw(p.+.old-state.+ %noun)
  ==
::
++  restore
  |=  =dude:gall
  ^+  cor
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    cor
  ?~  maybe-egg=(~(get bi eggs) our.bowl dude)
    cor
  =+  ;;(=egg-any:gall (cue u.maybe-egg))
  =/  =cage  phoenix+!>(egg-any)
  %-  emit
  [%pass /phoenix %agent [our.bowl dude] %poke cage]
  
++  on-phoenix
  |=  [=ship =dude:gall egg-jam=@]
  ?:  &(=(ship our.bowl) =(dude dap.bowl))
    ::  TODO restore self
    ~&  >>  [%phoenix %todo]
    cor
  cor(eggs (~(put bi eggs) ship dude egg-jam))
--
