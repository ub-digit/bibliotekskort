import Ember from 'ember';

export function getErrorMsg(params/*, hash*/) {
  i18n: Ember.inject.service();
  let errors = params[0];
  
  if (errors) {
    let field = params[1];
    let error = errors.findBy('field', field);
    if (error) {

       return "error_codes." + error.code;
    }
    return '';
  }
  return '';
}

export default Ember.Helper.helper(getErrorMsg);
