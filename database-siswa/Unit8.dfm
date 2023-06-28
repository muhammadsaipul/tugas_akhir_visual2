object Form8: TForm8
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form8'
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
    Left = 72
    Top = 96
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 72
    Top = 128
    Width = 34
    Height = 13
    Caption = 'BOBOT'
  end
  object Label3: TLabel
    Left = 72
    Top = 152
    Width = 28
    Height = 13
    Caption = 'JENIS'
  end
  object Label4: TLabel
    Left = 72
    Top = 176
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label5: TLabel
    Left = 240
    Top = 48
    Width = 64
    Height = 13
    Caption = 'TABEL POINT'
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
    Left = 144
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 144
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 144
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 144
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 296
    Width = 545
    Height = 120
    DataSource = DataSource1
    TabOrder = 10
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
    Left = 488
    Top = 72
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_poin')
    Params = <>
    Left = 488
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 488
    Top = 184
  end
end
