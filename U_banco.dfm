object DataModule1: TDataModule1
  Height = 476
  Width = 803
  PixelsPerInch = 120
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\leonardo-dias\Documents\sistemas\caio\sysManut\libmysql' +
      '.dll'
    Left = 144
    Top = 144
  end
  object FDQuery1: TFDQuery
    Left = 144
    Top = 272
  end
  object FD_banco: TFDConnection
    Params.Strings = (
      'Database=cf_teste'
      'User_Name=programadortest'
      'UseSSL=True'
      'Server=cf-teste.mysql.uhserver.com'
      'Password=m@n@g3r10'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 144
    Top = 208
  end
end
