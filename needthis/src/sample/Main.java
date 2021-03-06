package sample;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

public class Main extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception{
        Parent root = FXMLLoader.load(getClass().getResource("sample.fxml"));
        primaryStage.setTitle("Educational Center");
        primaryStage.setScene(new Scene(root));
        primaryStage.show();
        Image image = new Image("/sample/assets/book-open-flat.png");
        primaryStage.getIcons().add(image);

    }


    public static void main(String[] args) {
        launch(args);
    }
}
