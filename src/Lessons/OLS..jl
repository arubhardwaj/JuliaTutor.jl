prompt_1 = ""*
"This tutorial will explain to solve linear regression using the ordinary least squares (OLS) in Julia."*
"First, we need dataset with x and y variables to run regression with one variable."*
"\n"*

request_1 = "Create two variables, x and y. To make this simple, just copy paste this code: x = [10,12,11,6,7,23,14,15]" 
evaluator_1 = ExpressionEvaluator(:x, [10,12,11,6,7,23,14,15])

request_2 = "Now copy paste this: y = [234,521,311,201,102,71,111,900]"
evaluator_2 = ExpressionEvaluator(:y, [234,521,311,201,102,71,111,900])

prompt_2 = ""*
"Please add both x and y in one data frame. Install and load the DataFrames.jl package, as we did for GLM.jl and then exectue the following code to add them in one data frame named `data`"*
"`data = DataFrame(x=x, y=y)`"*

request_3 = ""
evaluator_3 =

prompt_3 = ""* 
"Now we need GLM.jl package for solving regression model using OLS"*
"Execute:"* 
"\n"*
"using Pkg; Pkg.add(GLM); using GLM"*
"GLM should be in between uottes"*

request_4 = "For solving this regression, we can use `lm()` from GLM.jl package. Run: ols = lm(@formula(y~x), data)"
evaluator_4 = ExpressionEvaluator(:ols, ols)

lesson_1 = Lesson( prompt_1, request_1, evaluator_1, request_2, evaluator_2, prompt_2, request_3, evaluator_3, prompt_3, request_4, evaluator_4)

lesson_plan = [ lesson_1]
