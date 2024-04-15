/-  *phoenix
/+  phoenix, rudder, phoenix-style
::
^-  (page:rudder records-0 command)
|_  [=bowl:gall order:rudder records-0]
+*  phx   ~(. phoenix bowl)
++  final  (alert:rudder url.request build)
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder command)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?~  what=(~(get by args) 'what')  ~
  ?+    u.what  ~
      %snap
    ?~  dude=(slaw %tas (~(gut by args) 'dude' ''))  ~
    [%snap u.dude]
  ::
      %tomb
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    ?~  where=(slaw %p (~(gut by args) 'where' ''))  ~
    [%tomb u.cas u.pax u.where]
  ::
      %put
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    [%put u.cas u.pax]
  ::
      %restore
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    ?~  dude=(rush (~(gut by args) 'dude' '') ;~(pfix cen sym))  ~
    ?.  ((sane %tas) u.dude)  ~
    [%restore u.cas u.pax u.dude]
  ::
      %send
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    ?~  who=(slaw %p (~(gut by args) 'who' ''))  ~
    [%send u.cas u.pax u.who]
  ==
::
++  build
  |=  $:  arg=(list [k=@t v=@t])
          msg=(unit [o=? =@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ::
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"%phoenix"
        ;meta(charset "utf-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
        ;style:"{(trip style:phoenix-style)}"
      ==
      ;body
        ::  links
        ;a/"/apps/phoenix"
          ;h2:"%phoenix"
        ==
        ;a/"/apps/phoenix/backup"
          ;h2:"backup"
        ==
        ;a/"/apps/phoenix/offers"
          ;h2:"offers"
        ==
        ;a/"/apps/phoenix/guests"
          ;h2:"guests"
        ==
        ;a/"/apps/phoenix/deposits"
          ;h2:"deposits"
        ==
        ;a/"/apps/phoenix/readme"
          ;h2:"README"
        ==

        ;h4:"agent backup & restore"

        ;+  ?~  msg  ;p:""
            ?:  o.u.msg
              ;p.green:"{(trip t.u.msg)}"
            ;p.red:"{(trip t.u.msg)}"
        ;table#phoenix
          ::  table header
          ;tr(style "font-weight: bold")
            ;td(align "center"):"🔒"
            ;td(align "center"):"tomb"
            ;td(align "center"):"put"
            ;td(align "center"):"send"
            ;td(align "center"):"restore"
            ;td(align "center"):"path"
            ;td(align "center"):"case"
            ;td(align "center"):"sources"
          ==
          ;*  work
        ==
      ==  ::  body
    ==    ::  html
  ::
  ++  work
    ^-  (list manx)
    =/  dat=(list [case de-pax=(unit path) raw=path])
      %+  turn  ~(tap in (make-offer:phx our.bowl))
      |=  [=case raw=path]
      [case (de-path:phx raw keys) raw]
    %+  turn  (sort dat aor)
    |=  [=case pax=(unit path) raw=path]
    ;tr
      ::  lock
      ;td(align "center")
        ;+  ?^  pax
              ;p:"🔑"
            ;p:"~"
      ==
      ::  tomb
      ;td
        ;form(method "post")
          ;button(type "submit", name "what", value "tomb"):"tomb"
          ;input(type "hidden", name "case", value (scow case));
          ;input(type "hidden", name "spur", value (trip (spat raw)));
          ;input(type "hidden", name "where", value (scow %p our.bowl));
        ==
      ==
      ::  put
      ;td
        ;form(method "post")
          ;button(type "submit", name "what", value "put"):"put"
          ;input(type "hidden", name "case", value (scow case));
          ;input(type "hidden", name "spur", value (trip (spat raw)));
        ==
      ==
      ::  send
      ;td
        ;form(method "post")
          ;input(type "hidden", name "what", value "send");
          ;input(type "hidden", name "case", value (scow case));
          ;input(type "hidden", name "spur", value (trip (spat raw)));
          ;input(type "text", name "who", placeholder "~hodler");
        ==
      ==
      ::  restore
      ;td(align "center")
        ;+  ?~  pax
              ;p:"~"
            ;form(method "post")
              ;input(type "hidden", name "what", value "restore");
              ;input(type "hidden", name "case", value (scow case));
              ;input(type "hidden", name "spur", value (trip (spat raw)));
              ;input(type "text", name "dude", placeholder "%dude");
            ==
      ==
      ::  path
      ;td(align "left"):"{<?^(pax u.pax raw)>}"
      ::  case
      ;td(align "left"):"{<case>}"
      ::  sources
      ;td(align "center"):"{<~(tap in (bank raw))>}"
    ==
  ::
  ++  bank
    |=  pax=path
    ^-  (set ship)
    =/  off=(list (pair ship offer))  ~(tap by offers)
    =|  ships=(set ship)
    |-  ^+  ships
    ?~  off
      ships
    =/  paz=(set path)
      %-  sy
      (turn ~(tap in q.i.off) tail)
    =?  ships  (~(has in paz) pax)
      (~(put in ships) p.i.off)
    $(off t.off)
  --
--
