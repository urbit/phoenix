::  %phoenix
::
::    keys:
::  -phoenix!phoenix-put-keys
::  +phoenix!phoenix-show-keys
::
::    pokes:
::  :phoenix|put %dude
::  :phoenix|snap %dude
::  :phoenix|query ~hodler
::  :phoenix|add-guest ~sampel
::  :phoenix|del-guest ~sampel
::  :phoenix|add-key 0xdead.beef
::  :phoenix|del-key 0xdead.beef
::  :phoenix|send ud+1 /~sampel/foo ~hodler
::  :phoenix|keen ud+1 /~sampel/foo ~hodler
::  :phoenix|tomb ud+1 /~sampel/foo ~hodler
::  :phoenix|cull ud+1 /~sampel/foo ~hodler
::  :phoenix|restore ud+1 /~sampel/foo %dude
::  :phoenix|import-clay /=desk=/sampel-0-dude-42/jam
::
::    threads:
::  -phoenix!phoenix-put-all `.^(@ux %gx /=phoenix=/backup-key/noun)
::  -phoenix!phoenix-put-desk %desk `.^(@ux %gx /=phoenix=/backup-key/noun)
::  -phoenix!phoenix-put-dude %dude `.^(@ux %gx /=phoenix=/backup-key/noun)
::
::    scrys:
::  .^(@ux %gx /=phoenix=/backup-key/noun)
::  .^((set @ux) %gx /=phoenix=/keys/noun)
::  .^((set ship) %gx /=phoenix=/guests/noun)
::  .^((set ship) %gx /=phoenix=/depositors/noun)
::  .^((map ship (set [case spur])) %gx /=phoenix=/offers/noun)
::  .^((set [case spur]) %gx /=phoenix=/offer/(scot %p our)/noun)
::  .^(page %gx (en-beam [our %phoenix da+now] :(weld /page/(scot case) spur /noun)))
::  .^(egg-any:gall %gx (en-beam [our %phoenix da+now] :(weld /egg-any/(scot case) spur /noun)))
::
/-  *phoenix
/+  default-agent, dbug, verb, rudder,
    phoenix, egg=phoenix-egg-utils, gal=phoenix-gall-utils
/~  pages  (page:rudder records-0 command)  /app/phoenix/webui
=>
  |%
  +$  card  $+(card card:agent:gall)
  +$  versioned-state  $%(state-0)
  +$  state-0  [%0 records-0]
  --
=|  state-0
=*  state  -
%+  verb  |
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
      [%x %keys ~]        ``noun+!>(keys)
      [%x %guests ~]      ``noun+!>(guests)
      [%x %offers ~]      ``noun+!>(offers)
      [%x %backup-key ~]  ``noun+!>(backup-key)
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
      ?.  %+  any:on-path:gal  fans
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
      ?~  cas=(de-case case.pole)          ~
      ?~  kid=(get-kid:phx spur.pole)      ~
      ?~  dat=(pluck:phx u.cas spur.pole)  ~
      =+  ;;(egg-cyf u.dat)
      ?~  egg-page=(decrypt:phx [u.kid cyf] keys)
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
++  grow  |=([=spur =page] `card`[%pass / %grow spur page])
++  can-grow
  |=  [=spur =page]
  ^-  ?
  ?.  (valid-path:phx spur)  |
  ?.  ?=(egg-cyf page)       |
  =/  =ship  (slav %p (head spur))
  |(=(our.bowl ship) (~(has in guests) ship))
::
++  send-query
  |=  =ship
  ^-  card
  =/  =cage  [%phoenix-command !>([%query our.bowl])]
  [%pass /query %agent [ship %phoenix] %poke cage]
::
++  wake-offer
  |=  =ship
  ^-  (list card)
  ?:  =(our.bowl ship)  ~
  [%pass /wake/offer/(scot %p ship) %arvo %b %wait now.bowl]^~
::
++  handle-import
  |=  [=spur =page]
  ^+  cor
  ~|  [dap.bowl %import-failed spur]
  =/  =ship  (slav %p (head spur))
  ?:  &(=(our.bowl ship) ?=([%egg-any *] page))
    =+  ;;(raw=egg-any:gall q.page)
    =/  good-egg=egg-any:gall  (cook:egg raw)
    =/  egg-page=^page  [%egg-any good-egg]
    =/  egg-jam=@       (jam egg-page)
    =+  (encrypt:phx egg-jam backup-key eny.bowl)
    =/  =egg-cyf  [%egg-cyf cyf]
    =/  good-path=path
      =/  =(pole iota)  (pave spur)
      ?>  ?=([[%p who=@] [%ud rift=@] [%ta dude=@] [%ud act=@] rest=*] pole)
      %-  make-good-path:phx
      :*  our.bowl    rift.pole
          dude.pole   act.pole
          (pout rest.pole)
          backup-key  eny.bowl
      ==
    ?>  (can-grow good-path egg-cyf)
    ~&  >  [dap.bowl %imported spur]
    (emit (grow good-path egg-cyf))
  ?>  (can-grow spur page)
  ~&  >  [dap.bowl %imported spur]
  (emil (grow spur page) (wake-offer ship))
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
        cor(keys (~(put in keys) backup-key))
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
    [%sav *]         cor
    [%eyre %bind ~]  cor
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
    =?  backup-key  =(*_backup-key backup-key)
      =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
      =+  .^(life=@ud %j /[our]/life/[now]/(scot %p our.bowl))
      =+  .^(vein=@uw %j /[our]/vein/[now]/(scot %ud life))
      (shaz (mix %phoenix vein))
    cor(keys (~(put in keys) backup-key))
  ::
      [%wake %offer ship=@ ~]
    ?>  ?=([%behn %wake *] sign-arvo)
    ?^  error.sign-arvo
      cor
    (emit (send-offer (slav %p ship.pole)))
  ::
      [%keen cmd-src=@ ~]
    ?.  ?=([%ames %tune *] sign-arvo)
      ~|([%bad-sign-arvo sign-arvo] !!)
    ?~  roar.sign-arvo
      cor
    ::  =/  cmd-src=ship   (slav %p cmd-src.pole)
    ::  =/  data-src=ship  ship.sign-arvo
    =/  pax=path    (slag 6 path.sign-arvo)
    =/  owner=ship  (slav %p (head pax))
    =/  =roar:ames  u.roar.sign-arvo
    ?~  q.dat.roar
      cor
    =/  =page  u.q.dat.roar
    ::  ~&  >  "{<dap.bowl>}: received from {<data-src>}: [{<owner>} {<pax>}]"
    ?>  (can-grow pax page)
    (emil (grow pax page) (wake-offer owner))
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
        %phoenix-put-dude  [%noun !>(`[dude `backup-key])]
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
  ^+  cor
  ?:  =(our src):bowl
    ?:  =(our.bowl ship)
      ~&  >  (sort ~(tap in (make-offer:phx our.bowl)) aor)
      cor
    (emit (send-query ship))
  ?>  =(src.bowl ship)
  (emit (send-offer src.bowl))
::
++  send-offer
  |=  =ship
  ^-  card
  =/  =offer  (make-offer:phx ship)
  =/  =cage  [%phoenix-offer !>(offer)]
  [%pass /offer %agent [ship %phoenix] %poke cage]
::
++  handle-restore
  |=  [=case =spur =dude:gall]
  ^+  cor
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    ~&  >>>  [dap.bowl 'restore failed: not running:' dude]
    cor
  ?~  kid=(get-kid:phx spur)
    ~&  >>>  [dap.bowl 'restore failed: no key found:' spur]
    cor
  =/  dat=(unit page)  (pluck:phx case spur)
  ?~  dat
    ~&  >>>  [dap.bowl 'restore failed: not found:' case spur]
    cor
  =+  ;;(egg-cyf u.dat)
  ?~  egg-page=(decrypt:phx [u.kid cyf] keys)
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
  =/  msg=cord  (crip " {<~(wyt in offer)>} backups available")
  ~&  >  [dap.bowl src.bowl msg]
  =.  offers  (~(put by offers) src.bowl offer)
  (emil (send-hark:phx src.bowl msg))
::
++  handle-snap
  |=  =dude:gall
  ^+  cor
  =/  raw=egg-any:gall  (snap:egg our.bowl dude da+now.bowl)
  =/  good-egg=egg-any:gall  (cook:egg raw)
  =/  egg-page=page  [%egg-any good-egg]
  =/  egg-jam=@  (jam egg-page)
  =+  (encrypt:phx egg-jam backup-key eny.bowl)
  =/  =egg-cyf  [%egg-cyf cyf]
  =/  good-path=path
    %-  make-good-path:phx
    :*  our.bowl  (get-rift:phx our.bowl)
        dude      (get-act:egg good-egg)
        /
        backup-key  eny.bowl
    ==
  ?>  (can-grow good-path egg-cyf)
  (emit (grow good-path egg-cyf))
::
++  make-keen-path
  |=  [=case =spur]
  ^-  path
  (weld /g/x/(scot case)/[dap.bowl]//1 spur)
::
++  handle-send
  |=  [=case =spur where=ship]
  ^+  cor
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
  ^+  cor
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
  ^+  cor
  =/  owner=ship  (slav %p (head spur))
  ?:  =(where our.bowl)
    ?>  ?|  =(our src):bowl
            =(owner src.bowl)
        ==
    (emil [%pass / %tomb case spur] (wake-offer owner))
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%tomb case spur where])]
  [%pass /tomb %agent [where %phoenix] %poke cage]
::
++  handle-cull
  |=  [=case =spur where=ship]
  ^+  cor
  =/  owner=ship  (slav %p (head spur))
  ?:  =(where our.bowl)
    ?>  ?|  =(our src):bowl
            =(owner src.bowl)
        ==
    (emil [%pass / %cull case spur] (wake-offer owner))
  ?>  =(our src):bowl
  %-  emit
  =/  =cage  [%phoenix-command !>([%cull case spur where])]
  [%pass /cull %agent [where %phoenix] %poke cage]
::
++  on-egg-any
  |=  [=mark =vase]
  ^+  cor
  ?>  =(our src):bowl
  ?>  =(%egg-any mark)
  =+  !<(=egg-any:gall vase)
  =/  =egg:gall  (fresh-egg:gal egg-any)
  ?>  ?=(%live -.egg)
  =+  ;;(old=versioned-state q.+.old-state.egg)
  ?-    -.old
      %0
    =.  keys    (~(uni in keys) keys.old)
    =.  guests  (~(uni in guests) guests.old)
    =.  cor
      %-  emil
      (turn :_(send-query ~(tap in ~(key by offers.old))))
    ::
    =/  dat=(list (pair spur page))
      (recover-sky:phx sky.egg)
    =|  wakes=(set ship)
    |-  ^+  cor
    ?~  dat
      (emil (zing (turn ~(tap in wakes) wake-offer)))
    ?.  (can-grow p.i.dat q.i.dat)
      $(dat t.dat)
    =.  wakes  (~(put in wakes) (slav %p (head p.i.dat)))
    =.  cor    (emit (grow i.dat))
    $(dat t.dat)
  ==
--
