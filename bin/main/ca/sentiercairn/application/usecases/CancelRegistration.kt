package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.CancelRegistrationCommand

interface CancelRegistration {
    fun cancel(command: CancelRegistrationCommand)
}
