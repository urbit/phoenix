#  %phoenix
---
agent backup & restore 

##  summary

`%phoenix` enables you to take a snapshot of any agent, and restore from a snapshot, if supported by that agent.
snapshots can be saved to disk in your `put` directory, or sent over the network to another ship using remote scry.


## security

Urbit is not secure today  
https://roadmap.urbit.org/


## hosted ships

if your ship is hosted by a hosting provider, you won't have access to the filesystem containing the `put` directory. 
* `%phoenix`'s `put` functionality will be of little use
* find a ship to whitelist you as a guest and use networked backups


# backup your keys!

``` hoon
-phoenix!phoenix-put-keys   ::  save keys to put directory
+phoenix!phoenix-show-keys  ::  show keys in %dojo
```


## installation

* clone this repo
* `|new-desk %phoenix`
* `|mount %phoenix`
* cp -LR /[repo]/desk/* /[pier]/phoenix/
* `|commit %phoenix`
* `|install our %phoenix`


## usage

the general usage pattern looks like:
* backup your keys!
* take a snapshot of an agent
* send that snapshot to another ship that has whitelisted you as a guest
* ???
* breach :(
* boot your ship from scratch
* import your old keys to `%phoenix`
* ships holding your snapshots will notify you what's available
* retreive your snapshots
* restore from a snapshot


## %phoenix as a developer tool

`%phoenix` can be used to:
* save and inject state while testing
* test state migrations with real data
* debug data from live ships


##  encryption

`+on-init`, `%phoenix` creates a a `backup-key` derived from your private key (`/j/vein`).  
that key will be used as a basis for encrypting paths and snapshots created by `%phoenix`.  
the current encryption suite uses AES-256.  
backup your keys!


## how snapshots work

`%gall` has a `%gv` scry endpoint, which returns an `$egg-any`.    
an `$egg-any` is a version number, and an `$egg`, containing `%gall`'s view of an agent, which includes its state and additional data.  
see `%lull` for additional type info.  
`%phoenix` performs a `%gv` scry to get a "raw" `$egg-any` snapshot of an agent, then does some work:
* the `old-state` vase has its type replaced by `%noun`
  * this is necessary for `+cue` to work
* the prepared `$egg-any` is encrypted
* metadata is constructed and encrypted, containing `/[rift]/[dude]/[act]`
* an encrypted path is made `/[ship]/[crypto-suite #]/[salt]/[salted-key]/[encrypted-metadata]`
* a remote scry binding is `%grow`n at the encrypted path with the prepared encrypted data


## implementing restore functionality in your agent

`%phoenix` pokes agents with the cage `[%egg-any !>(egg-any)]`  
you'll need to copy `/mar/egg-any/hoon` to your desk.  
restoring from a snapshot looks similar to `+on-load`  
* remember that the type in `old-state` was replaced with `%noun`, so `;;` is used instead of `!<`
* it's probably not advisable to overwrite your current state with old state, but rebuild from it as desired.

``` hoon
++  on-poke
  |=  [=mark =vase]
  ?>  =(%egg-any mark)
  =+  !<(=egg-any:gall vase)
  ?-    -.egg-any
      ?(%15 %16) 
    ?>  ?=(%live -.+.egg-any)
    =+  ;;(old=versioned-state q.+.old-state.+.egg-any)
    ?-    -.old
        %0
      =.  guests  (~(uni in guests) guests.old)
      [~ this]
    ==
  ==
```


## generators

`%dojo` shortcuts for `%phoenix-command`s:

``` hoon
:phoenix|put %dude   ::  take an agent snapshot and save to put, encrypted with your backup key
:phoenix|snap %dude  ::  take an agent snapshot, encrypted with your backup key
:phoenix|query ~hodler  ::  query which snapshots are available from a ship
:phoenix|add-guest ~sampel  ::  whitelist a ship to store snapshots on your ship
:phoenix|del-guest ~sampel  ::  remove a ship from your storage whitelist
:phoenix|add-key 0xdead.beef  ::  add a key used to decrypt snapshots
:phoenix|del-key 0xdead.beef  ::  remove a key
:phoenix|send ud+1 /~sampel/foo ~hodler            ::  send a snapshot to a ship
:phoenix|keen ud+1 /~sampel/foo ~hodler            ::  retrieve a snapshot from a ship
:phoenix|tomb ud+1 /~sampel/foo ~hodler            ::  tombstone (delete) a snapshot from a ship
:phoenix|cull ud+1 /~sampel/foo ~hodler            ::  cull (delete) snapshots 0 to case from a ship
:phoenix|restore ud+1 /~sampel/foo %dude           ::  poke an agent with an `%egg-any` from a snapshot
:phoenix|import-clay /=desk=/sampel-0-dude-42/jam  ::  scry a clay path and import that snapshot
```


## threads

``` hoon
::  save keys to put
::
-phoenix!phoenix-put-keys
::  take a snapshot of an agent and save to put, encrypted by a (unit key)
::
-phoenix!phoenix-put-dude %dude `.^(@ux %gx /=phoenix=/backup-key/noun)
::  take snapshots of all agents in a desk and save to put, encrypted by a (unit key)
::
-phoenix!phoenix-put-desk %desk `.^(@ux %gx /=phoenix=/backup-key/noun)
::  take snapshots of all agents and save to put, encrypted by a (unit key)
::
-phoenix!phoenix-put-all-desks `.^(@ux %gx /=phoenix=/backup-key/noun)
::  save a snapshot to put
::
-phoenix!phoenix-put-case-spur ud+1 /~sampel/foo
```


## scrys

``` hoon
.^(@ux %gx /=phoenix=/backup-key/noun)
.^((set @ux) %gx /=phoenix=/keys/noun)
.^((set ship) %gx /=phoenix=/guests/noun)
.^((set ship) %gx /=phoenix=/depositors/noun)
.^((map ship (set [case spur])) %gx /=phoenix=/offers/noun)
.^((set [case spur]) %gx /=phoenix=/offer/(scot %p our)/noun)
.^(page %gx (en-beam [our %phoenix da+now] :(weld /page/(scot case) spur /noun)))
.^(egg-any:gall %gx (en-beam [our %phoenix da+now] :(weld /egg-any/(scot case) spur /noun)))
```
