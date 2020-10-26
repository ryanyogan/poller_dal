defmodule PollerDal.Choices.Choice do
  use Ecto.Schema
  import Ecto.Changeset

  alias PollerDal.Questions.Question

  schema "choices" do
    field(:description, :string)
    field(:votes, :integer)
    field(:party, :integer)

    belongs_to(:question, Question)
  end

  def changeset(choice, attrs) do
    choice
    |> cast(attrs, [:description, :votes, :party, :question_id])
    |> validate_required([:description, :question_id])
    |> assoc_constraint(:question)
  end
end
