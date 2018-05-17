package ecom.validators;

import ecom.entities.*;
import org.springframework.validation.*;

public class CategoryValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		return Category.class.equals(arg0);
	}

	@Override
	public void validate(Object object, Errors errors) {
		//...............
	}

	
	
}
