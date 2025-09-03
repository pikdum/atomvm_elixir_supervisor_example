defmodule SupervisorExample.Supervisor do
  def start(_args) do
    :io.format(~c"Starting Supervisor...~n")
    :supervisor.start_link({:local, __MODULE__}, __MODULE__, [])
  end

  def init(_args) do
    {:ok,
     {
       {:one_for_one, 1, 1},
       [
         {SupervisorExample.Worker, {SupervisorExample.Worker, :start_link, []}, :permanent,
          :brutal_kill, :worker, []}
       ]
     }}
  end
end
