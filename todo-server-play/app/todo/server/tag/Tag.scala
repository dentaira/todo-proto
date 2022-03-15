package todo.server.tag

import java.time.Instant
import java.util.UUID

case class Tag(id: UUID, name: String, createdAt: Instant)
