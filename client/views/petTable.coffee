pets = new Meteor.Collection(null)
_.each [
  {name: 'Cat', price: 150}
  {name: 'Dog', price: 200}
  {name: 'Rabbit', price: 50}
  {name: 'Canary', price: 20}
  {name: 'Fish', price: 5}
], (item) -> pets.insert(item)

Template.petTable.helpers

  collection: -> pets
  settings: ->
    group: 'pets'
    rowsPerPage: 3
    showFilter: true
    fields: [
      {key: 'name', label: 'Name'}
      {key: 'price', label: 'Price'}
    ]
