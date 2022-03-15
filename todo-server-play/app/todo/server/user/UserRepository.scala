package todo.server.user

import java.util.UUID

trait UserRepository {

  def generateId: UUID

  def findById(userId: UUID): User

  def save(user: User)

  def update(user: User)

  def deleteById(userId: UUID)

}
