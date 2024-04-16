/-  spider, *phoenix
/+  io=strandio, phx=phoenix, phx-put=phoenix-put
^-  thread:spider
|=  arg=vase
=+  !<([~ =case =spur] arg)
=/  m  (strand:rand ,vase)
;<  =bowl:rand  bind:m  get-bowl:io
;<  keys=(set @)  bind:m  (scry:io ,(set @) /gx/phoenix/keys/noun)
;<  =page  bind:m
   (scry:io ,page :(weld /gx/phoenix/page/(scot case) spur /noun))
|^  ^-  form:m
    =/  =phx-export  [%phx-export spur page]
    =/  dat=@  (jam phx-export)
    =/  =card:agent:gall
      =+  (make-dir-fil:phx-put spur page keys)
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
--
