<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Books</title>
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <h2>Lista cartilor</h2>
        </div>
        <div class="row">
            <div class="col-md-3">
                <h5>Filtrarea cartilor</h5>
            </div>
            <div class="col-md-9">
                <a href="/book/adauga" class="btn btn-info mb-2 text-white">Adauga</a>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Titlu</th>
                        <th scope="col">Autor</th>
                        <th scope="col">Gen</th>
                        <th scope="col">An publicare</th>
                        <th scope="col">ISBN</th>
                        <th scope="col">Descriere</th>
                        <th scope="col">Pret</th>
                        <th scope="col">Stoc</th>
                        <th scope="col">Optiuni</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($books as $book): ?>
                        <tr>
                            <td><?= $book->id ?></td>
                            <td><?= $book->titlu ?></td>
                            <td><?= $book->autor ?></td>
                            <td><?= $book->gen ?></td>
                            <td><?= $book->an_publicare ?></td>
                            <td><?= $book->isbn ?></td>
                            <td><?= $book->descriere ?></td>
                            <td><?= $book->pret ?></td>
                            <td><?= $book->stoc ?></td>
                            <td>
                                <a href="#" class="btn btn-sm btn-warning text-white">Edit</a>
                                <a href="#" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>