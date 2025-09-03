defmodule SupervisorExample do
  @moduledoc """
  Documentation for `SupervisorExample`.
  """

  def start do
    SupervisorExample.Supervisor.start(%{})
  end
end
