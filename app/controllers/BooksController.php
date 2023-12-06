<?php
    namespace App\Controllers;

    use Psr\Http\Message\ResponseInterface as Response;
    use Psr\Http\Message\ServerRequestInterface as Request;
    use App\Models\Book;
    class BooksController {
        public function index (Request $request, Response $response) {
            $books = Book::all();
            ob_start();
            include __DIR__ . "/../../views/books/index.view.php";
            $html = ob_get_clean();
            $response->getBody()->write($html);
            return $response;
        }

        public function create(Request $request, Response $response) {
            ob_start();
            include __DIR__ . "/../../views/books/create.view.php";
            $html = ob_get_clean();
            $response->getBody()->write($html);
            return $response;
        }

        public function store(Request $request, Response $response) {
            $data = $request->getParsedBody();
            $contact = new Book($data);
            $contact->save();
            return $response
                ->withHeader('Location', '/')
                ->withStatus(302);
        }
    }
