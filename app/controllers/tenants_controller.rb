class TenantsController < ApplicationController
    
    #GET /tenants
    def index
        tenants = Tenant.all
    end

    #POST /tenants
    def create
        tenant = Tenant.create(tenant_params)
        render json: tenant, status: :created
    end

    #PATCH /tenants/:id
    def update
        tenant = find_tenant
        tenant.update(tenant_params)
        render json: tenant
    end

    #DELETE /tenants/:id

    def destroy
        tenant = find_tenant
        tenant.destroy
        head :no_content
    end

    private

    def find_tenant
        Tenant.find(params[:id])
    end
    def tenant_params
        parmas.permit(:name, :age)
    end

end
