package ca.sentiercairn.application.dtos.queries

data class CancelHikeCommand(
    val hikeId: String,
    val reason: String,
)
