/-  spider, *phoenix
/+  io=strandio, phx=phoenix
^-  thread:spider
|=  arg=vase
=+  !<([~ =case =spur] arg)
=/  m  (strand:rand ,vase)
;<  =bowl:rand  bind:m  get-bowl:io
;<  keys=(set @)  bind:m  (scry:io ,(set @) /gx/phoenix/keys/noun)
;<  =page  bind:m
   (scry:io ,page :(weld /gx/phoenix/page/(scot case) spur /noun))
|^  ^-  form:m
    =/  =key-id  =<  key-id  ;;(egg-cyf page)
    =/  =phx-ex
      [%phx-ex `key-id spur page]
    =/  dat=@  (jam phx-ex)
    =/  =card:agent:gall
      =+  (make-dir-fil spur)
      (put dir fil dat)
    ;<  ~  bind:m  (send-raw-card:io card)
    (pure:m !>(%done))
::
++  put
  |=  [dir=path fil=path dat=@]
  ^-  card:agent:gall
  =/  =path  (weld dir fil)
  =/  =wire  [%sav path]
  =/  =cage  [%drum-put !>([path dat])]
  [%pass wire %agent [our.bowl %hood] %poke cage]
::
++  make-dir-fil
  |=  pax=path
  =/  who=ship  (slav %p (head pax))
  |^
  ^-  [dir=path fil=path]
  ?~  de-path=(decrypt-path:phx (tail pax) keys)
    default
  ?~  rda=(rda u.de-path)
    default
  [(pretty-dir who u.rda) (pretty-fil who u.rda)]
  ::
  ++  default
    =+  hax=(pretty-uv (shaz (jam page)))
    :-  (weld /phoenix/(ship-sig who) (tail pax))
    /(rap 3 (ship-sig who) '-' hax ~)/jam
  ::
  ++  pretty-uv
    |=  a=@uvI
    ^-  @ta
    (crip (weld "0v" ((v-co:co (met 3 a)) a)))
  ::
  ++  ship-sig
    |=  =ship
    ^-  @ta
    (crip +:(scow %p ship))
  ::
  ++  rda
    |=  =(pole knot)
    ^-  (unit [rift=@ud =dude:gall act=@ud])
    ?.  ?=([rift=@ dude=@ act=@ ~] pole)  ~
    ?~  rif=(slaw %ud rift.pole)   ~
    ?~  dud=(slaw %tas dude.pole)  ~
    ?~  act=(slaw %ud act.pole)    ~
    `[u.rif u.dud u.act]
  ::
  ++  pretty-dir
    |=  [=ship rift=@ud =dude:gall act=@ud]
    ^-  path
    =/  rift=@ta  (crip (a-co:co rift))
    /phoenix/(ship-sig ship)/[rift]/[dude]
  ::
  ++  pretty-fil
    |=  [=ship rift=@ud =dude:gall act=@ud]
    ^-  path
    =/  rift=@ta  (crip (a-co:co rift))
    =/  act=@ta   (crip (a-co:co act))
    :_  /'jam'
    %-  reel  :_  (cury cat 3)
    %+  join  '-'
    `path`/(ship-sig ship)/[rift]/[dude]/[act]
  --
--
