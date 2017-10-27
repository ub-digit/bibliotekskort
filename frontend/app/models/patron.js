import DS from 'ember-data';

export default DS.Model.extend({
  personalnumber: DS.attr('string'),
  categorycode: DS.attr('string'),
  branchcode: DS.attr('string'),
  surname: DS.attr('string'),
  firstname: DS.attr('string'),
  address: DS.attr('string'),
  zipcode: DS.attr('string'),
  city: DS.attr('string'),
  B_address: DS.attr('string'),
  B_city: DS.attr('string'),
  B_zipcode: DS.attr('string'),
  phone: DS.attr('string'),
  smsalertnumber: DS.attr('string'),
  email: DS.attr('string'),
  accept_text: DS.attr('string'),
  lang: DS.attr('string'),
  messaging_format: DS.attr('string')
});
