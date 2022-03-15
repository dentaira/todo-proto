package todo.server.tag

import todo.server.user.User

import java.util.UUID

trait TagRepository {

  def generateId: UUID

  def findById(tagId: UUID)

  def searchByUser(user: User): Seq[Tag]

  def save(tag: Tag)

  def update(tag: Tag)

  def deleteById(tagId: UUID)

}
