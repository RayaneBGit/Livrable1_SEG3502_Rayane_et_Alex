package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.CancelHikeCommand

interface CancelHike {
    fun cancel(command: CancelHikeCommand)
}
