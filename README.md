# SupervisorExample

Working example of how to use Supervisors + GenServers with AtomVM in Elixir

Ported from: https://github.com/atomvm/atomvm_lib/tree/e5ec0248e0286effebcbc0ad70cc9f7228f463ae/examples/application_example

```console
$ mix atomvm.packbeam && atomvm supervisor_example.avm
No avm_deps directory found.
This message can be safely ignored when standard libraries are already flashed to lib partition.
Starting Supervisor...
Starting Worker...
Tick 0
Tick 1
Tick 2
Tick 3
Tick 4
Boom!
CRASH 
======
pid: <0.4.0>

Stacktrace:
[{Elixir.SupervisorExample.Worker,handle_info,2,[]},{gen_server,loop,3,[{file,"/home/pikdum/code/AtomVM/libs/estdlib/src/gen_server.erl"},{line,551}]}]

cp: #CP<module: 10, label: 15, offset: 38>

x[0]: exit
x[1]: boom
x[2]: {2,1,56,1,[{4,3160},{10,187}],exit}

Stack 
-----

#CP<module: 4, label: 112, offset: 21>
[]
[]
[]
#{counter=>5}
[]
{state,undefined,Elixir.SupervisorExample.Worker,#{counter=>5}}
<0.3.0>
#CP<module: 4, label: 137, offset: 0>


Mailbox
-------


Monitors
--------
link to <0.3.0>


**End Of Crash Report**
Starting Worker...
Tick 0
Tick 1
```
