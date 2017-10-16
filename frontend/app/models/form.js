import DS from 'ember-data';

export default DS.Model.extend({
  firstname: DS.attr('string'),
  lastname: DS.attr('string'),
  address1: DS.attr('string'),
  zip1: DS.attr('string'),
  region1: DS.attr('string'),
  phone1: DS.attr('string'),
  socialnumber: DS.attr('string'),
  email: DS.attr('string')
});
