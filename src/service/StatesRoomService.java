package service;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StatesRoomService {
    private DatabaseService databaseService = null;
    public static StatesRoomService instanceStatesRoomService = null;
    public StatesRoomService() {
        databaseService = DatabaseService.getInstanceDatabaseService();
    }
    public static StatesRoomService getInstanceDatabaseService(){
        if(instanceStatesRoomService == null)
            instanceStatesRoomService = new StatesRoomService();
        return instanceStatesRoomService;
    }

    public boolean updateStatesRoom(int numberRoom,int codeState) {
        String query = "UPDATE room SET status = ? WHERE room_number = ?";
        try (PreparedStatement statement = databaseService.getPreparedStatement(query)) {
            statement.setInt(1,codeState);
            statement.setInt(2,numberRoom);
           int count = statement.executeUpdate();
            return  count > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean updateStateBookedRoom(String idNumber, String bookedTime) {
        String query = "UPDATE book_a_room SET state = 6 " +
                "WHERE customer_id IN(SELECT id FROM customer WHERE identity_number = ?) " +
                "AND start_date = ?";
        try (PreparedStatement statement = databaseService.getPreparedStatement(query)) {
            statement.setString(1,idNumber);
            statement.setString(2,bookedTime);
            int count = statement.executeUpdate();
            return  count > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
