::  TODO
::    encrypted data
::  use symetric encryption; it's faster
::  hash +code
::
::    remote scry
::  %gt scry paths don't have case
::  %gw
::  inspect sky.bowl
::  [%sky ~] scry endpoint
::
::  %phoenix
::
::  :phoenix|add-guest ~zod
::  :phoenix|del-guest ~zod
::
::  :phoenix|snap %dojo
::  :phoenix|del-dude %dojo, =where ~hodler
::
::  :phoenix|del-all ~hodler
::  :phoenix|del-dude-remote %dojo ~hodler
::
::  :phoenix|put %dojo
::
::  :phoenix|query ~hodler
::  :phoenix|keen ~hodler %dude version=@ud
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
::  .^((list path) %gx /=phoenix=/latest-sky/noun)
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
      phx   ~(. phoenix bowl)
  ++  on-init  [[%pass /jael/pubs %arvo %j %public-keys ~]~ this]
  ++  on-save  !>(state)
  ++  on-load  |=(=vase `this(state !<(state-0 vase)))
  ++  on-poke
    |=  [=mark =vase]
    ^-  (quip card _this)
    ?+    mark  (on-poke:def mark vase)
        %phoenix-offer
      =+  !<(=offer vase)
      =^  cards  state  abet:(handle-offer:cor src.bowl offer)
      [cards this]
    ::
        %phoenix-request
      =+  !<(req=request vase)
      =^  cards  state  abet:(handle-request:cor src.bowl req)
      [cards this]
    ::
        %phoenix-command
      =+  !<(cmd=command vase)
      ?-    -.cmd
          ?(%add-guest %del-guest %add-code %del-code)
        ?>  =(our src):bowl
        ?-    -.cmd
            %add-guest  `this(guests (~(put in guests) ship.cmd))
            %del-guest  `this(guests (~(del in guests) ship.cmd))
            %del-code   `this(codes (~(del in codes) pw.cmd))
            %add-code
          =?  codes  !=(pw.cmd our-code:phx)
            (~(put in codes) pw.cmd)
          [~ this]
        ==
      ::
          %snap
        ?>  =(our src):bowl
        =^  cards  state  abet:(handle-snap:cor dude.cmd)
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
          ?(%put %restore %import-clay)
        ?>  =(our src):bowl
        =^  cards  state
          =<  abet
          ?-  -.cmd
            %put          (put:cor dude.cmd)
            %import-clay  (import-clay:cor [ship dude path]:cmd)
            %restore      (restore:cor dude.cmd)
          ==
        [cards this]
      ::
          %keen
        :_  this  :_  ~
        [%pass /keen %arvo %a %keen ~ ship.cmd path.cmd]
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
      [%x %guests ~]   ``noun+!>(guests)
      [%x %offers ~]   ``noun+!>(offers)
      [%x %hodling ~]  ``noun+!>(~(key by eggs))
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
    ::
      ::   [%x %sky ~]
      :: ::  $=  sky
      :: ::  %+  map  path
      :: ::  ((mop @ud (pair @da (each page @uvI))) lte)
      :: |^
      ::   =/  pax
      ::     %+  turn  ~(tap by sky.bowl)
      ::     |=  [p=path m=((mop @ud (pair @da (each page @uvI))) lte)]
      ::     %+  turn
      ::       ^-  (list [@ud (pair @da (each page @uvI))])
      ::       (tap:on-path m)
      ::     |=  [@ud (pair @da (each page @uvI))]
      ::   ``noun+!>(pax)
      :: ++  on-path  ((on @ud (pair @da (each page @uvI))) lte)
      :: --
    ::
        [%x %ud-pax ~]
      =/  =beak  [our.bowl dap.bowl da+now.bowl]
      =/  revs=(list (pair @ud path))
        %+  turn
          .^((list path) %gt (en-beam beak /$/1))
        |=  pax=path
        =+  .^([%ud ud=@ud] %gw (en-beam beak (weld /$/1 pax)))
        [ud pax]
      ``noun+!>(revs)
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
++  emil  |=(caz=(list card) cor(cards (welp (flop caz) cards)))
++  import-clay
  |=  [=ship =dude:gall =path]
  =+  .^(dat=@ %cx path)
  ::  TODO grow
  ::
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
    %-  (slog leaf+"%phoenix: {<ship>} breached" ~)  ::  XX
    %-  emit
    [%pass /offer %agent [ship %phoenix] %poke %phoenix-offer !>(dudes)]
  ::  we received a keen response
  ::  place it in the correct location
  ::    need:
  ::  owner dude @
  ::
      [%keen ~]
    ?.  ?=([%ames %tune *] sign-arvo)
      ~|([%bad-sign-arvo sign-arvo] !!)
    ?~  roar.sign-arvo
      ~&  >  %sig-roar
      cor
    =/  source=ship       ship.sign-arvo
    =/  pax=(^pole knot)  path.sign-arvo
    ?>  ?=([owner=@ dude=@ ~] pax)
    =/  owner=@p    (slav %p owner.pax)
    =/  =dude:gall  (slav %tas dude.pax)
    ::  TODO
    ::
    ?>  ?|  (our-team:phx source)
            (~(has in guests) source)
            (~(has in guests) owner)
        ==
    =/  =roar:ames  u.roar.sign-arvo
    ~&  >  [source owner pax]
    ?~  q.dat.roar
      cor
    ~&  >  [%dat u.q.dat.roar]
    ?>  ?=([%atom egg=@] u.q.dat.roar)
    ::  XX  grow
    ::
    :: =/  =dude:gall  %ping
    :: ?~  dat=(~(get bi eggs) our.bowl dude)
    ::   `this
    :: :_  this  :_  ~
    :: [%pass / %grow /[dude] [%atom u.dat]]
    cor(eggs (~(put bi eggs) owner dude +.u.q.dat.roar))
  ==
::
++  put
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
++  handle-offer
  |=  [=ship =offer]
  ^+  cor
  =.  offers  (~(put by offers) ship offer)
  =/  msg=cord  %-  crip
    " backups: {<(sort ~(tap in offer) aor)>}"
  (emil (send-hark:phx ship msg))
::
++  handle-snap
  |=  =dude:gall
  ^+  cor
  ?>  =(our src):bowl
  =+  [our=(scot %p our.bowl) now=(scot %da now.bowl)]
  ?.  .^(? %gu /[our]/[dude]/[now]/$)
    %-  (slog leaf+"%phoenix: dude not live: {<dude>}" ~)
    cor
  =+  .^(raw=egg-any:gall %gv /[our]/[dude]/[now]/$)
  =/  good-egg=egg-any:gall  (cook-egg raw)
  ::  XX  encrypt, grow
  ::  ?.  ~(has in sky.bowl)
  ::
  cor(eggs (~(put bi eggs) our.bowl dude (jam good-egg)))
::
++  handle-send-egg
  |=  [source=ship =dude:gall target=ship]
  ^+  cor
  ?~  maybe-egg=(~(get bi eggs) source dude)
    %-  (slog leaf+"%phoenix: missing egg: {<source>} {<dude>}" ~)
    cor
  ::  TODO remote scry
  ::
  =/  =cage  [%phoenix-update !>(`update`[source dude u.maybe-egg])]
  %-  emil
  ::  TODO grow, command w/ keen path
  ::
  :~  [%pass /yeet %agent [target %phoenix] %poke cage]
      [%pass / %grow /(scot %p our.bowl)/[dude] [%atom u.maybe-egg]]
  ==
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
