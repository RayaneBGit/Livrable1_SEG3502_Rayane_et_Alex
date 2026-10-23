package ca.sentiercairn.application.dtos.queries

import java.time.LocalDate

data class UpdateHikerCommand(
    val hikerId: String,
    val firstName: String? = null,
    val lastName: String? = null,
    val email: String? = null,
    val phoneNumber: String? = null,
    val emergencyContactName: String? = null,
    val emergencyContactPhone: String? = null,
    val membershipStatus: String? = null,
    val certificationNumber: String? = null,
    val certificationIssuedOn: LocalDate? = null,
    val certificationExpiresOn: LocalDate? = null,
    val organizerLevel: String? = null,
)
