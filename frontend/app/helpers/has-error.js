import Ember from 'ember';

export function hasError(params/*, hash*/) {
  let errors = params[0];
  
  if (errors) {

    let field = params[1];
    if (errors.findBy('field', field)) {
       return 'has-error';
    }
    return 'has-success';
  }
  return '';
}

export default Ember.Helper.helper(hasError);
