mkdir dat img
echo "Running ts2n_result_explorer.ipynb in the background..."
echo "This notebook processes the data on TS2N problem"
jupyter nbconvert --to notebook --execute --inplace ts2n_result_explorer.ipynb
echo "Running volve_result_explorer.ipynb in the background..."
echo "This notebook processes the data on Volve problem (optimization period)"
jupyter nbconvert --to notebook --execute --inplace volve_result_explorer.ipynb
echo "Running volve-pred_result_explorer.ipynb in the background..."
echo "This notebook processes the data on Volve problem (prediction period)"
jupyter nbconvert --to notebook --execute --inplace volve_pred_result_explorer.ipynb
echo "Collecting .csv and .eps into the corresponding folders..."
mv *csv dat
mv *eps img
echo "Cleaning cache.."
rm -rf __pycache__
echo "Finished!"
echo "Now you can open the .ipynb files to check the analysis."
