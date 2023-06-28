object Form1: TForm1
  Left = 194
  Top = 168
  Width = 928
  Height = 480
  Caption = 'Form1'
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
    Left = 64
    Top = 48
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object Label2: TLabel
    Left = 64
    Top = 72
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object Label3: TLabel
    Left = 64
    Top = 96
    Width = 65
    Height = 13
    Caption = 'NAMA SISWA'
  end
  object Label4: TLabel
    Left = 64
    Top = 120
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label5: TLabel
    Left = 64
    Top = 144
    Width = 72
    Height = 13
    Caption = 'TEMPAT LAHIR'
  end
  object Label6: TLabel
    Left = 64
    Top = 168
    Width = 82
    Height = 13
    Caption = 'TANGGAL_LAHIR'
  end
  object Label7: TLabel
    Left = 64
    Top = 192
    Width = 77
    Height = 13
    Caption = 'JENIS_KELAMIN'
  end
  object Label8: TLabel
    Left = 312
    Top = 40
    Width = 76
    Height = 13
    Caption = 'TINGKAT KELAS'
  end
  object Label9: TLabel
    Left = 312
    Top = 64
    Width = 46
    Height = 13
    Caption = 'JURUSAN'
  end
  object Label10: TLabel
    Left = 312
    Top = 88
    Width = 26
    Height = 13
    Caption = 'WALI'
  end
  object Label11: TLabel
    Left = 312
    Top = 112
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label12: TLabel
    Left = 312
    Top = 136
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label13: TLabel
    Left = 312
    Top = 160
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object Label14: TLabel
    Left = 312
    Top = 184
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label15: TLabel
    Left = 240
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Tabel_Siswa'
  end
  object Edit1: TEdit
    Left = 168
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 168
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 168
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 168
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 168
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 168
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit8: TEdit
    Left = 416
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit9: TEdit
    Left = 416
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit10: TEdit
    Left = 416
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit11: TEdit
    Left = 416
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit12: TEdit
    Left = 416
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit13: TEdit
    Left = 416
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Edit14: TEdit
    Left = 416
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Button1: TButton
    Left = 64
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 14
  end
  object Button2: TButton
    Left = 160
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 15
  end
  object Button3: TButton
    Left = 248
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 16
  end
  object Button4: TButton
    Left = 336
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 17
  end
  object Button5: TButton
    Left = 424
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 18
  end
  object Button6: TButton
    Left = 512
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 19
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 280
    Width = 665
    Height = 120
    DataSource = DataSource1
    TabOrder = 20
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
    Left = 616
    Top = 128
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_siswa')
    Params = <>
    Left = 616
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 616
    Top = 224
  end
end
