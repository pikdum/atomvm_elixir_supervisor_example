defmodule SupervisorExample.Worker do
  @behaviour :gen_server

  def start_link(args) do
    :io.format(~c"Starting worker with args: ~p~n", [args])
    :gen_server.start_link(__MODULE__, args, [])
  end

  def init(state) do
    {:ok, state}
  end

  def terminate(_reason, _state), do: :ok
end
