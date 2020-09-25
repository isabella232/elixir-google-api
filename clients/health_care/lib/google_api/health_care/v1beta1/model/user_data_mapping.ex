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

defmodule GoogleApi.HealthCare.V1beta1.Model.UserDataMapping do
  @moduledoc """
  Maps a user data entry to its end user and Attributes.

  ## Attributes

  *   `archiveTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Indicates the time when this data mapping was archived.
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether this data mapping is archived.
  *   `dataId` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for the mapped data.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  *   `resourceAttributes` (*type:* `list(GoogleApi.HealthCare.V1beta1.Model.Attribute.t)`, *default:* `nil`) - Attributes of end user data. Each attribute can have exactly one value specified. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Required. User's UUID provided by the client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :archiveTime => DateTime.t(),
          :archived => boolean(),
          :dataId => String.t(),
          :name => String.t(),
          :resourceAttributes => list(GoogleApi.HealthCare.V1beta1.Model.Attribute.t()),
          :userId => String.t()
        }

  field(:archiveTime, as: DateTime)
  field(:archived)
  field(:dataId)
  field(:name)
  field(:resourceAttributes, as: GoogleApi.HealthCare.V1beta1.Model.Attribute, type: :list)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.UserDataMapping do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.UserDataMapping.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.UserDataMapping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end