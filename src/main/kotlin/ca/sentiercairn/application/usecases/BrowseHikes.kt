package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.BrowseHikesQuery
import ca.sentiercairn.application.dtos.results.HikeSummary

interface BrowseHikes {
    fun browse(query: BrowseHikesQuery): List<HikeSummary>
}
