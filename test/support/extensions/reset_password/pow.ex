defmodule PowResetPassword.Test do
  @moduledoc false
  use Pow.Test.ExtensionMocks,
    extensions: [PowResetPassword]

  extensions = [PowResetPassword, PowEmailConfirmation]
  context    = PowResetPassword.PowEmailConfirmation.Test
  config     = Keyword.put(@config, :extensions, extensions)

  Pow.Test.ExtensionMocks.__phoenix_endpoint__(String.to_atom("#{context}Web"), config, [])
end
