package ca.sentiercairn.application.dtos.results

import java.time.LocalDateTime

data class HikeSummary(
    val hikeId: String,
    val title: String,
    val trailName: String,
    val startsAt: LocalDateTime,
    val difficulty: String,
    val organizerName: String,
    val remainingPlaces: Int,
    val compatibleWithHiker: Boolean? = null,
)
