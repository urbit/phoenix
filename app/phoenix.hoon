::  :fleet &phoenix ;;(egg-any:s (cue j))
::
::  %phoenix
::
::  TODO
::    +import-dat
::      %mark?
::
::    +schedule
::      time
::      sub to a revision
::
::    +private-key-revisions
::      +encrypt
::      +decrypt
::
::    %grow / %keen
::      track acks
::
::    +on-rift                                            ::  breadth first?
::      ?:  (~(has by backups) ship)
::        +offer
::        %grow
::
/-  *phoenix
/+  phoenix, default-agent, dbug, verb, rudder
/~  pages  (page:rudder records command)  /app/phoenix/webui
=>
  |%
  +$  card  $+(card card:agent:gall)
  +$  versioned-state  $%(state-0)
  +$  state-0  [%0 records]
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
  ++  on-init
    ^-  (quip card _this)
    :_  this
    [%pass /eyre %arvo %e %connect `/apps/[dap.bowl] dap.bowl]~
  ::
  ++  on-save  !>(state)
  ++  on-load  |=(=vase `this(state !<(state-0 vase)))
  ++  on-poke
    |=  [=mark =vase]
    ^-  (quip card _this)
    ?>  =(our src):bowl
    ?+    mark  (on-poke:def mark vase)
        %noun
      ?+    q.vase  !!
          %fleet
        =/  =cage  [%phoenix !>((~(got by eggs) %fleet))]
        :_  this
        [%pass /yeet %agent [our.bowl %fleet] %poke cage]~
      ::
      ::    %import
      ::  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
      ::  =+  .^(dat=@ %cx /[our]/base/[now]/flt/jam)
      ::  (on-poke %phoenix-command !>([%import-dat dat]))
      ::
          %add-tmp
        =.  tmp
          (~(put by tmp) %fleet (jam (~(got by eggs) %fleet)))
        [~ this]
      ==
  ::
        %phoenix-command
      =+  !<(cmd=command vase)
      ?-    -.cmd
          %del-dude  `this(eggs (~(del by eggs) dude.cmd))
          %get-dude
        =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
        ?.  .^(? %gu /[our]/[dude.cmd]/[now]/$)
          [~ this]
        =+  .^(=egg-any %gv /[our]/[dude.cmd]/[now]/$)
        `this(eggs (~(put by eggs) dude.cmd egg-any))
      ::
          ?(%put-all %put-desk %put-dude %import-dat)
        =^  cards  state
          =<  abet
          ?-  -.cmd
            ::  TODO
            ::    (send-it ship @)
            ::
            %put-all     put-all:cor
            %put-desk    (put-desk:cor desk.cmd)
            %put-dude    (put-dude:cor dude.cmd)
            %import-dat  (import-dat:cor dat.cmd)
          ==
        [cards this]
      ==
    ::
        %handle-http-request
      ?>  =(our src):bowl
      =;  out=(quip card _+.state)
        [-.out this(+.state +.out)]
      %.  [bowl !<(order:rudder vase) +.state]
      %-  (steer:rudder _+.state command)
      :^    pages
          (point:rudder /apps/[dap.bowl] & ~(key by pages))
        (fours:rudder +.state)
      |=  cmd=command
      ^-  $@  brief:rudder
          [brief:rudder (list card) _+.state]
      =^  cards  this
        (on-poke %phoenix-command !>(`command`cmd))
      ['Processed succesfully.' cards +.state]
    ==
  ::
  ++  on-leave  on-leave:def
  ++  on-watch
    |=  =path
    ^-  (quip card _this)
    ?>  =(our src):bowl
    ?+  path  (on-watch:def path)
      [%http-response *]  `this
    ==
  ::
  ++  on-arvo
    |=  [=wire =sign-arvo]
    ^-  (quip card _this)
    =^  cards  state  abet:(arvo:cor wire sign-arvo)
    [cards this]
  ::
  ++  on-peek
    |=  =(pole knot)
    ?+  pole  (on-peek:def pole)
      [%x %eggs ~]        ``noun+!>(~(key by eggs))
      [%x %egg dude=@ ~]  ``noun+!>((~(got by eggs) dude.pole))
      [%x %tmp dude=@ ~]  ``noun+!>((~(got by tmp) dude.pole))
      [%x %tmps ~]        ``noun+!>(~(key by tmp))
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
  ?+    pole  ~|([%bad-arvo-pole pole] !!)
      [%eyre ~]  cor
      [%interval ~]
    ?>  ?=([%behn %wake *] sign-arvo)
    ?^  error.sign-arvo
      %-  (slog '%phoenix %timer-error' u.error.sign-arvo)
      ::(emit (set-timer run-interval))
      cor
    ::on-interval
    cor
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
  =+  .^(=egg-any %gv /[our]/[dude]/[now]/$)
  =/  =path  /[dap.bowl]/[dude]/[now]/'jam'
  =/  dat=@  (jam egg-any)
  =/  =cage  [%drum-put !>([path dat])]
  %-  emit
  [%pass /sav/[dude] %agent [our.bowl %hood] %poke cage]
::  TODO
::
++  import-dat
  |=  dat=@
  =/  res  ;;(egg-any (cue dat))
  cor
--
