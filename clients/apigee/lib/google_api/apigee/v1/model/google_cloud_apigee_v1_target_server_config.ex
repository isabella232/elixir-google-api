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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TargetServerConfig do
  @moduledoc """


  ## Attributes

  *   `host` (*type:* `String.t`, *default:* `nil`) - Target host name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The target server revision name. Must be of the form
      'organizations/{org}/environments/{env}/targetservers/{ts_id}/revisions/{rev}'.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Target port.
  *   `tlsInfo` (*type:* `GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfoConfig.t`, *default:* `nil`) - TLS settings for the target.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => String.t(),
          :name => String.t(),
          :port => integer(),
          :tlsInfo => GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfoConfig.t()
        }

  field(:host)
  field(:name)
  field(:port)
  field(:tlsInfo, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TlsInfoConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TargetServerConfig do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TargetServerConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1TargetServerConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end