# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Test.Repo.insert!(%Test.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Test.Repo
alias Test.Courier
alias Test.User
alias Test.Pharmacy
alias Test.Relationship
alias Test.Orders

Repo.insert! %User{
  username: "Previous Day",
  email: "Test@gmail.com",
  password: "test",
  type: "courier"
}
Repo.insert! %User{
  username: "Same Day",
  email: "Test2@gmail.com",
  password: "test",
  type: "courier"
}
Repo.insert! %User{
  username: "BetterRx",
  email: "Test3@gmail.com",
  password: "test",
  type: "pharmacy"
}
Repo.insert! %User{
  username: "BestRx",
  email: "Test4@gmail.com",
  password: "test",
  type: "pharmacy"
}
Repo.insert! %User{
  username: "Drugs R Us",
  email: "Test5@gmail.com",
  password: "test",
  type: "pharmacy"
}
Repo.insert! %Pharmacy{
  name: "BetterRx",
  adress: "1275 Kinnear Road, Columbus, OH 43212",
  pharmacy_id: "1"
}
Repo.insert! %Pharmacy{
  name: "BestRx",
  adress: "123 Austin St, Austain, TX 78702",
  pharmacy_id: "2"
}
Repo.insert! %Pharmacy{
  name: "Drugs R Us",
  adress: "4925 LA Ave, Los Angeles, CA 90056",
  pharmacy_id: "3"
}
Repo.insert! %Courier{
  name: "Same Day",
  adress: "900 Trenton Lane, Trenton, NJ 08536",
  pharmacy_id: "1"
}
Repo.insert! %Courier{
  name: "Previous Day",
  adress: "7433 LA Ct, Los Angeles, CA 90056",
  pharmacy_id: "2"
}
Repo.insert! %Relationship{
  pharmacy_id: "1",
  courier_id: "1"
}
Repo.insert! %Relationship{
  pharmacy_id: "1",
  courier_id: "2"
}
Repo.insert! %Relationship{
  pharmacy_id: "2",
  courier_id: "3"
}
