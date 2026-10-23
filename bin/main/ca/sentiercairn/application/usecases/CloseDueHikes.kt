package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.CloseDueHikesCommand
import ca.sentiercairn.application.dtos.results.CloseDueHikesResult

interface CloseDueHikes {
    fun close(command: CloseDueHikesCommand): CloseDueHikesResult
}
