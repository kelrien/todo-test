using {Todos as TodoModel, Subtasks as SubTaskModel} from '../db/schema';

service TodoService {
    entity Todos as projection on TodoModel;
    entity Subtasks as projection on SubTaskModel
}