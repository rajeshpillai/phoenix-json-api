# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ProjectMis.Repo.insert!(%ProjectMis.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ProjectMis.Repo 
alias ProjectMis.Management.Project
alias ProjectMis.Management.Document
require Logger

Repo.delete_all(Project)
Repo.delete_all(Document)


for i <- 1..5 do
  result =Repo.insert!(%Project{
    title: "Project #{i}",
    description: "This project #{i} is best ever"
  },returning: [:id])

  IO.inspect(result.id);
  
  for j <- 1..5 do
    Repo.insert! %Document{
      name: "Document #{j}",
      content: "Sample document #{j}",
      view_count: j,
      published: true,
      project_id: result.id
    }
  end
end


