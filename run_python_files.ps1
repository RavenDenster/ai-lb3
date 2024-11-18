# Получаем все Python-файлы в текущем каталоге
$pythonFiles = Get-ChildItem -Path . -Filter *.py

# Перебираем каждый файл и запускаем его
foreach ($file in $pythonFiles) {
    Write-Host "Launch $($file.FullName)..."
    python $file.FullName

    # Проверка кода завершения последней команды
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error on starup $($file.FullName)."
    }
}
