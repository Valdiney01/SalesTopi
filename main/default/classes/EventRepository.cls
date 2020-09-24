public with sharing class EventRepository {

    virtual
    public List<Event> create (List<Event> events) {
        insert events;
        return events;
    }
    virtual
    public List<Event> store (List<Event> events) {
        update events;
        return events;
    }

    virtual
    public void remove (List<Event> events) {
        delete events;
    }

}
