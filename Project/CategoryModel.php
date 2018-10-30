<?php
class CategoryModel extends Db
{
	public function getAllItems()
	{
        $items = $this->getItems("SELECT * FROM protype");
        return $items;
	}
 
    public function getItemById($item_id) {
        $items = $this->getItems("SELECT * FROM protype WHERE type_id=$item_id");
        return $items;
    }


}