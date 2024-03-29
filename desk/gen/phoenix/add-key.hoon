::  :phoenix|add-key 'lidlut-tabwed-pillex-ridrup'
::  :phoenix|add-key 0xf200.1139.2b4e.52e7.0b6b.3926.c0cc.81c7.d631.a3cc.bf6e.c090.43a8.01ab.f750.027a.27dd.033e.27d7.add8.426e.54fe.2a26.124b.18fd.bba2.969a.f964.fb72.a58e.8d65.9815, =raw &
::
/-  *phoenix
:-  %say
|=  [^ [keys=$@(@ (list @)) ~] raw=_|]
=/  kel=(list @)  ?^(keys keys [keys ~])
=/  keys=(set @)
  %-  sy
  ?:  raw
    kel
  %+  turn  kel
  |=  key=@
  (shaz (mix %phoenix key))
[%phoenix-command `command`[%add-keys keys]]
