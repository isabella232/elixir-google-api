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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomStyleSchemaInfo do
  @moduledoc """


  ## Attributes

  *   `copiedVariables` (*type:* `map()`, *default:* `nil`) - writeOnly: true
  *   `enums` (*type:* `map()`, *default:* `nil`) - Array of values of type EnumOption. This is untyped
      beyond being a JSON object as the metadata
      can be in any format/structure.
  *   `gui` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GuiSection.t)`, *default:* `nil`) - JSON node which represents the input fields in the UI. The server does
      not type this structure beyond being plain JSON;
      the UI handles the rendering.
  *   `properties` (*type:* `map()`, *default:* `nil`) - Map of properties to their kinds. Multiple kinds are allowed on each
      variable. The value of this map is a list of strings, where each string is
      a kind associated with the property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :copiedVariables => map(),
          :enums => map(),
          :gui => list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GuiSection.t()),
          :properties => map()
        }

  field(:copiedVariables, type: :map)
  field(:enums, type: :map)
  field(:gui, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1GuiSection, type: :list)
  field(:properties, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomStyleSchemaInfo do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomStyleSchemaInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1CustomStyleSchemaInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end