# Geração de evidências de teste
## All
```powershell
flutter test test |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_all_tests.txt
```
## Unit
```powershell
flutter test test/unit |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_unit_tests.txt
```
### Environment
```powershell
flutter test test/unit/environment |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_environment_values_test.txt
```
## Widget
```powershell
flutter test test/widget/dev_menu |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_widget_tests.txt
```
### Dev Menu Tests
```powershell
flutter test test/widget/dev_menu |
  Tee-Object -FilePath docs/qa/test-evidence/AAAA-MM-DD_dev_menu_tests.txt
```
