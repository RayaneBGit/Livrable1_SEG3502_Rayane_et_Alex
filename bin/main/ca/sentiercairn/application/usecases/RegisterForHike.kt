package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.RegisterForHikeCommand
import ca.sentiercairn.application.dtos.results.HikeRegistrationResult

interface RegisterForHike {
    fun register(command: RegisterForHikeCommand): HikeRegistrationResult
}
