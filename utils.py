import numpy as np
import pandas as pd

def best_by_eval(fits, fit_name=None):
    if fit_name==None:
        fit_name = 'Fitness'
    evals = range(len(fits))
    fbests = [fits[0]] + [min(fits[:i]) for i in range(1, len(fits))]
    df = pd.DataFrame({
        'Evaluation'      : evals,
        f'Best {fit_name}': fbests
    })
    return df

def best_by_gen(fits, n_pop=20, fit_name=None):
    if fit_name==None:
        fit_name = 'Fitness'
    fits = fits.reshape(-1,n_pop).min(axis=1)
    gens = range(len(fits))
    fbests = [fits[0]] + [min(fits[:i]) for i in range(1, len(fits))]
    df = pd.DataFrame({
        'Generation'      : gens,
        f'Best {fit_name}': fbests
    })
    return df
