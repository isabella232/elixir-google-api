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

defmodule GoogleApi.BigQueryReservation.V1.Model.SplitCapacityCommitmentResponse do
  @moduledoc """
  The response for ReservationService.SplitCapacityCommitment.

  ## Attributes

  *   `first` (*type:* `GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment.t`, *default:* `nil`) - First capacity commitment, result of a split.
  *   `second` (*type:* `GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment.t`, *default:* `nil`) - Second capacity commitment, result of a split.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :first => GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment.t(),
          :second => GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment.t()
        }

  field(:first, as: GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment)
  field(:second, as: GoogleApi.BigQueryReservation.V1.Model.CapacityCommitment)
end

defimpl Poison.Decoder,
  for: GoogleApi.BigQueryReservation.V1.Model.SplitCapacityCommitmentResponse do
  def decode(value, options) do
    GoogleApi.BigQueryReservation.V1.Model.SplitCapacityCommitmentResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.BigQueryReservation.V1.Model.SplitCapacityCommitmentResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end