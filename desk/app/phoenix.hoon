::  %phoenix
::
::  :phoenix|add-guest ~zod
::  :phoenix|del-guest ~zod
::
::  :phoenix|get-dude %dojo
::  :phoenix|del-dude %dojo, =where ~hodler
::
::  :phoenix|del-all ~hodler
::  :phoenix|del-dude-remote %dojo ~hodler
::
::  :phoenix|put-all
::  :phoenix|put-desk %base
::  :phoenix|put-dude %dojo
::
::  :phoenix|query ~hodler
::
::  :phoenix|request-all ~hodler
::  :phoenix|request-dude ~hodler
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
::  .^((set dude:gall) %gx /=phoenix=/eggs/(scot %p our)/noun)
::
/-  *phoenix, hark
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
  ++  on-init  [[%pass /jael/pubs %arvo %j %public-keys ~]~ this]
  ++  on-save  !>(state)
  ++  on-load  |=(=vase `this(state !<(state-0 vase)))
  ++  on-poke
    |=  [=mark =vase]
    ^-  (quip card _this)
    ?+    mark  (on-poke:def mark vase)
        %egg-any
      ?>  =(our src):bowl
      =+  !<(=egg-any:gall vase)
      =^  cards  state
        abet:(on-egg-any:cor egg-any)
      [cards this]
    ::
        %phoenix-offer
      =+  !<(=offer vase)
      =^  cards  state
        abet:(handle-offer:cor src.bowl offer)
      [cards this]
    ::
        %phoenix-request
      =+  !<(req=request vase)
      =^  cards  state
        abet:(handle-request:cor src.bowl req)
      [cards this]
    ::
        %phoenix-update
      ~&  >  %phoenix-update
      ?>  ?|  (our-team:cor src.bowl)
              (~(has in guests) src.bowl)
          ==
      =+  !<(=update vase)
      =^  cards  state
        abet:(on-phoenix-update:cor update)
      [cards this]
    ::
        %phoenix-command
      =+  !<(cmd=command vase)
      ?-    -.cmd
          %add-guest
        ?>  =(our src):bowl
        `this(guests (~(put in guests) ship.cmd))
          %del-guest
        ?>  =(our src):bowl
        `this(guests (~(del in guests) ship.cmd))
      ::
          %get-dude
        ?>  =(our src):bowl
        =^  cards  state
          abet:(handle-get-dude:cor dude.cmd)
        [cards this]
      ::
          %del-dude
        ?:  =(our.bowl where.cmd)
          `this(eggs (~(del bi eggs) src.bowl dude.cmd))
        ?>  =(our src):bowl
        :_  this
        =/  =cage  [%phoenix-command !>([%del-dude dude.cmd where.cmd])]
        [%pass /remove %agent [where.cmd %phoenix] %poke cage]~
      ::
          %del-all
        ?:  =(our.bowl where.cmd)
          `this(eggs (~(del by eggs) src.bowl))
        ?>  =(our src):bowl
        :_  this
        =/  =cage  [%phoenix-command !>([%del-all where.cmd])]
        [%pass /remove %agent [where.cmd %phoenix] %poke cage]~
      ::
          ?(%request-all %request-dude %request-query)
        ?>  =(our src):bowl
        =/  =cage
          ?-  -.cmd
            %request-all    [%phoenix-request !>([%all ~])]
            %request-dude   [%phoenix-request !>([%dude dude.cmd])]
            %request-query  [%phoenix-request !>([%query ~])]
          ==
        :_  this
        [%pass /request %agent [ship.cmd %phoenix] %poke cage]~
      ::
          %send-egg
        ?>  =(our src):bowl
        =^  cards  state
          abet:(handle-send-egg:cor [source dude target]:cmd)
        [cards this]
      ::
          ?(%put-all %put-desk %put-dude %restore %import-clay)
        ?>  =(our src):bowl
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
      [%x %guests ~]  ``noun+!>(guests)
      [%x %offers ~]  ``noun+!>(offers)
      [%x %hodling ~]   ``noun+!>(~(key by eggs))
    ::
        [%x %eggs ship=@ ~]
      :^  ~  ~  %noun
      !>  ^-  (set dude:gall)
      (~(key bi eggs) (slav %p ship.pole))
    ::
        [%x %egg ship=@ dude=@ ~]
      :^  ~  ~  %noun
      !>  ^-  @
      (~(got bi eggs) [ship dude]:pole)
    ::
        [%x %eggs ~]
      :^  ~  ~  %noun
      !>  ^-  (jug ship dude:gall)
      %-  ~(gas ju *(jug ship dude:gall))
      ^-  (list [ship dude:gall])
      %+  turn  ~(tap bi eggs)
      |=  [=ship =dude:gall @]
      [ship dude]
    ==
  ::
  ++  on-agent
    |=  [=(pole knot) =sign:agent:gall]
    ?+    pole  (on-agent:def pole sign)
        [%yeet ~]     `this
        [%offer ~]    `this
        [%remove ~]   `this
        [%request ~]  `this
        [%sav dude=@ ~]
      =/  =dude:gall  (slav %tas dude.pole)
      %-  (slog leaf+"%phoenix: saved to put: {<dude>}" ~)
      [~ this]
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
++  is-moon       |=(=ship =(%earl (clan:title ship)))
++  our-moon      |=(=ship (moon:title our.bowl ship))
++  get-sponsor   |=(=ship (sein:title our.bowl now.bowl ship))
++  same-sponsor  |=([a=ship b=ship] =((get-sponsor a) (get-sponsor b)))
++  fellow-moon   |=(=ship &((is-moon our.bowl) (same-sponsor ship our.bowl)))
++  our-team
  |=  =ship
  ^-  ?
  ?|  =(our.bowl ship)    ::  us
      (our-moon ship)     ::  our moons
      (fellow-moon ship)  ::  fellow moons
  ==
::
++  import-clay
  |=  [=ship =dude:gall =path]
  =+  .^(dat=@ %cx path)
  cor(eggs (~(put bi eggs) ship dude dat))
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
++  arvo
  |=  [=(pole knot) =sign-arvo]
  ^+  cor
  ?+    pole  ~|([%bad-arvo-pole pole] !!)
      [%jael %pubs ~]
    ?>  ?=([%jael %public-keys *] sign-arvo)
    ?.  ?=(%breach -.public-keys-result.sign-arvo)
      cor
    =/  =ship  who.public-keys-result.sign-arvo
    ?~  dudes=(~(key bi eggs) ship)
      cor
    %-  (slog leaf+"%phoenix: {<ship>} breached" ~)
    %-  emit
    [%pass /offer %agent [ship %phoenix] %poke %phoenix-offer !>(dudes)]
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
    %-  (slog leaf+"%phoenix: dude not live: {<dude>}" ~)
    cor
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg raw)
  =/  =path  /[dap.bowl]/[dude]/[now]/'jam'
  =/  dat=@  (jam good-egg)
  =/  =cage  [%drum-put !>([path dat])]
  %-  emit
  [%pass /sav/[dude] %agent [our.bowl %hood] %poke cage]
::
++  handle-request
  |=  [=ship =request]
  ~&  >  [%handle-request ship request]
  ?-  -.request
    %all    (return-all ship)
    %dude   (return-dude ship dude.request)
    %query  (return-query ship)
  ==
::
++  return-query
  |=  =ship
  =/  dudes=(set dude:gall)  (~(key bi eggs) ship)
  %-  emit
  [%pass /offer %agent [ship %phoenix] %poke %phoenix-offer !>(dudes)]
::
++  return-dude
  |=  [=ship =dude:gall]
  ~&  >  %return-dude
  ^+  cor
  ?~  dat=(~(get bi eggs) ship dude)
    ~&  >>>  %sig-dat
    cor
  =/  =cage  [%phoenix-update !>(`update`[ship dude u.dat])]
  ~&  >  %sending
  %-  emit
  [%pass /yeet %agent [ship %phoenix] %poke cage]
::
++  return-all
  |=  =ship
  ^+  cor
  =/  theirs=(unit (map dude:gall @))  (~(get by eggs) ship)
  ?~  theirs
    cor
  =/  eggz=(list [=dude:gall dat=@])  ~(tap by u.theirs)
  |-  ^+  cor
  ?~  eggz
    cor
  =/  =cage
    [%phoenix-update !>(`update`[ship dude.i.eggz dat.i.eggz])]
  =.  cor
    (emit [%pass /yeet %agent [ship %phoenix] %poke cage])
  $(eggz t.eggz)
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
  =/  =cage  [%egg-any !>(egg-any)]
  %-  emit
  [%pass /phoenix %agent [our.bowl dude] %poke cage]
::
++  on-phoenix-update
  |=  upd=update
  cor(eggs (~(put bi eggs) [ship dude dat]:upd))
::
++  handle-offer
  |=  [=ship =offer]
  ^+  cor
  =.  offers  (~(put by offers) ship offer)
  =/  msg=cord  %-  crip
    " backups: {<(sort ~(tap in offer) aor)>}"
  (send-hark ship msg)
::
++  on-egg-any
  |=  =egg-any:gall
  ?>  =(our src):bowl
  ::  TODO  restore self
  cor
::
++  send-hark
  |=  [who=ship msg=cord]
  ^+  cor
  ?.  .^(? %gu /(scot %p our.bowl)/hark/(scot %da now.bowl)/$)
    cor
  %-  emit
  =/  con=(list content:hark)  [ship+who msg ~]
  =/  =id:hark      (end 7 (shas %phx-notif eny.bowl))
  =/  =rope:hark    [~ ~ q.byk.bowl /(scot %p who)/[dap.bowl]]
  =/  =action:hark  [%add-yarn & & id rope now.bowl con /[dap.bowl] ~]
  =/  =cage         [%hark-action !>(action)]
  [%pass /hark %agent [our.bowl %hark] %poke cage]
::
++  handle-get-dude
  |=  =dude:gall
  ^+  cor
  ?>  =(our src):bowl
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    %-  (slog leaf+"%phoenix: dude not live: {<dude>}" ~)
    cor
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg raw)
  cor(eggs (~(put bi eggs) our.bowl dude (jam good-egg)))
::
++  handle-send-egg
  |=  [source=ship =dude:gall target=ship]
  ^+  cor
  ?~  maybe-egg=(~(get bi eggs) source dude)
    %-  (slog leaf+"%phoenix: missing egg: {<source>} {<dude>}" ~)
    cor
  =/  =cage  [%phoenix-update !>(`update`[source dude u.maybe-egg])]
  %-  emit
  [%pass /yeet %agent [target %phoenix] %poke cage]
--
