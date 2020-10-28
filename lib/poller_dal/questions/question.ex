defmodule PollerDal.Questions.Question do
  use Ecto.Schema
  import Ecto.Changeset
  alias PollerDal.Districts.District
  alias PollerDal.Choices.Choice

  schema "questions" do
    field(:description, :string)
    belongs_to(:district, District)
    has_many(:choices, Choice)

    timestamps()
  end

  def changeset(question, attrs) do
    question
    |> cast(attrs, [:description, :district_id])
    |> validate_required([:description, :district_id])
    |> assoc_constraint(:district)
  end
end
