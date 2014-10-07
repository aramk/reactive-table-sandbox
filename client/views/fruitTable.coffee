fruits = new Meteor.Collection(null)
_.each [
  {name: 'Apple', price: 1}
  {name: 'Orange', price: 2}
  {name: 'Banana', price: 3}
], (product) -> fruits.insert(product)
console.log('fruits', fruits)

Template.fruitTable.helpers

  fruits: -> fruits
  settings: ->
    rowsPerPage: 10
    showFilter: true
    fields: [
      {key: 'name', label: 'Name'},
      {key: 'price', label: 'Price'}
    ]
