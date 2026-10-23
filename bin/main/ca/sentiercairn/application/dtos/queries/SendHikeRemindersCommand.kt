package ca.sentiercairn.application.dtos.queries

import java.time.LocalDate

data class SendHikeRemindersCommand(
    val reminderDate: LocalDate,
)
