defmodule SupervisorExample.Supervisor do
  def start(args) do
    :io.format(~c"Starting Supervisor...~n")
    :supervisor.start_link({:local, __MODULE__}, __MODULE__, args)
  end

  def init(args) do
    {:ok,
     {
       {:one_for_one, 1, 1},
       [
         {SupervisorExample.Worker, {SupervisorExample.Worker, :start_link, args}, :permanent,
          :brutal_kill, :worker, []}
       ]
     }}
  end
end
