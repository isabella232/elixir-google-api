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

defmodule GoogleApi.Content.V21.Api.Liasettings do
  @moduledoc """
  API calls for all endpoints tagged `Liasettings`.
  """

  alias GoogleApi.Content.V21.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves and/or updates the LIA settings of multiple accounts in a single request.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Content.V21.Model.LiasettingsCustomBatchRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiasettingsCustomBatchResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_custombatch(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V21.Model.LiasettingsCustomBatchResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_liasettings_custombatch(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/liasettings/batch", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V21.Model.LiasettingsCustomBatchResponse{}]
    )
  end

  @doc """
  Retrieves the LIA settings of the account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  *   `account_id` (*type:* `String.t`) - The ID of the account for which to get or update LIA settings.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiaSettings{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V21.Model.LiaSettings.t()} | {:error, Tesla.Env.t()}
  def content_liasettings_get(
        connection,
        merchant_id,
        account_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/liasettings/{accountId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V21.Model.LiaSettings{}])
  end

  @doc """
  Retrieves the list of accessible Google My Business accounts.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  *   `account_id` (*type:* `String.t`) - The ID of the account for which to retrieve accessible Google My Business accounts.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiasettingsGetAccessibleGmbAccountsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_getaccessiblegmbaccounts(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V21.Model.LiasettingsGetAccessibleGmbAccountsResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_liasettings_getaccessiblegmbaccounts(
        connection,
        merchant_id,
        account_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/liasettings/{accountId}/accessiblegmbaccounts", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V21.Model.LiasettingsGetAccessibleGmbAccountsResponse{}]
    )
  end

  @doc """
  Lists the LIA settings of the sub-accounts in your Merchant Center account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the managing account. This must be a multi-client account.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of LIA settings to return in the response, used for paging.
      *   `:pageToken` (*type:* `String.t`) - The token returned by the previous request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiasettingsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V21.Model.LiasettingsListResponse.t()} | {:error, Tesla.Env.t()}
  def content_liasettings_list(connection, merchant_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/liasettings", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V21.Model.LiasettingsListResponse{}])
  end

  @doc """
  Retrieves the list of POS data providers that have active settings for the all eiligible countries.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiasettingsListPosDataProvidersResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_listposdataproviders(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Content.V21.Model.LiasettingsListPosDataProvidersResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_liasettings_listposdataproviders(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/liasettings/posdataproviders", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V21.Model.LiasettingsListPosDataProvidersResponse{}]
    )
  end

  @doc """
  Requests access to a specified Google My Business account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  *   `account_id` (*type:* `String.t`) - The ID of the account for which GMB access is requested.
  *   `gmb_email` (*type:* `String.t`) - The email of the Google My Business account.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiasettingsRequestGmbAccessResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_requestgmbaccess(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V21.Model.LiasettingsRequestGmbAccessResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_liasettings_requestgmbaccess(
        connection,
        merchant_id,
        account_id,
        gmb_email,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/liasettings/{accountId}/requestgmbaccess", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :gmbEmail, gmb_email)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V21.Model.LiasettingsRequestGmbAccessResponse{}]
    )
  end

  @doc """
  Requests inventory validation for the specified country.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  *   `account_id` (*type:* `String.t`) - The ID of the account that manages the order. This cannot be a multi-client account.
  *   `country` (*type:* `String.t`) - The country for which inventory validation is requested.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiasettingsRequestInventoryVerificationResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_requestinventoryverification(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V21.Model.LiasettingsRequestInventoryVerificationResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_liasettings_requestinventoryverification(
        connection,
        merchant_id,
        account_id,
        country,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/{merchantId}/liasettings/{accountId}/requestinventoryverification/{country}",
        %{
          "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
          "accountId" => URI.encode(account_id, &URI.char_unreserved?/1),
          "country" => URI.encode(country, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.Content.V21.Model.LiasettingsRequestInventoryVerificationResponse{}]
    )
  end

  @doc """
  Sets the inventory verification contract for the specified country.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  *   `account_id` (*type:* `String.t`) - The ID of the account that manages the order. This cannot be a multi-client account.
  *   `contact_email` (*type:* `String.t`) - The email of the inventory verification contact.
  *   `contact_name` (*type:* `String.t`) - The name of the inventory verification contact.
  *   `country` (*type:* `String.t`) - The country for which inventory verification is requested.
  *   `language` (*type:* `String.t`) - The language for which inventory verification is requested.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiasettingsSetInventoryVerificationContactResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_setinventoryverificationcontact(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.Content.V21.Model.LiasettingsSetInventoryVerificationContactResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_liasettings_setinventoryverificationcontact(
        connection,
        merchant_id,
        account_id,
        contact_email,
        contact_name,
        country,
        language,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/liasettings/{accountId}/setinventoryverificationcontact", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :contactEmail, contact_email)
      |> Request.add_param(:query, :contactName, contact_name)
      |> Request.add_param(:query, :country, country)
      |> Request.add_param(:query, :language, language)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.Content.V21.Model.LiasettingsSetInventoryVerificationContactResponse{}
        ]
    )
  end

  @doc """
  Sets the POS data provider for the specified country.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  *   `account_id` (*type:* `String.t`) - The ID of the account for which to retrieve accessible Google My Business accounts.
  *   `country` (*type:* `String.t`) - The country for which the POS data provider is selected.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:posDataProviderId` (*type:* `String.t`) - The ID of POS data provider.
      *   `:posExternalAccountId` (*type:* `String.t`) - The account ID by which this merchant is known to the POS data provider.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiasettingsSetPosDataProviderResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_setposdataprovider(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Content.V21.Model.LiasettingsSetPosDataProviderResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_liasettings_setposdataprovider(
        connection,
        merchant_id,
        account_id,
        country,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :posDataProviderId => :query,
      :posExternalAccountId => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/liasettings/{accountId}/setposdataprovider", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :country, country)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V21.Model.LiasettingsSetPosDataProviderResponse{}]
    )
  end

  @doc """
  Updates the LIA settings of the account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Content.V21.Connection.t`) - Connection to server
  *   `merchant_id` (*type:* `String.t`) - The ID of the managing account. If this parameter is not the same as accountId, then this account must be a multi-client account and accountId must be the ID of a sub-account of this account.
  *   `account_id` (*type:* `String.t`) - The ID of the account for which to get or update LIA settings.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Content.V21.Model.LiaSettings.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Content.V21.Model.LiaSettings{}}` on success
  *   `{:error, info}` on failure
  """
  @spec content_liasettings_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Content.V21.Model.LiaSettings.t()} | {:error, Tesla.Env.t()}
  def content_liasettings_update(
        connection,
        merchant_id,
        account_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/{merchantId}/liasettings/{accountId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "accountId" => URI.encode(account_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V21.Model.LiaSettings{}])
  end
end