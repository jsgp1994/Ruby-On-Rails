class TestController < ApplicationController

    def _recorer_objeto
        render json: { post:  TestService.ciclo}
    end

end
