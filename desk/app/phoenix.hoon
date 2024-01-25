::  TODO
::    encrypted data
::  use symetric encryption; it's faster
::  hash +code
::
::  %phoenix
::
::  :phoenix|add-guest ~zod
::  :phoenix|del-guest ~zod
::
::  :phoenix|snap %dojo
::  :phoenix|tomb %dojo ud+1, =where ~hodler
::  :phoenix|cull %dojo ud+1, =where ~hodler
::
::  :phoenix|put %dojo
::
::  :phoenix|query ~hodler
::  :phoenix|keen ~hodler %dude version=@ud
::
::  :phoenix|send-egg our %pals ~zod
::
::  :phoenix|import-clay our %pals /=data=/jams/some-backup/jam
::
::  +phoenix!guests
::  +phoenix!eggs
::  +phoenix!offers
::
::    scrys:
::  .^((set ship) %gx /=phoenix=/guests/noun)
::  .^((set ship) %gx /=phoenix=/depositors/noun)
::  .^((map ship (set [spur case])) %gx /=phoenix=/offers/noun)
::  .^((set [path case]) %gx /=phoenix=/offer/(scot %p our)/noun)
::
/-  *phoenix
/+  phoenix, default-agent, dbug, verb
=>
  |%
  +$  card  $+(card card:agent:gall)
  +$  versioned-state  $%(state-0)
  +$  state-0
    $:  %0
        keys=(set @)
        guests=(set ship)
        offers=(map ship offer)
    ==
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
      phx   ~(. phoenix bowl)
  ++  on-init  [[%pass /jael/pubs %arvo %j %public-keys ~]~ this]
  ++  on-save  !>(state)
  ++  on-load  |=(=vase `this(state !<(state-0 vase)))
  ++  on-poke
    |=  [=mark =vase]
    ^-  (quip card _this)
    =^  cards  state  abet:(poke:cor mark vase)
    [cards this]
  ++  on-leave  on-leave:def
  ++  on-watch  on-watch:def
  ++  on-arvo
    |=  [=wire =sign-arvo]
    ^-  (quip card _this)
    =^  cards  state  abet:(arvo:cor wire sign-arvo)
    [cards this]
  ++  on-peek
    |=  =(pole knot)
    ?+  pole  (on-peek:def pole)
      [%x %guests ~]  ``noun+!>(guests)
      [%x %offers ~]  ``noun+!>(offers)
    ::
        [%x %depositors ~]
      :^  ~  ~  %noun
      !>  ^-  (set ship)
      %-  silt
      %+  murn  ~(tap in ~(key by sky.bowl))
      |=  =path
      ?~  path  ~
      (slaw %p i.path)
    ::
        [%x %offer ship=@ ~]
      =/  =ship  (slav %p ship.pole)
      :^  ~  ~  %noun
      !>  ^-  offer
      (make-offer:phx ship)
    ==
  ::
  ++  on-agent
    |=  [=wire =sign:agent:gall]
    ^-  (quip card _this)
    =^  cards  state  abet:(agent:cor wire sign)
    [cards this]
  ++  on-fail   on-fail:def
  --
=|  cards=(list card)
|_  =bowl:gall
+*  cor   .
    phx   ~(. phoenix bowl)
    def   ~(. (default-agent cor %|) bowl)
++  abet  [(flop cards) state]
++  emit  |=(=card cor(cards [card cards]))
++  emil  |=(caz=(list card) cor(cards (welp (flop caz) cards)))
++  send-query
  |=  =ship
  %-  emit
  [%pass /query %agent [ship %phoenix] %poke [%phoenix-command !>([%query ~])]]

++  import-clay
  |=  [=ship =dude:gall =path]
  ^+  cor
  =+  .^(dat=@ %cx path)
  ::  XX  encrypt
  ::
  %-  emit
  [%pass / %grow /(scot %p ship)/[dude] [%atom dat]]
::
++  poke
  |=  [=mark =vase]
  ^+  cor
  ?+  mark  (on-poke:def mark vase)
    %phoenix-offer  (handle-offer !<(offer vase))
  ::
      %phoenix-command
    =+  !<(cmd=command vase)
    ?-    -.cmd
        ?(%query %cull %tomb %keen)
      ?-  -.cmd
        %query  (handle-query who.cmd)
        %cull   (handle-cull [dude case where]:cmd)
        %tomb   (handle-tomb [dude case where]:cmd)
        %keen   (handle-keen ship.cmd path.cmd)
      ==
    ::
        $?  %snap     %send       %restore
            %add-key  %add-guest  %put
            %del-key  %del-guest  %import-clay
        ==
      ?>  =(our src):bowl
      ?-  -.cmd
        %snap         (handle-snap dude.cmd)
        %send         (handle-send [dude case target]:cmd)
        %restore      (restore dude.cmd case.cmd)
        %put          (handle-put [ship dude case]:cmd)
        %import-clay  (import-clay [ship dude path]:cmd)
        %add-key      cor(keys (~(put in keys) key.cmd))
        %del-key      cor(keys (~(del in keys) key.cmd))
        %add-guest    cor(guests (~(put in guests) ship.cmd))
        %del-guest    cor(guests (~(del in guests) ship.cmd))
      ==
    ==
  ==
++  agent
  |=  [=(pole knot) =sign:agent:gall]
  ^+  cor
  ?+  pole  ~&([dap.bowl %strange-wire pole] cor)
    [%hark ~]   cor
    [%offer ~]  cor
    [%query ~]  cor
  ::
      [%sav dude=@ ~]
    =/  =dude:gall  (slav %tas dude.pole)
    %-  (slog leaf+"%phoenix: saved to put: {<dude>}" ~)
    cor
  ::
      [?(%send %keen %cull %tomb) *]
    ?.  ?=(%poke-ack -.sign)  cor
    ?~  p.sign
      (send-query src.bowl)  ::  too early? sleep, the push
    ~&  >>>  [dap.bowl %poke-fail src.bowl `path`pole]
    cor
  ==
::
++  arvo
  |=  [=(pole knot) =sign-arvo]
  ^+  cor
  ?+    pole  ~|([%bad-arvo-pole pole] !!)
      [%jael %pubs ~]
    ?>  ?=([%jael %public-keys *] sign-arvo)
    ?.  ?=(%breach -.public-keys-result.sign-arvo)
      cor
    =/  =ship   who.public-keys-result.sign-arvo
    ?~  offer=(make-offer:phx ship)                 ::  XX
      cor
    %-  (slog leaf+"%phoenix: {<ship>} breached" ~)
    =/  =cage  [%phoenix-offer !>(offer)]
    %-  emit
    [%pass /offer %agent [ship %phoenix] %poke cage]
  ::
      [%keen ~]
    ?.  ?=([%ames %tune *] sign-arvo)
      ~|([%bad-sign-arvo sign-arvo] !!)
    ?~  roar.sign-arvo
      cor
    =/  source=ship  ship.sign-arvo
    ?>  ?|  (our-team:phx source)
            (~(has in guests) source)
        ==
    =/  =roar:ames  u.roar.sign-arvo
    ?~  q.dat.roar
      cor
    =/  =page  u.q.dat.roar
    ?>  ?=([%atom @] u.q.dat.roar)
    =/  =dude:gall  (slav %tas (rear path.sign-arvo))  ::  XX
    %-  emit
    [%pass / %grow /(scot %p source)/[dude] page]
  ==
::  TODO
::
++  handle-put
  |=  [=ship =dude:gall =case]
  ^+  cor
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ::  XX sky, don't scry unless da+now
  ::
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    %-  (slog leaf+"%phoenix: dude not live: {<dude>}" ~)
    cor
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg:phx raw)
  =/  =path  /[dap.bowl]/[dude]/[now]/'jam'
  =/  dat=@  (jam good-egg)
  =/  =cage  [%drum-put !>([path dat])]
  %-  emit
  [%pass /sav/[dude] %agent [our.bowl %hood] %poke cage]
::
++  handle-keen
  |=  [=ship =path]
  ?>  ?|  (our-team:phx src.bowl)
          (~(has in guests) src.bowl)
      ==
  %-  emit
  [%pass /keen %arvo %a %keen ~ ship path]
::
++  handle-query
  |=  who=(unit ship)
  ?:  =(our src):bowl
    ?~  who  cor
    ?:  =(our.bowl u.who)
      ~&  >  (make-offer:phx our.bowl)
      cor
    (send-query u.who)
  ::  XX
  ::
  =/  =offer  (make-offer:phx src.bowl)
  =/  =cage  [%phoenix-offer !>(offer)]
  %-  emit
  [%pass /offer %agent [src.bowl %phoenix] %poke cage]
::
++  restore
  |=  [=dude:gall =case]
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    cor
  ~|  "{<dap.bowl>} failed to get {<dude>} {<case>}"
  =+  .^([%atom dat=@] %gx /[our]/[dap.bowl]/(scot case)//1/[our]/[dude])
  ::  XX  decrypt
  ::
  ~|  "{<dap.bowl>} failed @ to egg-any {<dude>} {<case>}"
  =+  ;;(=egg-any:gall (cue dat))
  =/  =cage  [%egg-any !>(egg-any)]
  %-  emit
  [%pass /phoenix %agent [our.bowl dude] %poke cage]
::
++  handle-offer
  |=  =offer
  ^+  cor
  ?<  =(our src):bowl
  ~&  >  [%phoenix src.bowl %offers (sort ~(tap in offer) aor)]
  =.  offers  (~(put by offers) src.bowl offer)
  =/  msg=cord  %-  crip
    " offers: {<(sort ~(tap in offer) aor)>}"
  (emil (send-hark:phx src.bowl msg))
::
++  handle-snap
  |=  =dude:gall
  ^+  cor
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    %-  (slog leaf+"%phoenix: dude not live: {<dude>}" ~)
    cor
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg:phx raw)
  =/  dat=@  (jam good-egg)
  ::  XX  encrypt
  ::
  %-  emit
  [%pass / %grow /(scot %p our.bowl)/[dude] [%atom dat]]
::
++  handle-send
  |=  [=dude:gall =case target=ship]
  ^+  cor
  ?>  ?=([%ud @] case)
  =/  =offer  (make-offer:phx our.bowl)
  ?.  (~(has in offer) [/(scot %p our.bowl)/[dude] case])
    ~&  >>>  [%phoenix %not-found dude case]
    cor
  =/  =path
    /g/x/(scot case)/[dap.bowl]//1/(scot %p our.bowl)/[dude]
  =/  =cage  [%phoenix-command !>([%keen our.bowl path])]
  %-  emit
  [%pass /send %agent [target %phoenix] %poke cage]
::
++  handle-cull
  |=  [=dude:gall =case where=ship]
  ?:  =(our.bowl where)
    =/  =spur  /(scot %p src.bowl)/[dude]
    %-  emit
    [%pass / %cull case spur]
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%cull dude case where])]
  [%pass /cull %agent [where %phoenix] %poke cage]
::
++  handle-tomb
  |=  [=dude:gall =case where=ship]
  ?:  =(our.bowl where)
    ::  TODO send-offer, or just query on ack
    ::
    =/  =spur  /(scot %p src.bowl)/[dude]
    %-  emit
    [%pass / %tomb case spur]
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%tomb dude case where])]
  [%pass /tomb %agent [where %phoenix] %poke cage]
::
++  encrypt
  |=  [e=egg-any:gall pw=@t]
  ^-  @
  !!
::
++  decrypt
  |=  [dat=@ pw=@t]
  ^-  (unit egg-any:gall)
  ::  try pw
  ::  |.  (try decrypt)
  ::  ?.  success
  ::    ~
  ::  `egg-any
  !!
--
