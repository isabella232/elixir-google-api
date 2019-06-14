# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AdSense.V14.Model.Payment do
  @moduledoc """


  ## Attributes

  - id (String.t): Unique identifier of this Payment. Defaults to `nil`.
  - kind (String.t): Kind of resource this is, in this case adsense#payment. Defaults to `adsense#payment`.
  - paymentAmount (String.t): The amount to be paid. Defaults to `nil`.
  - paymentAmountCurrencyCode (String.t): The currency code for the amount to be paid. Defaults to `nil`.
  - paymentDate (String.t): The date this payment was/will be credited to the user, or none if the payment threshold has not been met. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :kind => String.t(),
          :paymentAmount => String.t(),
          :paymentAmountCurrencyCode => String.t(),
          :paymentDate => String.t()
        }

  field(:id)
  field(:kind)
  field(:paymentAmount)
  field(:paymentAmountCurrencyCode)
  field(:paymentDate)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.Payment do
  def decode(value, options) do
    GoogleApi.AdSense.V14.Model.Payment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.Payment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
