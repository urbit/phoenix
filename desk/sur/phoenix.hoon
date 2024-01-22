/+  *mip
|%
+$  records-0
  $:  eggs=(mip ship dude:gall @)
      guests=(set ship)
      offers=(map ship offer)
      codes=(set @t)
  ==
+$  update  [=ship =dude:gall dat=@]
+$  offer   (set (pair case dude:gall))
::
+$  command
  $%  [%snap =dude:gall]                   ::  scry and save
      [%cull =dude:gall =case where=ship]  ::  cull ud+0 to case
      [%tomb =dude:gall =case where=ship]  ::  tombstone
    ::
      [%add-guest =ship]                   ::  permit a ship to save
      [%del-guest =ship]                   ::  remove save permission
    ::
      [%put =ship =dude:gall =case]        ::  save to put
    ::
      [%import-clay =ship =dude:gall =path]  ::  load a jam from clay
    ::
      [%send-egg source=ship =dude:gall target=ship]  ::  send update to target
    ::
      [%restore =dude:gall =case]          ::  send an egg-any to a local agent
      [%keen spar:ames]
    ::
      [%add-code pw=@t]      ::  add a code for decrypting backups
      [%del-code pw=@t]      ::  del a code
    ::
      [%send-query =ship]    ::  query a ship
      [%query ~]             ::  request for offers
  ==
--
