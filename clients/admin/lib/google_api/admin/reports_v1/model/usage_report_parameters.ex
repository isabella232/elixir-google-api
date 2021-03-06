# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Admin.Reports_v1.Model.UsageReportParameters do
  @moduledoc """


  ## Attributes

  *   `boolValue` (*type:* `boolean()`, *default:* `nil`) - Output only. Boolean value of the parameter.
  *   `datetimeValue` (*type:* `DateTime.t`, *default:* `nil`) - The RFC 3339 formatted value of the parameter, for example 2010-10-28T10:26:35.000Z.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Output only. Integer value of the parameter.
  *   `msgValue` (*type:* `list(map())`, *default:* `nil`) - Output only. Nested message value of the parameter.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the parameter.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - Output only. String value of the parameter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boolValue => boolean(),
          :datetimeValue => DateTime.t(),
          :intValue => String.t(),
          :msgValue => list(map()),
          :name => String.t(),
          :stringValue => String.t()
        }

  field(:boolValue)
  field(:datetimeValue, as: DateTime)
  field(:intValue)
  field(:msgValue, type: :list)
  field(:name)
  field(:stringValue)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReportParameters do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.UsageReportParameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReportParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
