object Form7: TForm7
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form7'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 80
    Width = 38
    Height = 13
    Caption = 'NIK/NIP'
  end
  object Label2: TLabel
    Left = 112
    Top = 104
    Width = 58
    Height = 13
    Caption = 'NAMA WALI'
  end
  object Label3: TLabel
    Left = 112
    Top = 128
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object Label4: TLabel
    Left = 112
    Top = 152
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label5: TLabel
    Left = 344
    Top = 80
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label6: TLabel
    Left = 344
    Top = 104
    Width = 38
    Height = 13
    Caption = 'MATPEL'
  end
  object Label7: TLabel
    Left = 344
    Top = 136
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
  end
  object Label8: TLabel
    Left = 344
    Top = 160
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label9: TLabel
    Left = 304
    Top = 24
    Width = 76
    Height = 13
    Caption = 'Tabel_Walikelas'
  end
  object Button1: TButton
    Left = 72
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 168
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 256
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 344
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
  end
  object Button5: TButton
    Left = 432
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 4
  end
  object Button6: TButton
    Left = 520
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 184
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 184
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 184
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 184
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 424
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit6: TEdit
    Left = 424
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit7: TEdit
    Left = 424
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Edit8: TEdit
    Left = 424
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 296
    Width = 577
    Height = 120
    DataSource = DataSource1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'database-siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Tugas Akhir Visual2\database-siswa\libmysql.dll'
    Left = 640
    Top = 112
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_walikelas')
    Params = <>
    Left = 640
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 640
    Top = 224
  end
end
