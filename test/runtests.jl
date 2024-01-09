using EarthBalanceModels
using Test

@testset "EarthBalanceModels.jl stable point tests" begin
    # Write your tests here.
    p1 = [1363., 5.67e-8, 0.3]
    Tstar1 = ((1. - p1[3]) * (p1[1] / 4.) / p1[2])^0.25
    # @test EarthBalanceModels.zero_dim_ebm_naive(Tstar1,p1,0.) ≈ 0.
    @test EarthBalanceModels.zero_dim_ebm_naive(254.67581896901592,[1363., 5.67e-8, 0.3],0.) ≈ 0.

    p2 = [1363., 5.67e-8, 0.3, 0.6]
    Tstar2 = ((1. - p2[3]) * (p2[1] / 4.) / (p2[2] * p2[4]))^0.25
    @test EarthBalanceModels.zero_dim_ebm_greenhouse(Tstar2,p2,0.) ≈ 0.

    p3 = [1363., 0.3, 202., 1.45]
    Tstar3 = ((1. - p3[2]) * (p3[1] / 4.) - p3[3]) / p3[4]
    @test EarthBalanceModels.zero_dim_ebm_budyko(Tstar3,p3,0.) ≈ 0.

end
