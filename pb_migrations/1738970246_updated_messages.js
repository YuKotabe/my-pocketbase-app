/// <reference path="../pb_data/types.d.ts" />
migrate((app) => {
  const collection = app.findCollectionByNameOrId("pbc_669929365")

  // add field
  collection.fields.addAt(2, new Field({
    "autogeneratePattern": "",
    "hidden": false,
    "id": "text15428007282",
    "max": 0,
    "min": 0,
    "name": "field",
    "pattern": "",
    "presentable": false,
    "primaryKey": false,
    "required": false,
    "system": false,
    "type": "text"
  }))

  return app.save(collection)
}, (app) => {
  const collection = app.findCollectionByNameOrId("pbc_669929365")

  // remove field
  collection.fields.removeById("text15428007282")

  return app.save(collection)
})
