using {com.matbyte as schema} from '../db/schema';

define service CustomerPayments {

    entity Customer as projection on schema.Customer;

    @readonly
    entity Payment  as projection on schema.Payment;

}
