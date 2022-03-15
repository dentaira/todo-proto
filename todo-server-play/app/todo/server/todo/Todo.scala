package todo.server.todo

import todo.server.tag.Tag

import java.time.Instant
import java.util.UUID

case class Todo(id: UUID,
                title: String,
                content: String,
                createdAt: Instant,
                tags: Seq[Tag])
