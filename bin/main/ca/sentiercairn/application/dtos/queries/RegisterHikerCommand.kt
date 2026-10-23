package ca.sentiercairn.application.dtos.queries

import java.time.LocalDate

data class RegisterHikerCommand(
    val invitationCode: String,
    val email: String,
    val password: String,
    val firstName: String,
    val lastName: String,
    val dateOfBirth: LocalDate,
    val phoneNumber: String,
    val emergencyContactName: String,
    val emergencyContactPhone: String,
    val liabilityWaiverAccepted: Boolean,
    val guardianConsentAccepted: Boolean = false,
    val guardianName: String? = null,
)
