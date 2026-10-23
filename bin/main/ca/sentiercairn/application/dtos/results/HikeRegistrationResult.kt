package ca.sentiercairn.application.dtos.results

enum class HikeRegistrationStatus {
    CONFIRMED,
    WAITLISTED,
}

data class HikeRegistrationResult(
    val registrationId: String,
    val status: HikeRegistrationStatus,
    val waitlistPosition: Int? = null,
)
