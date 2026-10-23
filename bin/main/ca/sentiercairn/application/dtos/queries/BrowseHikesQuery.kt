package ca.sentiercairn.application.dtos.queries

import java.time.LocalDate

data class BrowseHikesQuery(
    val trailName: String? = null,
    val hikeDate: LocalDate? = null,
    val difficulty: String? = null,
    val requestingHikerId: String? = null,
)
