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

defmodule GoogleApi.Tasks.V1.Model.Task do
  @moduledoc """


  ## Attributes

  *   `completed` (*type:* `DateTime.t`, *default:* `nil`) - Completion date of the task (as a RFC 3339 timestamp). This field is omitted if the task has not been completed.
  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - Flag indicating whether the task has been deleted. The default if False.
  *   `due` (*type:* `DateTime.t`, *default:* `nil`) - Due date of the task (as a RFC 3339 timestamp). Optional.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `hidden` (*type:* `boolean()`, *default:* `nil`) - Flag indicating whether the task is hidden. This is the case if the task had been marked completed when the task list was last cleared. The default is False. This field is read-only.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Task identifier.
  *   `kind` (*type:* `String.t`, *default:* `tasks#task`) - Type of the resource. This is always "tasks#task".
  *   `links` (*type:* `list(GoogleApi.Tasks.V1.Model.TaskLinks.t)`, *default:* `nil`) - Collection of links. This collection is read-only.
  *   `notes` (*type:* `String.t`, *default:* `nil`) - Notes describing the task. Optional.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Parent task identifier. This field is omitted if it is a top-level task. This field is read-only. Use the "move" method to move the task under a different parent or to the top level.
  *   `position` (*type:* `String.t`, *default:* `nil`) - String indicating the position of the task among its sibling tasks under the same parent task or at the top level. If this string is greater than another task's corresponding position string according to lexicographical ordering, the task is positioned after the other task under the same parent task (or at the top level). This field is read-only. Use the "move" method to move the task to another position.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - URL pointing to this task. Used to retrieve, update, or delete this task.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the task. This is either "needsAction" or "completed".
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the task.
  *   `updated` (*type:* `DateTime.t`, *default:* `nil`) - Last modification time of the task (as a RFC 3339 timestamp).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completed => DateTime.t(),
          :deleted => boolean(),
          :due => DateTime.t(),
          :etag => String.t(),
          :hidden => boolean(),
          :id => String.t(),
          :kind => String.t(),
          :links => list(GoogleApi.Tasks.V1.Model.TaskLinks.t()),
          :notes => String.t(),
          :parent => String.t(),
          :position => String.t(),
          :selfLink => String.t(),
          :status => String.t(),
          :title => String.t(),
          :updated => DateTime.t()
        }

  field(:completed, as: DateTime)
  field(:deleted)
  field(:due, as: DateTime)
  field(:etag)
  field(:hidden)
  field(:id)
  field(:kind)
  field(:links, as: GoogleApi.Tasks.V1.Model.TaskLinks, type: :list)
  field(:notes)
  field(:parent)
  field(:position)
  field(:selfLink)
  field(:status)
  field(:title)
  field(:updated, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Tasks.V1.Model.Task do
  def decode(value, options) do
    GoogleApi.Tasks.V1.Model.Task.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Tasks.V1.Model.Task do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
