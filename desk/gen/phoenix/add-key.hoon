::  :phoenix|add-key 0xdead.beef
::
/-  *phoenix
:-  %say
|=  [^ [keys=$@(@ (list @)) ~] ~]
=/  keys=(set @)  (sy ?^(keys keys [keys ~]))
[%phoenix-command `command`[%add-keys keys]]
