package ca.sentiercairn.application.dtos.queries

import java.time.LocalDateTime

data class CloseDueHikesCommand(
    val evaluatedAt: LocalDateTime,
)
