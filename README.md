# ContainerSingE
Singularity definition files and scripts for use in research projects in the d³awn lab at UNIL.

<img src="https://github.com/msgomez06/ContainerSingE/blob/main/ContainerSingE.png?raw=true" alt="Container Monkey" width="33%">

common_files: this folder includes utility files, such as common bash scripts (e.g., those used to perform common container operations, such as launching jupyter notebook), installers (e.g., the miniconda installer), or scripts used for testing functionality. Most of the files in this folder will be ignored by git.

conda_env_defs: this folder includes files describing conda environment, generally generated using 'conda env export > <env_name>.yml'. Note that in most cases, due to the way ContainerSingE was developed the name defined in the first line of the YML file was changed to PySing in order for the common scripts to work as intended.

container_files: this folder holds the generated containers. Since containers are too large for github, the contents are ignored by git.

Note that the containers are meant to be built by running singularity from the repo root directory, e.g. with the following command:

sudo singularity build container_files/container_name.sif definition_files/subFolder/definitionFile.def 
