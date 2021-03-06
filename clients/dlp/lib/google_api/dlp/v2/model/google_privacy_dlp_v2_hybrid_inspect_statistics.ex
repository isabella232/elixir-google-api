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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridInspectStatistics do
  @moduledoc """
  Statistics related to processing hybrid inspect requests.

  ## Attributes

  *   `abortedCount` (*type:* `String.t`, *default:* `nil`) - The number of hybrid inspection requests aborted because the job ran out of quota or was ended before they could be processed.
  *   `pendingCount` (*type:* `String.t`, *default:* `nil`) - The number of hybrid requests currently being processed. Only populated when called via method `getDlpJob`. A burst of traffic may cause hybrid inspect requests to be enqueued. Processing will take place as quickly as possible, but resource limitations may impact how long a request is enqueued for.
  *   `processedCount` (*type:* `String.t`, *default:* `nil`) - The number of hybrid inspection requests processed within this job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :abortedCount => String.t(),
          :pendingCount => String.t(),
          :processedCount => String.t()
        }

  field(:abortedCount)
  field(:pendingCount)
  field(:processedCount)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridInspectStatistics do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridInspectStatistics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2HybridInspectStatistics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
