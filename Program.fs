open EdgeDB

let config =
    EdgeDBClientPoolConfig(SchemaNamingStrategy = INamingStrategy.DefaultNamingStrategy, ExplicitObjectIds = false)

let dbClient = EdgeDBClient(config)

type Post = { postId: string; title: string; score: int }

[<EntryPoint>]
let main _ =
    task {
        try
            do! dbClient.ExecuteAsync("""insert Post{ postId := "post1", title := "title", score := 1}""")

            let! results = dbClient.QuerySingleAsync<Option<Post>>("select <optional Post>Post{*} limit 1")
            printfn "%A" results
        with err ->
            printfn "Error: %A" err
    }
    |> Async.AwaitTask
    |> Async.RunSynchronously

    0
