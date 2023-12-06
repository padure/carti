<?php
    use Slim\Psr7\Request;
    use Slim\Psr7\Response;
    use App\Controllers\BooksController;

    $app->get("/", [BooksController::class, "index"]);
    $app->get("/book/adauga", [BooksController::class, "create"]);
    $app->post("/book/store", [BooksController::class, "store"]);