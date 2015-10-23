
import processing.net.Client;

public class BoutonReseau  {
  private Client client;

  BoutonReseau(PApplet parent) {
    client=new Client(parent, "127.0.0.1", 5204);
  }

  // redéfinition de la méthode appuyer()
  public void appuyer() {
    client.write("tip");
  }
}