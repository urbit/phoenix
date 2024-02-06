::  %phoenix
::
::  :phoenix|add-guest ~zod
::  :phoenix|del-guest ~zod
::
::  :phoenix|add-key 'lidlut-tabwed-pillex-ridrup', =raw |
::  :phoenix|del-key @
::
::  :phoenix|snap %dude
::  :phoenix|send %dude ud+42 ~hodler
::  :phoenix|restore %dude ud+42
::
::  :phoenix|tomb %dude ud+42, =where `~hodler
::  :phoenix|cull %dude ud+42, =where `~hodler
::
::  :phoenix|query ~hodler
::  :phoenix|keen ~hodler %dude ud+42
::
::  :phoenix|put our %dude ud+42
::  :phoenix|import-clay our %dude /=desk=/some-backup/jam
::
::  +phoenix!gt
::  +phoenix!guests
::  +phoenix!offer ~zod
::  +phoenix!offers
::
::    scrys:
::  .^((set @) %gx /=phoenix=/keys/noun)
::  .^((set ship) %gx /=phoenix=/guests/noun)
::  .^((set ship) %gx /=phoenix=/depositors/noun)
::  .^((map ship (set [spur case])) %gx /=phoenix=/offers/noun)
::  .^((set [path case]) %gx /=phoenix=/offer/(scot %p our)/noun)
::  .^(egg-any:gall %gx /=phoenix=/egg-any/(scot %p our)/(scot ud+42)/dude/noun)
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
      [%x %keys ~]    ``noun+!>(keys)
      [%x %guests ~]  ``noun+!>(guests)
      [%x %offers ~]  ``noun+!>(offers)
    ::
        [%x %offer ship=@ ~]
      :^  ~  ~  %noun
      !>  ^-  offer
      (make-offer:phx (slav %p ship.pole))
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
        [%x %egg-any ship=@ case=@ spur=*]
      =/  =ship  (slav %p ship.pole)
      =/  case=(unit case)  (de-case case.pole)
      ?~  case  ~
      =/  dat=(unit page)
        (pluck:phx ship spur.pole u.case)
      ?~  dat  ~
      ?.  ?=([%atom @] u.dat)
        ~
      =/  egg-page=(unit page)
        ^-  (unit [%egg-any egg-any:gall])
        (decrypt:phx q.u.dat keys)
      ?~  egg-page  ~
      =+  ;;(=egg-any:gall q.u.egg-page)
      ``noun+!>(egg-any)
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
++  grow
  |=  [owner=@p =spur =page]
  %-  emit
  [%pass / %grow [(scot %p owner) spur] page]
::
++  send-query
  |=  =ship
  %-  emit
  [%pass /query %agent [ship %phoenix] %poke [%phoenix-command !>([%query ~])]]
::
++  import-clay
  |=  [=ship =spur =path]
  ^+  cor
  =+  .^(dat=@ %cx path)
  =/  page  (cue dat)
  ?.  ?=([%atom @] page)
    ~&  >>>  "{<dap.bowl>}: import failed"
    cor
  (grow ship spur page)
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
        %cull   (handle-cull [case spur where]:cmd)
        %tomb   (handle-tomb [case spur where]:cmd)
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
        %send         (handle-send [case spur target]:cmd)
        %restore      (handle-restore [ship spur case dude]:cmd)
        %put          (handle-put [ship spur case]:cmd)
        %import-clay  (import-clay [ship spur path]:cmd)
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
  ?+  pole  ~&([dap.bowl %strange-wire `path`pole] cor)
    [%hark ~]     cor
    [%send ~]     cor
    [%offer ~]    cor
    [%query ~]    cor
    [%phoenix ~]  cor
  ::
      [%sav rest=*]
    ?.  ?=(%poke-ack -.sign)
      ~&  >>>  [dap.bowl %put-failed `path`rest.pole]
      cor
    ~&  >  [dap.bowl %saved-to-put `path`rest.pole]
    cor
  ::
      [?(%cull %tomb) *]
    ?.  ?=(%poke-ack -.sign)  cor
    ?~  p.sign
      (send-query src.bowl)
    ~&  >>>  [dap.bowl %poke-failed src.bowl `path`pole]
    cor
  ==
::
++  arvo
  |=  [=(pole knot) =sign-arvo]
  ^+  cor
  ?+    pole  ~&([dap.bowl %strange-arvo-wire `path`pole] cor)
      [%jael %pubs ~]
    ?>  ?=([%jael %public-keys *] sign-arvo)
    ?.  ?=(%breach -.public-keys-result.sign-arvo)
      cor
    =/  =ship   who.public-keys-result.sign-arvo
    ?~  offer=(make-offer:phx ship)
      cor
    ~&  >>  "{<dap.bowl>}: {<ship>} breached"
    %-  emit
    =/  =cage  [%phoenix-offer !>(offer)]
    [%pass /offer %agent [ship %phoenix] %poke cage]
  ::
      [%wake %offer ship=@ ~]
    ?>  ?=([%behn %wake *] sign-arvo)
    ?^  error.sign-arvo
      cor
    (send-offer (slav %p ship.pole))
  ::
      [%keen ~]
    ?.  ?=([%ames %tune *] sign-arvo)
      ~|([%bad-sign-arvo sign-arvo] !!)
    ?~  roar.sign-arvo
      cor
    =/  source=ship  ship.sign-arvo
    =/  pax=path     (slag 6 path.sign-arvo)
    ?.  ?=(^ pax)
      ~&  >>>  [dap.bowl %bad-keen-path path.sign-arvo]
      cor
    =/  owner=ship  (slav %p i.pax)
    =/  =spur       t.pax
    ?>  ?|  (our-team:phx owner)
            (~(has in guests) owner)
        ==
    =/  =roar:ames  u.roar.sign-arvo
    ?~  q.dat.roar
      cor
    =/  =page  u.q.dat.roar
    ?.  ?=([%atom @] page)
      ~&  >>>  [dap.bowl %unsupported-page]
      cor
    =.  cor  (grow owner spur page)
    =?  cor  !=(our.bowl owner)
      %-  emit
      [%pass /wake/offer/(scot %p owner) %arvo %b %wait now.bowl]
    cor
  ==
::
++  handle-put
  |=  [=ship =spur =case]
  ^+  cor
  =/  pug=(unit page)
    (grasp:phx ship spur case)
  ?~  pug
    ~&  >>>  [dap.bowl %not-found ship spur case]
    cor
  ?.  ?=([%atom @] u.pug)
    ~&  >>>  [dap.bowl %unsupported-page]
    cor
  =/  dat=@  (jam u.pug)
  %-  emit
  =/  ship-sig=tape   (slag 1 (scow %p ship))
  =/  directory=path  [dap.bowl (crip ship-sig) spur]
  =/  file-name=path
    /[(crip :(weld ship-sig "-" spur "-" (scow case)))]/'jam'
  =/  =path  (weld directory file-name)
  =/  =wire  [%sav path]
  =/  =cage  [%drum-put !>([path dat])]
  [%pass wire %agent [our.bowl %hood] %poke cage]
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
      ~&  >  (sort ~(tap in (make-offer:phx our.bowl)) aor)
      cor
    (send-query u.who)
  (send-offer src.bowl)
::
++  send-offer
  |=  =ship
  =/  =offer  (make-offer:phx ship)
  =/  =cage  [%phoenix-offer !>(offer)]
  %-  emit
  [%pass /offer %agent [ship %phoenix] %poke cage]
::
++  handle-restore
  |=  [=ship =spur =case =dude:gall]
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    ~&  >>>  [dap.bowl 'restore failed: not running:' dude]
    cor
  =/  dat=(unit page)
    (pluck:phx ship spur case)
  ?~  dat
    ~&  >>>  [dap.bowl 'restore failed: not found:' ship spur case]
    cor
  ?.  ?=([%atom @] u.dat)
    ~&  >>>  [dap.bowl 'restore failed: unsupported format']
    cor
  =.  keys  (~(put in keys) our-key:phx)
  =/  egg-page=(unit page)
    ^-  (unit [%egg-any egg-any:gall])
    (decrypt:phx q.u.dat keys)
  ?~  egg-page
    ~&  >>>  [dap.bowl 'restore-failed: missing page']
    cor
  %-  emit
  =+  ;;(=egg-any:gall q.u.egg-page)
  =/  =cage  [%egg-any !>(egg-any)]
  [%pass /phoenix %agent [our.bowl dude] %poke cage]
::
++  handle-offer
  |=  =offer
  ^+  cor
  ?<  =(our src):bowl
  ~&  >  "{<dap.bowl>}: {<src.bowl>} offers: {<(sort ~(tap in offer) aor)>}"
  =.  offers  (~(put by offers) src.bowl offer)
  =/  msg=cord  %-  crip
    " offers: {<(sort ~(tap in offer) aor)>}"
  (emil (send-hark:phx src.bowl msg))
::
++  handle-snap
  |=  =dude:gall
  ^+  cor
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ~|  "{<dap.bowl>}: snap failed: {<dude>}"
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg:phx raw)
  =/  egg-page=page  [%egg-any good-egg]
  =/  egg-jam=@      (jam egg-page)
  =/  key=@  our-key:phx
  =.  keys   (~(put in keys) key)
  =/  =page  (encrypt:phx egg-jam key)
  (grow our.bowl /[dude] page)
::
++  handle-send
  |=  [=case =spur target=ship]
  ^+  cor
  ?<  =(our.bowl target)
  ?>  ?=([%ud @] case)
  =/  =offer  (make-offer:phx our.bowl)
  ?.  (~(has in offer) [(scot %p our.bowl) spur] case)
    ~&  >>  "{<dap.bowl>}: not found: {<spur>} {<case>}"
    cor
  %-  emit
  =/  =path
    (weld /g/x/(scot case)/[dap.bowl]//1/(scot %p our.bowl) spur)
  =/  =cage  [%phoenix-command !>([%keen our.bowl path])]
  [%pass /send %agent [target %phoenix] %poke cage]
::
++  handle-cull
  |=  [=case =spur where=ship]
  ?:  =(our.bowl where)
    %-  emit
    =/  =^spur  [(scot %p src.bowl) spur]
    [%pass / %cull case spur]
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%cull case spur where])]
  [%pass /cull %agent [where %phoenix] %poke cage]
::
++  handle-tomb
  |=  [=case =spur where=ship]
  ?:  =(our.bowl where)
    %-  emit
    =/  =^spur  [(scot %p src.bowl) spur]
    [%pass / %tomb case spur]
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%tomb case spur where])]
  [%pass /tomb %agent [where %phoenix] %poke cage]
--
