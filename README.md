# Lex-DE for Subsurface Model Optimization

> This repository contains the experimental data, the analytical scripts, as well as an implementation of Lex-DE algorithm used in the study "Optimization of Subsurface Models with Multiple Criteria using Lexicase Selection".

## Quick Look at the Experiments

- We proposed **Differential Evolution based on Lexicase Selection (Lex-DE)** method to solve the optimization of subsurface models.
- We compared Lex-DE with NSGA-II and RVEA on two problem instances, namely TS2N and Volve.
- We perform prediction based on the model parameters retrieved by optimization, on Volve problem.
- We perform five repetitions for every methods on both problem instances.
- For both TS2N and Volve, the optimal parameters (ground truth) are known for us. They are provided in `ts2n.opt.dat` and `volve.opt.dat`, respectively.

## Raw Data

The raw data are full records of the algorithm runs during the experiments. They are stored as `hdf5` files in the following directories.

| Test problem | Period       | Directory      |
| ------------ | ------------ | -------------- |
| TS2N         | Optimization | `ts2n`       |
| Volve        | Optimization | `volve`      |
| Volve        | Prediction   | `volve-pred` |

## Analytical Scripts

The analytical scripts are written in Jupyter notebooks using Python 3. Each notebook corresponds the script for analysing one of the experiments.

| Test problem | Period       | Directory                            |
| ------------ | ------------ | ------------------------------------ |
| TS2N         | Optimization | `ts2n_result_explorer.ipynb`       |
| Volve        | Optimization | `volve_result_explorer.ipynb`      |
| Volve        | Prediction   | `volve_pred_result_explorer.ipynb` |

Before running the script, you need to install the following libraries.

- numpy
- pandas
- tables
- sklearn
- pymoo
- matplotlib
- seaborn
- jupyter
- notebook
- tqdm

After installing the libraries, you can open the single Jupyter notebook in your terminal as usual to run and see the analytical results as below.

```shell
jupyter notebook
```

But this repository also provides a shell script to automatically run three notebooks at one time.

```shell
sh run_notebooks.sh
```

However, if you run the notebook one at a time, the generated data file and the generated figures will be saved in the root directory. On the contrary, if you use the script, these data file and figures will be automatically moved to `dat` and `img` directories.

* Please do not delete the `utils.py`, since it contains some functions used in the analysis.

After running the notebooks (with the provided shell script), you can check the `dat` folder for the numerical results (scaled hypervolume and distance to ground truth). The images used in the paper are stored in `img` folder.

## Lex-DE Implementation

The part of the experiments was supported by the commercial, thus we cannot provide the implementation of Lex-DE on the subsurface model optimization problem. However, we provide a example of Lex-DE on benchmark problems. You can find the implementation in `lexde.py`.

**Implementing in progress ...**

## Contact

Please contact at he.yifan.xs@alumni.tsukuba.ac.jp if you have any questions or suggestions.
