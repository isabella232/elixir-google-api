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

defmodule GoogleApi.VectorTile.V1.Model.Vertex2DList do
  @moduledoc """
  2D vertex list used for lines and areas. Each entry represents an offset from the previous one in local tile coordinates. The first entry is offset from (0, 0). For example, the list of vertices [(1,1), (2, 2), (1, 2)] would be encoded in vertex offsets as [(1, 1), (1, 1), (-1, 0)].

  ## Attributes

  *   `xOffsets` (*type:* `list(integer())`, *default:* `nil`) - List of x-offsets in local tile coordinates.
  *   `yOffsets` (*type:* `list(integer())`, *default:* `nil`) - List of y-offsets in local tile coordinates.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :xOffsets => list(integer()),
          :yOffsets => list(integer())
        }

  field(:xOffsets, type: :list)
  field(:yOffsets, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.VectorTile.V1.Model.Vertex2DList do
  def decode(value, options) do
    GoogleApi.VectorTile.V1.Model.Vertex2DList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VectorTile.V1.Model.Vertex2DList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
