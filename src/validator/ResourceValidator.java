package validator;



import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import bean.Resources;

public class ResourceValidator implements Validator{

	@Override
	public boolean supports(Class clazz) {
		return Resources.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empId", "EmpId.required", "Not able to Read from props");
	}
}
