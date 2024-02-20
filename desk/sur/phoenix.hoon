|%
+$  offer  (set [spur case])
+$  key-id  [salt=@ salted-key=@]
::
+$  command
  $%  [%add-guest =ship]           ::  permit a ship to save
      [%del-guest =ship]           ::  remove save permission
    ::
      [%snap =dude:gall]           ::  take snapshot
      [%send =beam where=ship]     ::  command ship to keen
      [%put =beam]                 ::  save to put
      [%import =ship =spur =page]  ::  import a page
    ::
      [%query =ship]               ::  request for offers
      [%keen =beam where=ship]     ::  keen
      [%tomb =beam where=ship]     ::  tombstone
      [%cull =beam where=ship]     ::  cull ud+0 to case
    ::
      [%add-key key=@]             ::  add encryption key
      [%del-key key=@]             ::  del encryption key
      [%export-keys ~]             ::  save keys to put
    ::
      [%restore =beam =dude:gall]  ::  poke an agent with egg-any
  ==
--
