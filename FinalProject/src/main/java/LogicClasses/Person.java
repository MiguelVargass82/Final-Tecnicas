
package LogicClasses;
public class Person {
    
    String GeneralInformation;
    String Skills;
    String Experience;

    
    public Person(){
      
    GeneralInformation="";
     Skills="";
     Experience="";   
    }
    
    public Person(String GeneralInformation, String Skills, String Experience) {
        this.GeneralInformation = GeneralInformation;
        this.Skills = Skills;
        this.Experience = Experience;
    }

    public String getGeneralInformation() {
        return GeneralInformation;
    }

    public void setGeneralInformation(String GeneralInformation) {
        this.GeneralInformation = GeneralInformation;
    }

    public String getSkills() {
        return Skills;
    }

    public void setSkills(String Skills) {
        this.Skills = Skills;
    }

    public String getExperience() {
        return Experience;
    }

    public void setExperience(String Experience) {
        this.Experience = Experience;
    }
    
    
    
    
}
