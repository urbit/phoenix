/+  *mip
|%
+$  records-0
  $:  eggs=(mip ship dude:gall @)
      guests=(set ship)
      offers=(map ship (set dude:gall))
      codes=(set @t)
  ==
+$  update  [=ship =dude:gall dat=@]
+$  offer   (set dude:gall)
+$  request
  $%  [%query ~]
      [%dude =dude:gall]
  ==
::
+$  command
  $%  [%snap =dude:gall]                 ::  scry and save
      [%del-dude =dude:gall where=ship]  ::  del our dude from local (default), or remote
      [%del-all where=ship]              ::  del all our dudes from local (default), or remote
    ::
      [%add-guest =ship]              ::  permit a ship to save
      [%del-guest =ship]              ::  remove save permission
    ::
      [%put =dude:gall]               ::  save dude to put
    ::
      [%import-clay =ship =dude:gall =path]  ::  load a jam from clay
    ::
      [%request-dude =ship =dude:gall]       ::  request a dude from a ship
      [%request-query =ship ~]  ::  your available backups
    ::
      [%send-egg source=ship =dude:gall target=ship]  ::  send update to target
    ::
      [%restore =dude:gall]           ::  send an egg-any to a local agent
      [%keen spar:ames]
    ::
      [%add-code pw=@t]               ::  add a +code for decrypting backups
      [%del-code pw=@t]               ::  del a +code
  ==
--
