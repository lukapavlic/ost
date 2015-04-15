package si.um.feri.ost;

public class Oseba {

	public Oseba() {
		this("","");
	}
	
	public Oseba(String ime, String priimek) {
		this.ime = ime;
		this.priimek = priimek;
		//fake id...
		id=System.currentTimeMillis();
	}

	private String ime;
	
	private String priimek;
	
	private long id;

	public String getIme() {
		return ime;
	}

	public void setIme(String ime) {
		this.ime = ime;
	}

	public String getPriimek() {
		return priimek;
	}

	public void setPriimek(String priimek) {
		this.priimek = priimek;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return ime+" "+priimek+" ("+id+")";
	}
	
	
}
