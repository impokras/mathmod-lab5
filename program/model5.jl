using Plots
using DifferentialEquations


a = 0.27
b = 0.068
c = 0.37
d = 0.064
X₀₁ = 9
Y₀₁ = 29
X₀₂ = 5.78 # X₀₂ = c / d
Y₀₂ = 3.97 # Y₀₂ = a / b

function ode_fn₁(du, u, p, t)
    du[1] = -a*u[1] + b * u[1] * u[2]
    du[2] = c * u[2] - d * u[1] * u[2]
end

function ode_fn₂(du, u, p, t)
    du[1] = -a*u[1] + b * u[1] * u[2]
    du[2] = c * u[2] - d * u[1] * u[2]
end

tspan = (0.0, 100.0 )
prob₁ = ODEProblem(ode_fn₁, [X₀₁, Y₀₁], tspan)
sol₁ = solve(prob₁, dtmax=0.05)
prob₂ = ODEProblem(ode_fn₂, [X₀₂, Y₀₂], tspan)
sol₂ = solve(prob₂, dtmax=0.05)

X₁ = [u[1] for u in sol₁.u]
Y₁ = [u[2] for u in sol₁.u]
X₂ = [u[1] for u in sol₂.u]
Y₂ = [u[2] for u in sol₂.u]
T= [t for t in sol₁.t]

plt = plot(dpi=300, legend=false)
plot!(plt, X₁, Y₁, color=:red)
savefig(plt, "model1.png")

plt2 = plot(dpi=300, legend=true)
plot!(plt2, T, X₁, label="Численность жертв", color=:blue)
plot!(plt2, T, Y₁, label="Численность хищников", color=:purple)
savefig(plt2, "model2.png")


plt3 = plot(dpi=300, legend=true)
plot!(plt3, T, X₂, label="Численность жертв", color=:blue)
plot!(plt3, T, Y₂, label="Численность хищников", color=:purple)
savefig(plt3, "model3.png")