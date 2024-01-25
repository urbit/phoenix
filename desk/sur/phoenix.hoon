|%
+$  offer  (set [spur case])
::
+$  command
  $%  [%snap =dude:gall]                     ::  take snapshot
      [%restore =dude:gall =case]            ::  poke an agent with egg-any
    ::
      [%query who=(unit ship)]               ::  request for offers
      [%cull =dude:gall =case where=ship]    ::  cull ud+0 to case
      [%tomb =dude:gall =case where=ship]    ::  tombstone
      [%keen spar:ames]                      ::  keen
    ::
      [%add-guest =ship]                     ::  permit a ship to save
      [%del-guest =ship]                     ::  remove save permission
    ::
      [%add-key key=@]                       ::  add encryption key
      [%del-key key=@]                       ::  del encryption key
    ::
      [%put =ship =dude:gall =case]          ::  save to put
      [%import-clay =ship =dude:gall =path]  ::  load a jam from clay
    ::
      [%send =dude:gall =case target=ship]   ::  command target to keen
  ==
--
