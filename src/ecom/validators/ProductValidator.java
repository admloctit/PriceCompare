package ecom.validators;

import ecom.entities.*;
import org.springframework.validation.*;

public class ProductValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		return Product.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
		
	}

	
	
}
