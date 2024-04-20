/-  spider, *phoenix
/+  io=strandio, phx=phoenix, egg=phoenix-egg-utils, phx-put=phoenix-put-utils
^-  thread:spider
|=  arg=vase
=+  !<([~ =dude:gall key=(unit @)] arg)
=/  m  (strand:rand ,vase)
;<  =bowl:rand  bind:m  get-bowl:io
|^  ^-  form:m
    ;<  raw=egg-any:gall  bind:m
      (scry:io egg-any:gall /gv/[dude]/$)
    =/  good-egg=egg-any:gall  (cook:egg raw)
    =/  egg-page=page  [%egg-any good-egg]
    ;<  rift=@ud  bind:m  (scry:io @ud /j/rift/(scot %p our.bowl))
    =+  act=(get-act:egg good-egg)
    =/  exp=phx-export
      :-  %phx-export
      ?~  key
        :_  egg-page
        /(scot %p our.bowl)/(scot %ud rift)/[dude]/(scot %ud act)
      =/  good-path=path
        %-  make-good-path:phx
        :*  our.bowl  rift
            dude      act
            /
            u.key  eny.bowl
        ==
      [good-path [%egg-cyf (encrypt:phx (jam egg-page) u.key eny.bowl)]]
    =/  dat=@  (jam exp)
    =/  cards=(list card:agent:gall)
      =+  (make-dir-fil:phx-put spur.exp page.exp ?~(key ~ (sy u.key ~)))
      :-  (put dir fil dat)
      ?~  key  ~
      (import-key u.key)^~
    ;<  ~  bind:m  (send-raw-cards:io cards)
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
++  import-key
  |=  key=@
  ^-  card:agent:gall
  =/  =cage  [%phoenix-command !>(`command`[%add-keys (sy key ~)])]
  [%pass / %agent [our.bowl %phoenix] %poke cage]
--
