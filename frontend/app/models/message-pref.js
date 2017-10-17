import DS from 'ember-data';

export default DS.Model.extend({
  label_sv: DS.attr('string'),
  label_en: DS.attr('string'),

});
