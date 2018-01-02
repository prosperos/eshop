<option value="<?= $category['id']?>"
    <?php if ($category['id'] == $this->model->parent_id)  echo ' selected'?>
    <?= $category['id']?>"<?php if ($category['id'] == $this->model->parent_id) echo ' selected'?>>
    <?= $category['id']?>
</option>


<?php if (isset($category['childs'])): ?>
    <ul>
        <?= $this->getMenuHtml($category['childs']) ?>
    </ul>
<?php endif; ?>