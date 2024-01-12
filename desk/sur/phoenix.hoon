/+  *mip
|%
+$  records-0
  $:  eggs=(mip ship dude:gall @)
      guests=(set ship)
      offers=(map ship (set dude:gall))
  ==
+$  update  [=ship =dude:gall dat=@]
+$  offer   (set dude:gall)
+$  request
  $%  [%all ~]
      [%query ~]
      [%dude =dude:gall]
  ==
::
+$  command
  $%  [%get-dude =dude:gall]                    ::  scry and save
      [%del-dude =dude:gall where=ship]  ::  del our dude from local (default), or remote
      [%del-all where=ship]              ::  del all our dudes from local (default), or remote
    ::
      [%add-guest =ship]              ::  permit a ship to save
      [%del-guest =ship]              ::  remove save permission
    ::
      [%put-all ~]                    ::  save all dudes to put
      [%put-desk =desk]               ::  save all dudes in desk to put
      [%put-dude =dude:gall]          ::  save dude to put
    ::
      [%import-clay =ship =dude:gall =path]  ::  load a jam from clay
    ::
      [%request-all =ship ~]    ::  request all your backups from a ship
      [%request-dude =ship =dude:gall]       ::  request a dude from a ship
      [%request-query =ship ~]  ::  your available backups
    ::
      [%send-egg source=ship =dude:gall target=ship]  ::  send update to target
    ::
      [%restore =dude:gall]           ::  send an egg-any to a local agent
  ==
--
