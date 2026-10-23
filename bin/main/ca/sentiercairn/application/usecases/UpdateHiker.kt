package ca.sentiercairn.application.usecases

import ca.sentiercairn.application.dtos.queries.UpdateHikerCommand

interface UpdateHiker {
    fun update(command: UpdateHikerCommand)
}
