<?php
$jobs = JobData::getAllActive();
?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Vacantes de Trabajo</h1>

            <div class="panel panel-default">
                <div class="panel-heading">Vacantes de Trabajo</div>
                <div class="panel-body">

                <?php if (count($jobs) > 0) : ?>
    <table>
        <?php foreach ($jobs as $jb) : ?>
            <tr>
                <td>
                    <?php
                    // Verifica si la propiedad 'name' existe en el objeto $jb
                    if (property_exists($jb, 'name')) {
                        echo '<h4>' . $jb->name . '</h4>';
                    } else {
                        echo '<h4>No se ha definido un nombre para esta vacante.</h4>';
                    }

                    // Comprueba y muestra la categoría y el lugar si están disponibles
                    if (property_exists($jb, 'category_id') && property_exists($jb, 'place_id')) {
                        $category = CategoryData::getById($jb->category_id);
                        $place = PlaceData::getById($jb->place_id);
                        echo $category->name . ' - ' . $place->name;
                    } else {
                        echo 'Información de categoría o lugar no disponible.';
                    }
                    ?>

                    <a href="./?view=job&id=<?php echo $jb->id; ?>" class="btn btn-primary">Ver</a>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
<?php else : ?>
    <p class="alert alert-warning">No hay vacantes de trabajo por el momento.</p>
<?php endif; ?>

                </div>
            </div>

        </div>
    </div>
</div>
<br><br><br><br>
