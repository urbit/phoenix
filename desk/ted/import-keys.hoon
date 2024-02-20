/-  spider
/+  io=strandio, egg, phoenix
^-  thread:spider
|=  arg=vase
=+  !<([~ pax=path] arg)
=/  m  (strand:rand ,vase)
^-  form:m
;<  our=@p  bind:m  get-our:io
=+  .^(dat=@ %cx pax)
=+  ;;([%keys keys=(set @)] (cue dat))
=/  cards=(list card:agent:gall)
  %+  turn  ~(tap in keys)
  |=  key=@
  ^-  card:agent:gall
  =/  =cage  [%phoenix-command !>([%add-key key])]
  [%pass / %agent [our %phoenix] %poke cage]
::
;<  ~  bind:m  (send-raw-cards:io cards)
(pure:m !>(%done))
