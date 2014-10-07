fruits = new Meteor.Collection(null)
_.each [
  {name: 'Apple', price: 1}
  {name: 'Orange', price: 2}
  {name: 'Banana', price: 3}
  {name: 'Pear', price: 2}
  {name: 'Grapes', price: 3}
], (item) -> fruits.insert(item)

Template.fruitTable.helpers

  collection: -> fruits
  settings: ->
    group: 'fruits'
    rowsPerPage: 3
    showFilter: true
    fields: [
      {key: 'name', label: 'Name'}
      {key: 'price', label: 'Price'}
    ]
