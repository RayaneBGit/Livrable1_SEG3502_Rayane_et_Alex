package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.CreateHikeCommand
import ca.sentiercairn.application.dtos.results.CreateHikeResult

interface CreateHike {
    fun create(command: CreateHikeCommand): CreateHikeResult
}
