package com.vti.Abstraction1;

import java.util.ArrayList;

public abstract class VietnamesePhone extends Phone{
    private ArrayList<Contacts> contacts = new ArrayList<Contacts>();

    @Override
    public void insertContact(String name, String phone) {
        Contacts contact = new Contacts(name, phone);
        contacts.add(contact);
    }

    @Override
    public void removeContact(String name) {
    contacts.removeIf(contacts1 -> contacts1.getName().equals(name));
    }

    @Override
    public void updateContact(String name, String newPhone) {
        for (Contacts contact : contacts ){
            if (contact.getName().equals(name)){
                contact.setPhone(newPhone);
            }
        }
    }

    @Override
    public void searchContact(String name) {
        for (Contacts contact: contacts){
            if (contact.getName().equals(name)) {
                System.out.println(contact);
            }
        }

    }
}
