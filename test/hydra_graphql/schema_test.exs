defmodule HydraGraphql.SchemaTest do
  use HydraWeb.ConnCase

  test "mutation: create picking", %{conn: conn} do
    conn =
      post(conn, "/graphql", %{
        "query" => """
          mutation {
            createPicking(products: [
              {
                product: "123",
                stores: ["123", "123123"]
              },
              {
                product: "123",
                stores: ["123", "123123"]
              }
            ])
          }
        """,
        "variables" => %{}
      })

    assert json_response(conn, 200) == %{
             "data" => %{
               "createPicking" =>
                 "We received the payload, and we are going to create all orders!"
             }
           }
  end
end
