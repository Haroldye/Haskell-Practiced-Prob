import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public class CustomerManager extends ArrayList<Customer> {
	
	// Return a new list containing only the customers that match the given predicate
	public List < Customer > getCustomersBy ( Predicate < Customer > predicate ){
		return predicate;
	}
	// Return a new list containing only customers 65 or older
	public List < Customer > getSeniors (){
		Predicate < Customer > Seniors = cus -> cus.age >= 65;
		return getCustomersBy(Seniors);
	}
	// Return a new list containing only customers under 18
	public List < Customer > getChildren (){
		Predicate < Customer > Children = chi -> chi.age <= 18;
		return  getCustomersBy(Children);
	}
	// Return a new list containing only customers in the given country
	public List < Customer > getCustomersFrom ( String country ){
		Predicate < Customer > Country = cust -> cust.country == country;
		return  getCustomersBy(Country);
	}
	// Return a new list containing only customers having a last name starting with the given prefix
	public List < Customer > getCustomersByLastNamePrefix ( String prefix ){
		Predicate < Customer > lastName = pref -> pref.lastName == prefix;
		return  getCustomersBy(lastName);
	}

}
