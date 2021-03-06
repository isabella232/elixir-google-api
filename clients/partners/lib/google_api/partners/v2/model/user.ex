# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Partners.V2.Model.User do
  @moduledoc """
  A resource representing a user of the Partners platform.

  ## Attributes

  - afaInfoShared (boolean()): Whether or not the user has opted to share their Academy for Ads info with Google Partners. Defaults to: `null`.
  - availableAdwordsManagerAccounts ([AdWordsManagerAccountInfo]): This is the list of AdWords Manager Accounts the user has edit access to. If the user has edit access to multiple accounts, the user can choose the preferred account and we use this when a personal account is needed. Can be empty meaning the user has access to no accounts. @OutputOnly Defaults to: `null`.
  - certificationStatus ([Certification]): The list of achieved certifications. These are calculated based on exam results and other requirements. @OutputOnly Defaults to: `null`.
  - company (CompanyRelation): The company that the user is associated with. If not present, the user is not associated with any company. Defaults to: `null`.
  - companyVerificationEmail (String.t): The email address used by the user used for company verification. @OutputOnly Defaults to: `null`.
  - examStatus ([ExamStatus]): The list of exams the user ever taken. For each type of exam, only one entry is listed. Defaults to: `null`.
  - id (String.t): The ID of the user. Defaults to: `null`.
  - internalId (String.t): The internal user ID. Only available for a whitelisted set of api clients. Defaults to: `null`.
  - lastAccessTime (DateTime.t): The most recent time the user interacted with the Partners site. @OutputOnly Defaults to: `null`.
  - primaryEmails ([String.t]): The list of emails the user has access to/can select as primary. @OutputOnly Defaults to: `null`.
  - profile (UserProfile): The profile information of a Partners user, contains all the directly editable user information. Defaults to: `null`.
  - publicProfile (PublicProfile): Information about a user&#39;s external public profile outside Google Partners. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :afaInfoShared => any(),
          :availableAdwordsManagerAccounts =>
            list(GoogleApi.Partners.V2.Model.AdWordsManagerAccountInfo.t()),
          :certificationStatus => list(GoogleApi.Partners.V2.Model.Certification.t()),
          :company => GoogleApi.Partners.V2.Model.CompanyRelation.t(),
          :companyVerificationEmail => any(),
          :examStatus => list(GoogleApi.Partners.V2.Model.ExamStatus.t()),
          :id => any(),
          :internalId => any(),
          :lastAccessTime => DateTime.t(),
          :primaryEmails => list(any()),
          :profile => GoogleApi.Partners.V2.Model.UserProfile.t(),
          :publicProfile => GoogleApi.Partners.V2.Model.PublicProfile.t()
        }

  field(:afaInfoShared)

  field(
    :availableAdwordsManagerAccounts,
    as: GoogleApi.Partners.V2.Model.AdWordsManagerAccountInfo,
    type: :list
  )

  field(:certificationStatus, as: GoogleApi.Partners.V2.Model.Certification, type: :list)
  field(:company, as: GoogleApi.Partners.V2.Model.CompanyRelation)
  field(:companyVerificationEmail)
  field(:examStatus, as: GoogleApi.Partners.V2.Model.ExamStatus, type: :list)
  field(:id)
  field(:internalId)
  field(:lastAccessTime, as: DateTime)
  field(:primaryEmails, type: :list)
  field(:profile, as: GoogleApi.Partners.V2.Model.UserProfile)
  field(:publicProfile, as: GoogleApi.Partners.V2.Model.PublicProfile)
end

defimpl Poison.Decoder, for: GoogleApi.Partners.V2.Model.User do
  def decode(value, options) do
    GoogleApi.Partners.V2.Model.User.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Partners.V2.Model.User do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
