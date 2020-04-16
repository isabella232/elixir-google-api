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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_Track do
  @moduledoc """
  A track of an object instance.

  ## Attributes

  *   `attributes` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute.t)`, *default:* `nil`) - Optional. Attributes in the track level.
  *   `confidence` (*type:* `number()`, *default:* `nil`) - Optional. The confidence score of the tracked object.
  *   `segment` (*type:* `GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_VideoSegment.t`, *default:* `nil`) - Video segment of a track.
  *   `timestampedObjects` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_TimestampedObject.t)`, *default:* `nil`) - The object with timestamp and attributes per frame in the track.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute.t()
            ),
          :confidence => number(),
          :segment =>
            GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_VideoSegment.t(),
          :timestampedObjects =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_TimestampedObject.t()
            )
        }

  field(:attributes,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute,
    type: :list
  )

  field(:confidence)

  field(:segment,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_VideoSegment
  )

  field(:timestampedObjects,
    as:
      GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_TimestampedObject,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_Track do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_Track.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p2beta1_Track do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end