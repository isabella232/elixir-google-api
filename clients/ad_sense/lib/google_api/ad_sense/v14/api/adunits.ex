# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AdSense.V14.Api.Adunits do
  @moduledoc """
  API calls for all endpoints tagged `Adunits`.
  """

  alias GoogleApi.AdSense.V14.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets the specified ad unit in the specified ad client.

  ## Parameters

  - connection (GoogleApi.AdSense.V14.Connection): Connection to server
  - ad_client_id (String.t): Ad client for which to get the ad unit.
  - ad_unit_id (String.t): Ad unit to retrieve.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdSense.V14.Model.AdUnit{}} on success
  {:error, info} on failure
  """
  @spec adsense_adunits_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSense.V14.Model.AdUnit.t()} | {:error, Tesla.Env.t()}
  def adsense_adunits_get(connection, ad_client_id, ad_unit_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/adclients/{adClientId}/adunits/{adUnitId}", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1),
        "adUnitId" => URI.encode(ad_unit_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSense.V14.Model.AdUnit{}])
  end

  @doc """
  Get ad code for the specified ad unit.

  ## Parameters

  - connection (GoogleApi.AdSense.V14.Connection): Connection to server
  - ad_client_id (String.t): Ad client with contains the ad unit.
  - ad_unit_id (String.t): Ad unit to get the code for.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdSense.V14.Model.AdCode{}} on success
  {:error, info} on failure
  """
  @spec adsense_adunits_get_ad_code(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSense.V14.Model.AdCode.t()} | {:error, Tesla.Env.t()}
  def adsense_adunits_get_ad_code(
        connection,
        ad_client_id,
        ad_unit_id,
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
      |> Request.url("/adclients/{adClientId}/adunits/{adUnitId}/adcode", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1),
        "adUnitId" => URI.encode(ad_unit_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSense.V14.Model.AdCode{}])
  end

  @doc """
  List all ad units in the specified ad client for this AdSense account.

  ## Parameters

  - connection (GoogleApi.AdSense.V14.Connection): Connection to server
  - ad_client_id (String.t): Ad client for which to list ad units.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :includeInactive (boolean()): Whether to include inactive ad units. Default: true.
    - :maxResults (integer()): The maximum number of ad units to include in the response, used for paging.
    - :pageToken (String.t): A continuation token, used to page through ad units. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.

  ## Returns

  {:ok, %GoogleApi.AdSense.V14.Model.AdUnits{}} on success
  {:error, info} on failure
  """
  @spec adsense_adunits_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSense.V14.Model.AdUnits.t()} | {:error, Tesla.Env.t()}
  def adsense_adunits_list(connection, ad_client_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeInactive => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/adclients/{adClientId}/adunits", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSense.V14.Model.AdUnits{}])
  end

  @doc """
  List all custom channels which the specified ad unit belongs to.

  ## Parameters

  - connection (GoogleApi.AdSense.V14.Connection): Connection to server
  - ad_client_id (String.t): Ad client which contains the ad unit.
  - ad_unit_id (String.t): Ad unit for which to list custom channels.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): The maximum number of custom channels to include in the response, used for paging.
    - :pageToken (String.t): A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.

  ## Returns

  {:ok, %GoogleApi.AdSense.V14.Model.CustomChannels{}} on success
  {:error, info} on failure
  """
  @spec adsense_adunits_customchannels_list(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdSense.V14.Model.CustomChannels.t()} | {:error, Tesla.Env.t()}
  def adsense_adunits_customchannels_list(
        connection,
        ad_client_id,
        ad_unit_id,
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
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/adclients/{adClientId}/adunits/{adUnitId}/customchannels", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1),
        "adUnitId" => URI.encode(ad_unit_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSense.V14.Model.CustomChannels{}])
  end
end
