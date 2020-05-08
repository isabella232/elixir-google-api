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

defmodule GoogleApi.Vault.V1.Model.CloudStorageFile do
  @moduledoc """
  An export file on cloud storage

  ## Attributes

  *   `bucketName` (*type:* `String.t`, *default:* `nil`) - The cloud storage bucket name of this export file.
      Can be used in cloud storage JSON/XML API, but not to list the bucket
      contents. Instead, you can <a
      href="https://cloud.google.com/storage/docs/json_api/v1/objects/get">
      get individual export files</a> by object name.
  *   `md5Hash` (*type:* `String.t`, *default:* `nil`) - The md5 hash of the file.
  *   `objectName` (*type:* `String.t`, *default:* `nil`) - The cloud storage object name of this export file.
      Can be used in cloud storage JSON/XML API.
  *   `size` (*type:* `String.t`, *default:* `nil`) - The size of the export file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketName => String.t(),
          :md5Hash => String.t(),
          :objectName => String.t(),
          :size => String.t()
        }

  field(:bucketName)
  field(:md5Hash)
  field(:objectName)
  field(:size)
end

defimpl Poison.Decoder, for: GoogleApi.Vault.V1.Model.CloudStorageFile do
  def decode(value, options) do
    GoogleApi.Vault.V1.Model.CloudStorageFile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vault.V1.Model.CloudStorageFile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
