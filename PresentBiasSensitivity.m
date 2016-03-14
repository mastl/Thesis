%% SETUP

    % Clear command window and workspace
    clc
    clear

%% Run setup and run
    setup
    Sensitivity = [];
    PresentBias = 0.8:-0.02:0.4;
    for Index = 1:length(PresentBias)
        par.Beta = PresentBias(PresentBiasIndex);
        run
        InvestmentChoice = out.InvestmentChoice;
        Sensitivity(PresentBiasIndex, :) = [par.Beta, InvestmentChoice']
    end
    
    