/-  spider, *phoenix
/+  io=strandio, egg, phx=phoenix
^-  thread:spider
|=  arg=vase
=+  !<([~ =case =spur] arg)
~&  >  [%put-cs case spur]
=/  m  (strand:rand ,vase)
;<  =bowl:rand  bind:m  get-bowl:io
|^  ^-  form:m
    =+  .^(=page %gx (en-beam [our.bowl %phoenix case] (weld //1 spur)))
    :: =+  .^(=page %gx (en-beam [our.bowl %phoenix da+now.bowl] :(weld /x/page/(scot case) spur /noun)))
    =/  =key-id  =<  key-id  ;;(egg-cyf page)
    =/  =phx-ex
      [%phx-ex `key-id spur page]
    =/  dat=@  (jam phx-ex)
    =/  =card:agent:gall
      =/  dir  /todo-dir
      =/  fil  /todo-fil
      :: =+  dir=(pretty-dir our.bowl rift dude act)
      :: =+  fil=(pretty-fil our.bowl rift dude act)
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
++  ship-sig
  |=  =ship
  ^-  @ta
  (crip +:(scow %p ship))
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
::
++  pretty-dir
  |=  [=ship rift=@ud =dude:gall act=@ud]
  ^-  path
  =/  rift=@ta  (crip (a-co:co rift))
  =/  act=@ta   (crip (a-co:co act))
  /phoenix/(ship-sig ship)/[rift]/[dude]/[act]
--
