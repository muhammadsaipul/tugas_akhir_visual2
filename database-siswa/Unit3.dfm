object Form3: TForm3
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form3'
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
    Left = 232
    Top = 32
    Width = 81
    Height = 13
    Caption = 'Tabel_Hubungan'
  end
  object Label2: TLabel
    Left = 176
    Top = 56
    Width = 50
    Height = 13
    Caption = 'ID_SISWA'
  end
  object Label3: TLabel
    Left = 176
    Top = 88
    Width = 45
    Height = 13
    Caption = 'ID_ORTU'
  end
  object Label4: TLabel
    Left = 176
    Top = 112
    Width = 96
    Height = 13
    Caption = 'STATUS HUBUNGAN'
  end
  object Label5: TLabel
    Left = 176
    Top = 144
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object Button1: TButton
    Left = 64
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
  end
  object Button2: TButton
    Left = 160
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 248
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 336
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
  end
  object Button5: TButton
    Left = 424
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 4
  end
  object Button6: TButton
    Left = 512
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 280
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 280
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 280
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 280
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 272
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 608
    Top = 232
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
    Left = 616
    Top = 120
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_hubungan')
    Params = <>
    Left = 608
    Top = 176
  end
end
