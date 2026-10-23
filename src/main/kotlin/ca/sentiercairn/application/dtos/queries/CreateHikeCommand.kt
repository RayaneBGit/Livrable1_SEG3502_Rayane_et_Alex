package ca.sentiercairn.application.dtos.queries

import java.time.LocalDateTime

data class CreateHikeCommand(
    val title: String,
    val description: String,
    val trailId: String,
    val startsAt: LocalDateTime,
    val durationMinutes: Int,
    val registrationDeadline: LocalDateTime,
    val capacity: Int,
)
