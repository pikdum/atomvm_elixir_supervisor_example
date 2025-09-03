defmodule SupervisorExample.Worker do
  @behaviour :gen_server

  def start_link do
    :io.format(~c"Starting Worker...~n")
    :gen_server.start_link(__MODULE__, [], [])
  end

  def init([]) do
    send_tick()
    {:ok, %{counter: 0}}
  end

  def handle_cast(_msg, state), do: {:noreply, state}
  def handle_call(_msg, _from, state), do: {:noreply, {:error, :unimplemented}, state}

  def handle_info(:tick, %{counter: 5} = state) do
    :io.format(~c"Boom!~n")
    exit(:boom)
    {:noreply, state}
  end

  def handle_tick(:tick, %{counter: count} = state) do
    :io.format(~c"Tick ~p~n", [count])
    send_tick()
    {:noreply, %{state | counter: count + 1}}
  end

  def terminate(_reason, _state), do: :ok

  defp send_tick do
    :erlang.send_after(1_000, self(), :tick)
  end
end
