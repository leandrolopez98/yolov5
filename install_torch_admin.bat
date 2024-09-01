
@echo off
echo Desinstalando PyTorch, TorchVision y Torchaudio...
pip uninstall torch torchvision torchaudio -y

echo Limpiando archivos remanentes...
rmdir /S /Q %USERPROFILE%\AppData\Local\Programs\Python\Python312\Lib\site-packages\torch
rmdir /S /Q %USERPROFILE%\AppData\Local\Programs\Python\Python312\Lib\site-packages\torchvision
rmdir /S /Q %USERPROFILE%\AppData\Local\Programs\Python\Python312\Lib\site-packages\torchaudio

echo Reinstalando PyTorch, TorchVision y Torchaudio para CPU...
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

echo Verificando la instalación de PyTorch...
python -c "import torch; print('PyTorch está instalado correctamente.')"
pause
