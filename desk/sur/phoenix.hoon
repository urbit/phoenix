|%
++  current-suite  %'1'
+$  key-id
  $%  [%'1' salt=@ salted-key=@]
  ==
::
+$  phx-export  [%phx-export =spur =page]
+$  egg-cyf     [%egg-cyf =key-id cyf=@]
::
+$  offer  (set [case spur])
::
+$  command
  $%  [%add-guest =ship]                       ::  permit a ship to save
      [%del-guest =ship]                       ::  remove save permission
    ::
      [%snap =dude:gall]                       ::  take snapshot
      [%send =case =spur where=ship]           ::  command ship to keen
      [%put arg=$@(=dude:gall [=case =spur])]  ::  save to put
      [%import =spur =page]                    ::  import a page
    ::
      [%query =ship]                           ::  request for offers
      [%keen =case =spur where=ship]           ::  keen
      [%tomb =case =spur where=ship]           ::  tombstone
      [%cull =case =spur where=ship]           ::  cull ud+0 to case
    ::
      [%add-keys keys=(set @)]                 ::  add encryption keys
      [%del-keys keys=(set @)]                 ::  del encryption keys
    ::
      [%restore =case =spur =dude:gall]        ::  poke an agent with &egg-any
  ==
::
+$  records-0
  $:  keys=(set @ux)
      backup-key=@ux
      guests=(set ship)
      offers=(map ship offer)
  ==
--
