package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.RegisterHikerCommand
import ca.sentiercairn.application.dtos.results.HikerRegistrationResult

interface RegisterHiker {
    fun register(command: RegisterHikerCommand): HikerRegistrationResult
}
