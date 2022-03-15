package todo.server.todo

import todo.server.user.User

import java.util.UUID

trait TodoRepository {

  def generateId: UUID

  def findById(todoId: UUID): Todo

  def searchByUser(user: User): Seq[Todo]

  def save(todo: Todo)

  def update(todo: Todo)

  def deleteById(todoId: UUID)

}
