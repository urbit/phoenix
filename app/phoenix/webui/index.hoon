/-  *phoenix
/+  phoenix, rudder
::
^-  (page:rudder records command)
|_  [=bowl:gall =order:rudder records]
++  final  (alert:rudder (cat 3 '/apps/' dap.bowl) build)
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder command)
  ::  headers
  ::
  ::  [key='content-type' value='application/x-www-form-urlencoded']
  ::  [key='content-type' value='multipart/form-data; boundary=---------------------------136138186512155966012568743125']
  ::
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?~  cmd=(~(get by args) 'cmd')  ~
  ?+    u.cmd  ~
      %get-dude
    ?~  dude=(slaw %tas (~(gut by args) 'dude' ''))  ~
    [%get-dude u.dude]
  ::
      %put-dude
    ?~  dude=(slaw %tas (~(gut by args) 'dude' ''))  ~
    [%put-dude u.dude]
  ==
::
++  build
  |=  $:  arg=(list [k=@t v=@t])
          msg=(unit [o=? =@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"%phoenix"
        ;meta(charset "utf-8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
        ;style:"{(trip style)}"
      ==
      ;body
        ::  links
        ;a/"/apps/phoenix"
          ;h2:"%phoenix"
        ==
        ;h4:"agent backup and restoration"
      ::
      ::
        ;form(method "post", enctype "multipart/form-data")
          ;label
            ; restore:
            ::;input(type "file", name "backup", accept "application/x-urb-jam");
            ;input(type "file", name "backup");
          ==
          ;br;
          ;button(type "submit"):"upload"
        ==

        ;br;

        ;form(method "post", enctype "multipart/form-data")
          ;input(type "hidden", name "image");
          ;button(type "submit"):"remove"
        ==
      ::
      ::
        ;table
          ;tr
            ;td(align "right"):"now: {<now.bowl>}"
          ==
        ==
        ;+  ?~  msg  ;p:""
            ?:  o.u.msg
              ;p.green:"{(trip t.u.msg)}"
            ;p.red:"{(trip t.u.msg)}"
        ;table
          ::  table header
          ;tr(style "font-weight: bold")
            ;th(align "center"):"agent"
            ;th(align "center"):"action"
            ;th(align "center"):"last backup"
          ==
          ;*  work
        ==
      ==  ::  body
    ==    ::  html
  ++  work
    ^-  (list manx)
    ::%+  turn  (sort ~(tap in ~(key by eggs)) aor)
    =/  phx  ~(. phoenix bowl)
    %+  turn  (sort ~(tap in all-live-dudes:phx) aor)
    |=  =dude:gall
    =/  y=(unit egg-any)  (~(get by eggs) dude)
    ::=/  last=(unit @da)  (~(get by lash) dude)
    ;tr
      ;td(align "right"): {<dude>}
      ;td
        ;form(method "post")
          ;button(type "submit", name "cmd", value "put-dude"):"backup"
          ;input(type "hidden", name "dude", value "{(scow %tas dude)}");
        ==
      ==
      ::;td(align "left"): {<?~(last ~ `@dr`(sub now.bowl u.last))>}
    ==
  ++  style
    '''

    * { margin: 0.0em; padding: 0.2em; font-family: monospace; }

    body {
      background-color: black;
      color: white;
    }

    h2 { color: red; }

    form { margin: 0; padding: 0; }

    a {
      display: inline-block;
      color: inherit;
      padding: 0;
      margin-top: 0;
    }

    button {
      padding: 0.0em 0.5em;
    }

    '''
  --  ::  |^
--    ::  |_
