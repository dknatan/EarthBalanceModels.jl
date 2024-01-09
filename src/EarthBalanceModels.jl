module EarthBalanceModels

function zero_dim_ebm_naive(u,p,t)
    S₀, σ, albedo = p
    return (1. - albedo)*(S₀/4.) - σ * u[1]^4
end

function zero_dim_ebm_greenhouse(u,p,t)
    S₀, σ, albedo, ϵ = p
    return (1. - albedo)*(S₀/4.) - ϵ * σ * u[1]^4
end

function zero_dim_ebm_budyko(u,p,t)
    S₀, albedo, A, B = p
    return (1. - albedo)*(S₀/4.) - A - B * u[1]
end

function zero_dim_ebm_t_dep_albedo(du,u,p,t)
    S₀, σ, albedo, ϵ, α₀, α₁, T₀ = p
    return (1. - albedo(u,p,t))*(S₀/4.) - ϵ * σ * u[1]^4
end

function albedo(u,p,t)
    S₀, σ, albedo, ϵ, α₀, α₁, T₀ = p
    return α₀ - 0.5 * α₁ * tanh(u[1] - T₀)
end

end
