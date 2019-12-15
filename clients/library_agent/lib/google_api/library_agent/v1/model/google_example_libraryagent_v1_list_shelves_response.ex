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

defmodule GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1ListShelvesResponse do
  @moduledoc """
  Response message for LibraryAgent.ListShelves.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve next page of results.
      Pass this value in the
      ListShelvesRequest.page_token
      field in the subsequent call to `ListShelves` method to retrieve the next
      page of results.
  *   `shelves` (*type:* `list(GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Shelf.t)`, *default:* `nil`) - The list of shelves.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t(),
          :shelves => list(GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Shelf.t())
        }

  field(:nextPageToken)

  field(:shelves,
    as: GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1Shelf,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1ListShelvesResponse do
  def decode(value, options) do
    GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1ListShelvesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.LibraryAgent.V1.Model.GoogleExampleLibraryagentV1ListShelvesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end