defmodule PollerDal.Choices do
  import Ecto.Query
  alias PollerDal.Repo
  alias PollerDal.Choices.Choice
  # list_choices_by_choices_id/1

  def list_choices(), do: Repo.all(Choice)

  def get_choice(id), do: Repo.get!(Choice, id)

  def create_choice(attrs) do
    %Choice{}
    |> Choice.changeset(attrs)
    |> Repo.insert()
  end

  def delete_choice(%Choice{} = choice) do
    Repo.delete(choice)
  end

  def update_choice(%Choice{} = choice, attrs) do
    choice
    |> Choice.changeset(attrs)
    |> Repo.update()
  end

  def change_choice(%Choice{} = choice) do
    choice
    |> Choice.changeset(%{})
  end

  def list_choices_by_question_id(question_id) do
    from(
      c in Choice,
      where: c.question_id == ^question_id
    )
    |> Repo.all()
  end

  def list_choices_by_choices_ids(ids) do
    from(
      c in Choice,
      where: c.id in ^ids
    )
    |> Repo.all()
  end
end
