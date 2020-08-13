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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Detail do
  @moduledoc """
  Identifies all occurrences of this vulnerability in the package for a specific distro/location For example: glibc in cpe:/o:debian:debian_linux:8 for versions 2.1 - 2.2

  ## Attributes

  *   `cpeUri` (*type:* `String.t`, *default:* `nil`) - The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which the vulnerability manifests. Examples include distro or storage location for vulnerable jar. This field can be used as a filter in list requests.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A vendor-specific description of this note.
  *   `fixedLocation` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation.t`, *default:* `nil`) - The fix for this specific package version.
  *   `isObsolete` (*type:* `boolean()`, *default:* `nil`) - Whether this Detail is obsolete. Occurrences are expected not to point to obsolete details.
  *   `maxAffectedVersion` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.t`, *default:* `nil`) - The max version of the package in which the vulnerability exists.
  *   `minAffectedVersion` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.t`, *default:* `nil`) - The min version of the package in which the vulnerability exists.
  *   `package` (*type:* `String.t`, *default:* `nil`) - The name of the package where the vulnerability was found. This field can be used as a filter in list requests.
  *   `packageType` (*type:* `String.t`, *default:* `nil`) - The type of package; whether native or non native(ruby gems, node.js packages etc)
  *   `severityName` (*type:* `String.t`, *default:* `nil`) - The severity (eg: distro assigned severity) for this vulnerability.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpeUri => String.t(),
          :description => String.t(),
          :fixedLocation => GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation.t(),
          :isObsolete => boolean(),
          :maxAffectedVersion => GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.t(),
          :minAffectedVersion => GoogleApi.ContainerAnalysis.V1alpha1.Model.Version.t(),
          :package => String.t(),
          :packageType => String.t(),
          :severityName => String.t()
        }

  field(:cpeUri)
  field(:description)
  field(:fixedLocation, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.VulnerabilityLocation)
  field(:isObsolete)
  field(:maxAffectedVersion, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Version)
  field(:minAffectedVersion, as: GoogleApi.ContainerAnalysis.V1alpha1.Model.Version)
  field(:package)
  field(:packageType)
  field(:severityName)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Detail do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Detail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Detail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
