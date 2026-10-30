# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HelloWorldCUDA_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("HelloWorldCUDA")
JLLWrappers.@generate_main_file("HelloWorldCUDA", Base.UUID("f53e9f04-3b75-5e08-97db-1ec3db704779"))
end  # module HelloWorldCUDA_jll
