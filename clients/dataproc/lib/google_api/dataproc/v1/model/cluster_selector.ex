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

defmodule GoogleApi.Dataproc.V1.Model.ClusterSelector do
  @moduledoc """
  A selector that chooses target cluster for jobs based on metadata.

  ## Attributes

  *   `clusterLabels` (*type:* `map()`, *default:* `nil`) - Required. The cluster labels. Cluster must have all labels to match.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterLabels => map(),
          :zone => String.t()
        }

  field(:clusterLabels, type: :map)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ClusterSelector do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ClusterSelector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ClusterSelector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
