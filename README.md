# Segmentation Template

This is the segmentation template by Code-Generator using `deeplabv3_resnet101` and `cifar10` dataset from TorchVision and training is powered by PyTorch and PyTorch-Ignite.

## Getting Started

Install the dependencies with `pip`:

```sh
pip install -r requirements.txt --progress-bar off -U
```

### Code structure

```
|
|- README.md
|
|- main.py : main script to run
|- data.py : helper module with functions to setup input datasets and create dataloaders
|- models.py : helper module with functions to create a model or multiple models
|- trainers.py : helper module with functions to create trainer and evaluator
|- utils.py : module with various helper functions
|- vis.py : helper module for data visualizations
|
|- requirements.txt : dependencies to install with pip
|
|- config.yaml : global configuration YAML file
```

## Training

### 1 GPU Training

```sh
python main.py
```
