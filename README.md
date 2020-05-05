# sed-training-buildroot

Secure Embedded Development (SED) Training with Buildroot

## supported boards

- Digilent ArtyZ7-20

## Setting your puka directory path

Buildroot requires a path to your local instance of puka in order to build the engine package.

To provide the path, simply use `set_puka_path.sh`:

```
./set_puka_path.sh [PATH TO PUKA] [PATH TO SED_TRAINING_BUILDROOT]
```

`[PATH TO PUKA]`: the path to your local puka repo  
`[PATH TO SED_TRAINING_BUILDROOT]`: the path to the this repo 
