package ecom.validators;

import ecom.entities.*;
import org.springframework.validation.*;

public class SupplierValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		return Supplier.class.equals(arg0);
	}

	@Override
	public void validate(Object object, Errors errors) {
		//...............
	}

	
	
}
