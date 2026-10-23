package ca.sentiercairn.application.dtos.results

data class ReminderDispatchResult(
    val attemptedCount: Int,
    val sentCount: Int,
    val failedCount: Int,
)
