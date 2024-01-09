using EarthBalanceModels
using Test

@testset "EarthBalanceModels.jl stable point tests" begin
    # Write your tests here.
    p1 = [1363., 5.67e-8, 0.3]
    Tstar1 = ((1 - 0.3) * 1363 / 4 / 5.67e-8)^0.25
    @test zero_dim_ebm_naive(Tstar1,p1,0.) ≈ 0.
    p2 = [1363., 5.67e-8, 0.3, 0.6]
    Tstar2 = ((1 - 0.3) * 1363 / 4 / 5.67e-8 / 0.6)^0.25
    @test zero_dim_ebm_greenhouse(Tstar2,p2,0.) ≈ 0.
    p3 = [1363., 0.3, 202., 1.45]
    Tstar3 = ((1 - 0.3) * 1363 / 4 - 202.) / 1.45
    @test zero_dim_ebm_budyko(Tstar3,p3,0.) ≈ 0.

end
