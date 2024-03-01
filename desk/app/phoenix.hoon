::  %phoenix
::
::  :phoenix|add-guest ~zod
::  :phoenix|del-guest ~zod
::
::  :phoenix|snap %dude
::  :phoenix|send [[our %dude ud+42] /] ~hodler
::  :phoenix|put [[our %dude ud+42] /]
::  :phoenix|import-clay owner=ship %dude /=desk=/owner-dude-42/jam
::
::  :phoenix|query ~hodler
::  :phoenix|keen [[our %dude ud+42] /] ~hodler
::  :phoenix|tomb [[our %dude ud+42] /] ~hodler
::  :phoenix|cull [[our %dude ud+42] /] ~hodler
::
::  :phoenix|add-key (shaz 'lidlut-tabwed-pillex-ridrup')
::  :phoenix|del-key @
::
::  :phoenix|restore [[our %dude ud+42] /] %dude
::
::  -phoenix!phoenix-put-keys
::
::  -phoenix!phoenix-put-dude %dude `(shaz 'lidlut-tabwed-pillex-ridrup')
::  -phoenix!phoenix-put-desk %desk `(shaz 'lidlut-tabwed-pillex-ridrup')
::  -phoenix!phoenix-put-all `(shaz 'lidlut-tabwed-pillex-ridrup')
::
::    scrys:
::  .^((set @) %gx /=phoenix=/keys/noun)
::  .^((set ship) %gx /=phoenix=/guests/noun)
::  .^((set ship) %gx /=phoenix=/depositors/noun)
::  .^((map ship (set [spur case])) %gx /=phoenix=/offers/noun)
::  .^((set [path case]) %gx /=phoenix=/offer/(scot %p our)/noun)
::  .^(egg-any:gall %gx /=phoenix=/egg-any/(scot %p our)/dude/(scot ud+42)/noun)
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
  ++  on-init
    ^-  (quip card _this)
    :_(this [put-keys:cor ~])
  ++  on-save  !>(state)
  ++  on-load  |=(=vase `this(state !<(versioned-state vase)))
  ++  on-poke
    |=  [=mark =vase]
    ^-  (quip card _this)
    =^  cards  state  abet:(poke:cor mark vase)
    [cards this]
  ++  on-watch  on-watch:def
  ++  on-leave  on-leave:def
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
      %+  murn  ~(tap by sky.bowl)
      |=  [=path =fans:gall]
      ?~  path  ~
      ?~  who=(slaw %p i.path)  ~
      ?.  %+  any:on-path:phx  fans
          |=  [rev=@ud wen=@da wut=(each page @uvI)]
          -.wut
        ~
      who
    ::
        [%x %egg-any beam=*]
      ?~  bem=(de-beam beam.pole)  ~
      ?~  dat=(pluck:phx u.bem)    ~
      =+  ;;([%phx =key-id msg=@] u.dat)
      ?~  egg-page=(decrypt:phx [key-id msg] keys)
        ~
      =+  ;;(=egg-any:gall q.u.egg-page)
      ``noun+!>(egg-any)
    ==
  ::
  ++  on-agent
    |=  [=wire =sign:agent:gall]
    ^-  (quip card _this)
    ?+    wire  (on-agent:def wire sign)
        [?(%cull %hark %offer %phoenix %query %send %tomb) ~]
      [~ this]
    ::
        [%sav *]
      ?>  ?=([%poke-ack ~] sign)
      ~&  >  [dap.bowl %saved-to-put t.wire]
      [~ this]
    ==
  ::
  ++  on-arvo
    |=  [=wire =sign-arvo]
    ^-  (quip card _this)
    =^  cards  state  abet:(arvo:cor wire sign-arvo)
    [cards this]
  ++  on-fail   on-fail:def
  --
=|  cards=(list card)
|_  =bowl:gall
+*  cor   .
    phx   ~(. phoenix bowl)
++  abet  [(flop cards) state]
++  emit  |=(=card cor(cards [card cards]))
++  emil  |=(caz=(list card) cor(cards (welp (flop caz) cards)))
++  grow
  |=  [owner=@p =spur =page]
  %-  emit
  [%pass / %grow [(scot %p owner) spur] page]
::
++  put-keys
  ^-  card
  :*  %pass  /keys  %arvo  %k  %fard  q.byk.bowl
      %phoenix-put-keys  [%noun !>(~)]
  ==
::
++  send-query
  |=  =ship
  %-  emit
  =/  =cage  [%phoenix-command !>([%query our.bowl])]
  [%pass /query %agent [ship %phoenix] %poke cage]
::
++  wake-offer
  |=  =ship
  ^+  cor
  ?:  =(our.bowl ship)
    cor
  (emit [%pass /wake/offer/(scot %p ship) %arvo %b %wait now.bowl])
::
++  handle-import
  |=  [=ship =spur =page]
  ^+  cor
  ?>  =(our src):bowl
  ~|  [dap.bowl %import-failed ship spur]
  ?>  ?=([%phx key-id msg=@] page)
  ~&  >  [dap.bowl %imported ship spur]
  (grow ship spur page)
::
++  poke
  |=  [=mark =vase]
  ^+  cor
  ?+    mark  ~|("unexpected poke to {<dap.bowl>} with mark {<mark>}" !!)
      %egg-any
    ?>  =(our src):bowl
    (on-egg-any mark vase)
  ::
    %phoenix-offer  (handle-offer !<(offer vase))
  ::
      %phoenix-command
    =+  !<(cmd=command vase)
    ?-  -.cmd
      %query  (handle-query ship.cmd)
      %keen   (handle-keen [beam where]:cmd)
      %tomb   (handle-tomb [beam where]:cmd)
      %cull   (handle-cull [beam where]:cmd)
    ::
        $?  %snap      %send       %put
            %add-keys  %add-guest  %import
            %del-keys  %del-guest  %restore
        ==
      ?>  =(our src):bowl
      ?-  -.cmd
        %snap       (handle-snap dude.cmd)
        %send       (handle-send [beam where]:cmd)
        %restore    (handle-restore [beam dude]:cmd)
        %put        (handle-put beam.cmd)
        %import     (handle-import [ship spur page]:cmd)
        %del-guest  cor(guests (~(del in guests) ship.cmd))
      ::
          %add-guest
        =.  guests  (~(put in guests) ship.cmd)
        %-  emit
        [%pass /jael/pubs %arvo %j %public-keys (silt ship.cmd ~)]
      ::
          %add-keys
        =/  old  keys
        =.  keys  (~(uni in keys) keys.cmd)
        ?:  =(old keys)
          cor
        (emit put-keys)
      ::
          %del-keys
        =/  old  keys
        =.  keys  (~(dif in keys) keys.cmd)
        ?:  =(old keys)
          cor
        (emit put-keys)
      ==
    ==
  ==
::
++  arvo
  |=  [=(pole knot) =sign-arvo]
  ^+  cor
  ?+    pole  ~&([dap.bowl %strange-arvo-wire `path`pole] cor)
      [%keys ~]  cor
      [%jael %pubs ~]
    ?>  ?=([%jael %public-keys *] sign-arvo)
    ?.  ?=(%breach -.public-keys-result.sign-arvo)
      cor
    =/  =ship  who.public-keys-result.sign-arvo
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
      [%keen cmd-src=@ ~]
    ?.  ?=([%ames %tune *] sign-arvo)
      ~|([%bad-sign-arvo sign-arvo] !!)
    ?~  roar.sign-arvo
      cor
    =/  cmd-src=ship   (slav %p cmd-src.pole)
    =/  data-src=ship  ship.sign-arvo
    =/  pax=path       (slag 6 path.sign-arvo)
    ?.  ?=(^ pax)
      ~&  >>>  [dap.bowl %bad-keen-path path.sign-arvo]
      cor
    =/  owner=ship  (slav %p i.pax)
    =/  =spur       t.pax
    ?.  ?|  =(our.bowl owner)
            (~(has in guests) owner)
        ==
      ~&  >>>  :*  dap.bowl  %strange-data
                   cmd-src=cmd-src  data-src=data-src
                   path.sign-arvo
               ==
      cor
    =/  =roar:ames  u.roar.sign-arvo
    ?~  q.dat.roar
      cor
    =/  =page  u.q.dat.roar
    ?>  ?=([%phx key-id @] page)
    ~&  >  "{<dap.bowl>}: received from {<data-src>}: [{<owner>} {<spur>}]"
    =.  cor  (grow owner spur page)
    (wake-offer owner)
  ==
::
++  handle-put
  |=  =beam
  ^+  cor
  =/  page=(unit page)
    ?:  ?&  =(our.bowl p.beam)
            =([%da now.bowl] r.beam)
        ==
      `(snap:phx q.beam)
    (pluck:phx beam)
  ?~  page
    ~&  >>>  [dap.bowl %not-found beam]
    cor
  ?>  ?=([%phx key-id msg=@] u.page)
  =/  dat=@  (jam u.page)
  %-  emit
  =/  ship-sig=@t   (crip +:(scow %p p.beam))
  =/  directory=path
    :~  dap.bowl  ship-sig
        (reel (join '-' [q.beam s.beam]) (cury cat 3))
    ==
  =/  file-name=path
    =/  cas=@t
      ?.  ?=(%da -.r.beam)
        (scot r.beam)
      (pretty-date:phx p.r.beam)
    :_  /'jam'
    %-  reel  :_  (cury cat 3)
    %+  join  '-'
    (weld [ship-sig q.beam s.beam] /[cas])
  =/  =path  (weld directory file-name)
  =/  =wire  [%sav path]
  =/  =cage  [%drum-put !>([path dat])]
  [%pass wire %agent [our.bowl %hood] %poke cage]
::
++  handle-query
  |=  =ship
  ?:  =(our src):bowl
    ?:  =(our.bowl ship)
      ~&  >  (sort ~(tap in (make-offer:phx our.bowl)) aor)
      cor
    (send-query ship)
  ?>  =(src.bowl ship)
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
  |=  [=beam =dude:gall]
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    ~&  >>>  [dap.bowl 'restore failed: not running:' dude]
    cor
  =/  dat=(unit page)  (pluck:phx beam)
  ?~  dat
    ~&  >>>  [dap.bowl 'restore failed: not found:' beam]
    cor
  =+  ;;([%phx =key-id msg=@] u.dat)
  =.  keys  (~(put in keys) our-key:phx)
  ?~  egg-page=(decrypt:phx [key-id msg] keys)
    ~&  >>>  [dap.bowl 'restore-failed: no decryption result']
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
  ~&  >  [dap.bowl src.bowl %offers (sort ~(tap in offer) aor)]
  =.  offers  (~(put by offers) src.bowl offer)
  =/  msg=cord  %-  crip
    " offers: {<(sort ~(tap in offer) aor)>}"
  (emil (send-hark:phx src.bowl msg))
::
++  handle-snap
  |=  =dude:gall
  ^+  cor
  =/  =page  (snap:phx dude)
  =.  keys  (~(put in keys) our-key:phx)
  (grow our.bowl /[dude] page)
::
++  make-keen-path
  |=  =beam
  ^-  path
  =+  [case=(scot r.beam) who=(scot %p p.beam)]
  (weld /g/x/[case]/[dap.bowl]//1 [who q.beam s.beam])
::
++  handle-send
  |=  [=beam =ship]
  ^+  cor
  ?>  =(our src):bowl
  ?<  =(our.bowl ship)
  ?~  (pluck:phx beam)
    ~&  >>  [dap.bowl %not-found beam]
    cor
  %-  emit
  =/  =cage  [%phoenix-command !>([%keen beam our.bowl])]
  [%pass /send %agent [ship %phoenix] %poke cage]
::
++  handle-keen
  |=  [=beam =ship]
  ?>  ?|  =(our src):bowl
          ?&  =(src.bowl ship)
              =(src.bowl p.beam)
              (~(has in guests) src.bowl)
          ==
      ==
  %-  emit
  =/  keen-path=path  (make-keen-path beam)
  [%pass /keen/(scot %p src.bowl) %arvo %a %keen ~ ship keen-path]
::
++  handle-tomb
  |=  [=beam where=ship]
  ?:  =(where our.bowl)
    ?>  ?|  =(our src):bowl
            =(p.beam src.bowl)
        ==
    =.  cor
      (emit [%pass / %tomb r.beam [(scot %p p.beam) q.beam s.beam]])
    (wake-offer p.beam)
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%tomb beam where])]
  [%pass /tomb %agent [where %phoenix] %poke cage]
::
++  handle-cull
  |=  [=beam where=ship]
  ?:  =(where our.bowl)
    ?>  ?|  =(our src):bowl
            =(p.beam src.bowl)
        ==
    =.  cor
      (emit [%pass / %cull r.beam [(scot %p p.beam) q.beam s.beam]])
    (wake-offer p.beam)
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%cull beam where])]
  [%pass /cull %agent [where %phoenix] %poke cage]
::
++  on-egg-any
  |=  [=mark =vase]
  ?>  =(our src):bowl
  ?>  =(%egg-any mark)
  =+  !<(=egg-any:gall vase)
  ?-    -.egg-any
      ?(%15 %16)
    ?>  ?=(%live -.+.egg-any)
    =+  ;;(old=versioned-state q.+.old-state.+.egg-any)
    ?-    -.old
        %0
      =.  keys  (~(uni in keys) keys.old)
      =.  cor
        %-  emil
        =/  =cage  [%phoenix-command !>([%query our.bowl])]
        %+  turn  ~(tap in ~(key by offers.old))
        |=  =ship
        [%pass /query %agent [ship %phoenix] %poke cage]
      cor
    ==
  ==
--
