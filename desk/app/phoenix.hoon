::  %phoenix
::
::  :phoenix|add-guest ~zod
::  :phoenix|del-guest ~zod
::
::  :phoenix|snap %dude
::  :phoenix|send ud+1 /~zod/foo/bar/baz ~hodler
::  :phoenix|put %dude
::  :phoenix|import-clay ~zod /foo/bar/baz /=desk=/zod-0-dude-42/jam
::
::  :phoenix|query ~hodler
::  :phoenix|keen ud+1 /~zod/foo/bar/baz ~hodler
::  :phoenix|tomb ud+1 /~zod/foo/bar/baz ~hodler
::  :phoenix|cull ud+1 /~zod/foo/bar/baz ~hodler
::
::  :phoenix|add-key 'lidlut-tabwed-pillex-ridrup'
::  :phoenix|del-key @
::  :phoenix|set-backup-key `'lidlut-tabwed-pillex-ridrup'
::
::  :phoenix|restore ud+1 /~zod/foo/bar/baz %dude
::
::  +phoenix!phoenix/show-keys
::  -phoenix!phoenix-put-keys
::
::  -phoenix!phoenix-put-dude %dude `(shaz 'lidlut-tabwed-pillex-ridrup')
::  -phoenix!phoenix-put-desk %desk `(shaz 'lidlut-tabwed-pillex-ridrup')
::  -phoenix!phoenix-put-all `(shaz 'lidlut-tabwed-pillex-ridrup')
::
::    scrys:
::  .^((set @ux) %gx /=phoenix=/keys/noun)
::  .^((set ship) %gx /=phoenix=/guests/noun)
::  .^((set ship) %gx /=phoenix=/depositors/noun)
::  .^((unit @ux) %gx /=phoenix=/backup-key/noun)
::  .^(@ux %gx /=phoenix=/static-code/noun)
::  .^(@ux %gx /=phoenix=/preferred-key/noun)
::  .^((map ship (set [spur case])) %gx /=phoenix=/offers/noun)
::  .^((set [path case]) %gx /=phoenix=/offer/(scot %p our)/noun)
::  .^(egg-any:gall %gx /=phoenix=/egg-any/(scot %p our)/dude/(scot ud+42)/noun)
::
/-  *phoenix
/+  phoenix, egg, default-agent, dbug, verb, rudder
/~  pages  (page:rudder records-0 command)  /app/phoenix/webui
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
      phx   ~(. phoenix bowl)
  ++  on-init
    ^-  (quip card _this)
    :_  this
    :-  [%pass /wake/inflate %arvo %b %wait now.bowl]
    [%pass /eyre/bind %arvo %e %connect `/apps/[dap.bowl] dap.bowl]~
  ::
  ++  on-save  !>(state)
  ++  on-load
    |=  =vase
    =+  !<(old=versioned-state vase)
    ?>  ?=(%0 -.old)
    `this(state old)
  ++  on-poke
    |=  [=mark =vase]
    ^-  (quip card _this)
    =^  cards  state  abet:(poke:cor mark vase)
    [cards this]
  ++  on-watch
    |=  =path
    ^-  (quip card _this)
    ?>  =(our src):bowl
    ?>  ?=([%http-response @ ~] path)
    [~ this]
  ::
  ++  on-leave  on-leave:def
  ++  on-peek
    |=  =(pole knot)
    ?+  pole  (on-peek:def pole)
      [%x %keys ~]           ``noun+!>(keys)
      [%x %guests ~]         ``noun+!>(guests)
      [%x %offers ~]         ``noun+!>(offers)
      [%x %backup-key ~]     ``noun+!>(backup-key)
      [%x %static-code ~]    ``noun+!>(static-code)
      [%x %preferred-key ~]  ``noun+!>(preferred-key)
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
        [%x %page case=@ spur=*]
      ?~  cas=(de-case case.pole)  ~
      ?~  page=(pluck:phx u.cas spur.pole)  ~
      ``noun+!>(u.page)
    ::
        [%x %egg-any case=@ spur=*]
      ?~  cas=(de-case case.pole)  ~
      ?~  dat=(pluck:phx u.cas spur.pole)  ~
      =+  ;;(egg-cyf u.dat)
      ?~  egg-page=(decrypt:phx [key-id cyf] keys)
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
++  preferred-key  ?^(backup-key u.backup-key static-code)
++  grow
  |=  [owner=@p =spur =page]
  %-  emit
  [%pass / %grow [(scot %p owner) spur] page]
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
  |=  [=spur =page]
  ^+  cor
  ?>  =(our src):bowl
  =/  =ship  (slav %p (head spur))
  ?>  ?|  =(our.bowl ship)
          (~(has in guests) ship)
      ==
  ~|  [dap.bowl %import-failed spur]
  ?>  ?=(egg-cyf page)
  =/  rest=path  (tail spur)
  ?>  ?=(^ rest)
  ~&  >  [dap.bowl %imported spur]
  =.  cor  (grow ship rest page)
  (wake-offer ship)
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
      %keen   (handle-keen [case spur where]:cmd)
      %tomb   (handle-tomb [case spur where]:cmd)
      %cull   (handle-cull [case spur where]:cmd)
    ::
        $?  %snap      %send       %put
            %add-keys  %add-guest  %import
            %del-keys  %del-guest  %restore
            %set-backup-key
        ==
      ?>  =(our src):bowl
      ?-  -.cmd
        %snap       (handle-snap dude.cmd)
        %send       (handle-send [case spur where]:cmd)
        %restore    (handle-restore [case spur dude]:cmd)
        %put        (handle-put arg.cmd)
        %import     (handle-import [spur page]:cmd)
        %del-guest  cor(guests (~(del in guests) ship.cmd))
      ::
          %add-guest
        =.  guests  (~(put in guests) ship.cmd)
        %-  emit
        [%pass /jael/pubs %arvo %j %public-keys (silt ship.cmd ~)]
      ::
        %add-keys  cor(keys (~(uni in keys) keys.cmd))
      ::
          %del-keys
        =.  keys  (~(dif in keys) keys.cmd)
        =.  keys  (~(put in keys) static-code)
        =?  keys  ?=(^ backup-key)
          (~(put in keys) u.backup-key)
        cor
      ::
          %set-backup-key
        =.  backup-key  key.cmd
        =?  keys  ?=(^ key.cmd)
          (~(put in keys) u.key.cmd)
        cor
      ==
    ==
  ::
     %handle-http-request
    ?>  =(our src):bowl
    =;  out=(quip card _+.state)
      =.  +.state  +.out
      (emil -.out)
    ^-  (quip card _+.state)
    %.  [bowl !<(order:rudder vase) +.state]
    %-  (steer:rudder _+.state command)
    :^    pages
        (point:rudder /apps/[dap.bowl] & ~(key by pages))
      (fours:rudder +.state)
    |=  cmd=command
    ^-  $@(brief:rudder [brief:rudder (list card) _+.state])
    =*  success  `brief:rudder`'Processed succesfully.'
    =.  cor  (poke phoenix-command+!>(cmd))
    [success cards +.state]
  ==
::
++  arvo
  |=  [=(pole knot) =sign-arvo]
  ^+  cor
  ?+    pole  ~&([dap.bowl %strange-arvo-wire `path`pole] cor)
    [%sav *]  cor
  ::
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
      [%wake %inflate ~]
    ?>  ?=([%behn %wake *] sign-arvo)
    ?^  error.sign-arvo
      cor
    =?  static-code  =(*_static-code static-code)
      our-key:phx
    cor(keys (~(put in keys) our-key:phx))
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
    ?>  ?=(egg-cyf page)
    ~&  >  "{<dap.bowl>}: received from {<data-src>}: [{<owner>} {<spur>}]"
    =.  cor  (grow owner spur page)
    (wake-offer owner)
  ==
::
++  handle-put
  |=  arg=$@(=dude:gall [=case =spur])
  ^+  cor
  |^  ?@  arg
        (put-dude dude.arg)
      (put-case-spur case.arg spur.arg)
  ++  put-dude
    |=  =dude:gall
    %-  emit
    :*  %pass  /sav  %arvo  %k  %fard  q.byk.bowl
        %phoenix-put-dude  [%noun !>(`[dude `preferred-key])]
    ==
  ++  put-case-spur
    |=  [=case =spur]
    %-  emit
    :*  %pass  /sav  %arvo  %k  %fard  q.byk.bowl
        %phoenix-put-case-spur  [%noun !>(`[case spur])]
    ==
  --
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
  |=  [=case =spur =dude:gall]
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    ~&  >>>  [dap.bowl 'restore failed: not running:' dude]
    cor
  =/  dat=(unit page)  (pluck:phx case spur)
  ?~  dat
    ~&  >>>  [dap.bowl 'restore failed: not found:' case spur]
    cor
  =+  ;;(egg-cyf u.dat)
  =.  keys  (~(put in keys) our-key:phx)
  ?~  egg-page=(decrypt:phx [key-id cyf] keys)
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
  =/  raw=egg-any:gall  (snap:egg our.bowl dude da+now.bowl)
  =/  good-egg=egg-any:gall  (cook:egg raw)
  =/  egg-page=page  [%egg-any good-egg]
  =/  egg-jam=@  (jam egg-page)
  =/  =page  `egg-cyf`[%egg-cyf (encrypt:phx egg-jam preferred-key eny.bowl)]
  =/  encrypted-path=path
    =+  rift=(scot %ud (get-rift:phx our.bowl))
    =+  act=(scot %ud (get-act:egg good-egg))
    %-  encrypt-path:phx
    [/[rift]/[dude]/[act] preferred-key eny.bowl]
  (grow our.bowl encrypted-path page)
::
++  make-keen-path
  |=  [=case =spur]
  ^-  path
  (weld /g/x/(scot case)/[dap.bowl]//1 spur)
::
++  handle-send
  |=  [=case =spur where=ship]
  ^+  cor
  ?>  =(our src):bowl
  ?<  =(our.bowl where)
  ?~  (pluck:phx case spur)
    ~&  >>  [dap.bowl %not-found case spur]
    cor
  %-  emit
  =/  =cage  [%phoenix-command !>([%keen case spur our.bowl])]
  [%pass /send %agent [where %phoenix] %poke cage]
::
++  handle-keen
  |=  [=case =spur where=ship]
  =/  owner=ship  (slav %p (head spur))
  ?>  ?|  =(our src):bowl
          ?&  =(where src.bowl)
              =(owner src.bowl)
              (~(has in guests) src.bowl)
          ==
      ==
  %-  emit
  =/  keen-path=path  (make-keen-path case spur)
  [%pass /keen/(scot %p src.bowl) %arvo %a %keen ~ where keen-path]
::
++  handle-tomb
  |=  [=case =spur where=ship]
  =/  owner=ship  (slav %p (head spur))
  ?:  =(where our.bowl)
    ?>  ?|  =(our src):bowl
            =(owner src.bowl)
        ==
    =.  cor
      (emit [%pass / %tomb case spur])
    (wake-offer owner)
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%tomb case spur where])]
  [%pass /tomb %agent [where %phoenix] %poke cage]
::
++  handle-cull
  |=  [=case =spur where=ship]
  =/  owner=ship  (slav %p (head spur))
  ?:  =(where our.bowl)
    ?>  ?|  =(our src):bowl
            =(owner src.bowl)
        ==
    =.  cor
      (emit [%pass / %cull case spur])
    (wake-offer owner)
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%cull case spur where])]
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
