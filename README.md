# SupervisorExample

Trying to get supervisors working:

```console
$ mix atomvm.packbeam && atomvm supervisor_example.avm
    warning: function handle_call/3 required by behaviour :gen_server is not implemented (in module SupervisorExample.Worker)
    │
  1 │ defmodule SupervisorExample.Worker do
    │ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    │
    └─ lib/supervisor_example/worker.ex:1: SupervisorExample.Worker (module)

    warning: function handle_cast/2 required by behaviour :gen_server is not implemented (in module SupervisorExample.Worker)
    │
  1 │ defmodule SupervisorExample.Worker do
    │ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    │
    └─ lib/supervisor_example/worker.ex:1: SupervisorExample.Worker (module)

No avm_deps directory found.
This message can be safely ignored when standard libraries are already flashed to lib partition.
Starting Supervisor...
=============
CRASH REPORT
gen_server:init_it/4: Error initializing module supervisor
Error: {case_clause,{error,{{'EXIT',badarg},{child,undefined,'Elixir.SupervisorExample.Worker',{'Elixir.SupervisorExample.Worker',start_link,#{}},permanent,brutal_kill,worker,""}}}}
Parent: <0.1.0>
Pid: <0.3.0>
Stacktrace: [{supervisor,start_children,2,[{file,"/home/pikdum/code/AtomVM/libs/estdlib/src/supervisor.erl"},{line,176}]},{supervisor,init,1,[{file,"/home/pikdum/code/AtomVM/libs/estdlib/src/supervisor.erl"},{line,120}]},{gen_server,init_it,4,[{file,"/home/pikdum/code/AtomVM/libs/estdlib/src/gen_server.erl"},{line,163}]},{gen_server,init_it,4,[{file,"/home/pikdum/code/AtomVM/libs/estdlib/src/gen_server.erl"},{line,198}]}]
=============
Return value: {error,{bad_return_value,{case_clause,{error,{{EXIT,badarg},{child,undefined,Elixir.SupervisorExample.Worker,{Elixir.SupervisorExample.Worker,start_link,#{}},permanent,brutal_kill,worker,[]}}}}}}
```
