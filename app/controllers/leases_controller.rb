class LeasesController < ApplicationController
    #DELETE /tenants/:id

    def destroy
        lease = find_lease
        lease.destroy
        head :no_content
    end

    private

    def find_lease
        Lease.find(params[:id])
    end
end
