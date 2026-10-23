package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.SendHikeRemindersCommand
import ca.sentiercairn.application.dtos.results.ReminderDispatchResult

interface SendHikeReminders {
    fun send(command: SendHikeRemindersCommand): ReminderDispatchResult
}
