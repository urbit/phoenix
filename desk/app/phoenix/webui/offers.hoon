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
      %query
    ?~  who=(slaw %p (~(gut by args) 'who' ''))  ~
    [%query u.who]
  ::
      %tomb
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    ?~  where=(slaw %p (~(gut by args) 'where' ''))  ~
    [%tomb u.cas u.pax u.where]
  ::
      %keen
    ?~  cus=(~(get by args) 'case')  ~
    ?~  cas=(de-case u.cus)          ~
    ?~  pat=(~(get by args) 'spur')  ~
    ?~  pax=(rush u.pat stap)        ~
    ?~  where=(slaw %p (~(gut by args) 'where' ''))  ~
    [%keen u.cas u.pax u.where]
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
          ;form(method "post")
            ;tr
              ;td
                ;input(type "text", name "who", placeholder "~hodler");
              ==
              ;td
                ;button(type "submit", name "what", value "query"):"query"
              ==
            ==
          ==    ::  form
        ==
        ::
        ;table#phoenix
          ::  table header
          ;tr(style "font-weight: bold")
            ;td(align "center"):"🔒"
            ;td(align "center"):"tomb"
            ;td(align "center"):"keen"
            ;td(align "center"):"~hodler"
            ;td(align "center"):"path"
            ;td(align "center"):"case"
          ==
          ;*  work
        ==
      ==  ::  body
    ==    ::  html
  ::
  ++  work
    ^-  (list manx)
    =/  dat=(list [ship case (unit path) path])
      %-  zing
      %+  turn  ~(tap by offers)
      |=  [hodler=ship =offer]
      %+  turn  ~(tap in offer)
      |=  [cas=case raw=spur]
      [hodler cas (ppath raw) raw]
    %+  turn  (sort dat aor)
    |=  [hodler=ship =case pax=(unit path) raw=path]
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
          ;input(type "hidden", name "where", value (scow %p hodler));
        ==
      ==
      ::  keen
      ;td
        ;form(method "post")
          ;button(type "submit", name "what", value "keen"):"keen"
          ;input(type "hidden", name "case", value (scow case));
          ;input(type "hidden", name "spur", value (trip (spat raw)));
          ;input(type "hidden", name "where", value (scow %p hodler));
        ==
      ==
      ::  hodler
      ;td(align "right"):"{<hodler>}"
      ::  path
      ;td(align "left"):"{<?^(pax u.pax raw)>}"
      ::  case
      ;td(align "left"):"{<case>}"
    ==
  ::
  ++  ppath
    |=  pax=path
    ^-  (unit path)
    ?~  dep=(decrypt-path:phx (tail pax) keys)
      ~
    `[(head pax) u.dep]
  --
--
