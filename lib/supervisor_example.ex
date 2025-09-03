defmodule SupervisorExample do
  @moduledoc """
  Documentation for `SupervisorExample`.
  """

  def start do
    SupervisorExample.Supervisor.start([])
    Process.sleep(:infinity)
  end
end
