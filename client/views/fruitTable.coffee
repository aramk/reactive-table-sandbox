fruits = new Meteor.Collection(null)
_.each [
  {name: 'Apple', price: 1}
  {name: 'Orange', price: 2}
  {name: 'Banana', price: 3}
  {name: 'Pear', price: 2}
  {name: 'Grapes', price: 3}
], (product) -> fruits.insert(product)

Template.fruitTable.helpers

  collection: -> fruits
  settings: ->
    rowsPerPage: 3
    showFilter: true
    fields: [
      {key: 'name', label: 'Name'}
      {key: 'price', label: 'Price'}
    ]
