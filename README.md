# 1D SSH model  
**It's a matlab code.**  

## About the SSH model:  
SSH model is a model to describe topological physics phenomena.  

## Parameters:  
- You can change parameter v/w to change the hopping intensity.  
- you can change pararmeter n to change the number of total cells in this system.  

## Files:
This branch has three files now,  
- SSH-电子波函数计算-wavefunction.m  
  **explanation**: "wavefunction" is the wavefunction of electron in the system.  
  **core code**: The key is to calculate the eigenvector of the system's Hamiltonian.  

- SSH-周期性边界电子能带计算-energy band.m  
  **explanation**: "energy band" is the energy band of the system.  
  **core code**: The key is to calculate the eigenvalue of the system's Hamiltonian in momentum space (or in reciprocal space) under periodic approximation.  

- SSH-边缘态电子能态计算-electron energy of edge state.m  
  **explanation**: "electron energy" is all the possible energy states of the electrons in the system.  
  **core code**: The key is to calculate the eigenvalue of the system's Hamiltonian.  
