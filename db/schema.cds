using { cuid } from '@sap/cds/common';

    // 0. What does the cuid aspect do?
    // 1. Add createdAt, createdBy, modifiedAt, modifiedBy properties -> what does CAP provide here out of the box?
    // 2. A todo can have severa subtasks. How to you associate the two? the association should be called 'subtasks'
    // 3. Add an action that marks all subtasks of a todo as done
    // 4. Add a field to the todos that counts the number of subtasks present without adding a database column
    // 5. Many to Many association   

entity Todos: cuid {
    title: String; // TODO: needs to be capped to 50 characters and be mandatory
    description: String;
    done: Boolean;
}

entity Subtasks : cuid {
    todo: Association to one Todos;
    title: String; // same restrictions as for Todos should be applied here
    description: String; 
    done: Boolean;
}

entity Persons: cuid {
    firstName: String;
    lastName: String;
}

