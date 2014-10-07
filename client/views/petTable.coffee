pet = new Meteor.Collection(null)
_.each [
  {name: 'Cat', price: 150}
  {name: 'Dog', price: 200}
  {name: 'Rabbit', price: 50}
  {name: 'Canary', price: 20}
  {name: 'Fish', price: 5}
], (product) -> pet.insert(product)

Template.petTable.helpers

  collection: -> pet
  settings: ->
    rowsPerPage: 3
    showFilter: true
    fields: [
      {key: 'name', label: 'Name'}
      {key: 'price', label: 'Price'}
    ]
