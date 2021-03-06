defmodule Authable.AuthStrategy do
  @moduledoc """
  A behaviour for all auth strategy modules called by other authable modules.

  ## Creating a custom module

  If you are going to create a custom auth strategy module, then you need to
  implement following function:
    * `authenticate`
  """

  @doc """
  Finds and returns Resource Owner(User) struct using a param(param can be any
  type).

  This function returns a `{:ok, Authable.Model.User struct}` or
  `{:error, Map, :http_status_code}` or nil.
  """
  @callback authenticate(any, List) ::
              {:ok, Authable.User} | {:error, Map, Atom} | nil
end
