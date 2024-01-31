|%
+$  offer  (set [spur case])
::
+$  command
  $%  [%snap =dude:gall]                       ::  take snapshot
      [%restore =ship =spur =case =dude:gall]  ::  poke an agent with egg-any
    ::
      [%query who=(unit ship)]          ::  request for offers
      [%cull =case =spur where=ship]    ::  cull ud+0 to case
      [%tomb =case =spur where=ship]    ::  tombstone
      [%keen spar:ames]                 ::  keen
    ::
      [%add-guest =ship]                ::  permit a ship to save
      [%del-guest =ship]                ::  remove save permission
    ::
      [%add-key key=@]                  ::  add encryption key
      [%del-key key=@]                  ::  del encryption key
    ::
      [%put =ship =spur =case]          ::  save to put
      [%import-clay =ship =spur =path]  ::  load a jam from clay
    ::
      [%send =case =spur target=ship]   ::  command target to keen
  ==
--
