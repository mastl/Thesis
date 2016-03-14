%% SETUP

    % Clear command window and workspace
    clc
    clear

%% Run setup and run
    setup
    Sensitivity = [];
    PresentBias = 0.8:-0.1:0.4;
    for ExperimentIndex = 1:length(PresentBias)
        par.Beta = PresentBias(ExperimentIndex);
        run
        InvestmentChoice = out.InvestmentChoice;
        Sensitivity(ExperimentIndex, :) = [par.Beta, InvestmentChoice']
    end
    
    