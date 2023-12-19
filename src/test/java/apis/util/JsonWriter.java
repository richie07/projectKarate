package apis.util;

import org.json.JSONObject;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class JsonWriter {
    private static final List<String> jsonObjects = new ArrayList<>();

    public static void writeToJsonFile(String filePath, String jsonData) {
        JSONObject idObject = new JSONObject();
        idObject.put("id", jsonData);
        idObject.put("name", "Personal Workspace");
        idObject.put("description", "Description");
        idObject.put("type", "personal");

        // Agregar a la lista
        jsonObjects.add(idObject.toString());
        saveToFile(filePath);
    }

    private static void saveToFile(String filePath) {
        File file = new File(filePath);

        try (FileWriter fileWriter = new FileWriter(file)) {
            fileWriter.write("[\n");
            boolean first = true;

            for (String jsonObject : jsonObjects) {
                if (!first) {
                    fileWriter.write(",\n");
                }
                fileWriter.write(jsonObject);
                first = false;
            }

            fileWriter.write("\n]");
            System.out.println("Datos agregados exitosamente al archivo: " + filePath);
        } catch (IOException e) {
            System.err.println("Error al guardar los datos en el archivo: " + e.getMessage());
            // Trata de lanzar RuntimeException para evitar problemas con GraalVM
            throw new RuntimeException(e);
        }
    }
}
