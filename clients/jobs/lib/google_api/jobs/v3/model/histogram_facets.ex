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

defmodule GoogleApi.Jobs.V3.Model.HistogramFacets do
  @moduledoc """
  Input only.

  Histogram facets to be specified in SearchJobsRequest.

  ## Attributes

  *   `compensationHistogramFacets` (*type:* `list(GoogleApi.Jobs.V3.Model.CompensationHistogramRequest.t)`, *default:* `nil`) - Optional. Specifies compensation field-based histogram requests.
      Duplicate values of CompensationHistogramRequest.type are not allowed.
  *   `customAttributeHistogramFacets` (*type:* `list(GoogleApi.Jobs.V3.Model.CustomAttributeHistogramRequest.t)`, *default:* `nil`) - Optional. Specifies the custom attributes histogram requests.
      Duplicate values of CustomAttributeHistogramRequest.key are not
      allowed.
  *   `simpleHistogramFacets` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Specifies the simple type of histogram facets, for example,
      `COMPANY_SIZE`, `EMPLOYMENT_TYPE` etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compensationHistogramFacets =>
            list(GoogleApi.Jobs.V3.Model.CompensationHistogramRequest.t()),
          :customAttributeHistogramFacets =>
            list(GoogleApi.Jobs.V3.Model.CustomAttributeHistogramRequest.t()),
          :simpleHistogramFacets => list(String.t())
        }

  field(:compensationHistogramFacets,
    as: GoogleApi.Jobs.V3.Model.CompensationHistogramRequest,
    type: :list
  )

  field(:customAttributeHistogramFacets,
    as: GoogleApi.Jobs.V3.Model.CustomAttributeHistogramRequest,
    type: :list
  )

  field(:simpleHistogramFacets, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.HistogramFacets do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.HistogramFacets.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.HistogramFacets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end