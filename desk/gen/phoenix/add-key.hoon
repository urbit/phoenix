::  :phoenix|add-key 'lidlut-tabwed-pillex-ridrup'
::
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
[%phoenix-command [%add-keys keys]]
