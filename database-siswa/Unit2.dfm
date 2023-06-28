object Form2: TForm2
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 64
    Top = 80
    Width = 52
    Height = 13
    Caption = 'NAMA ortu'
  end
  object Label4: TLabel
    Left = 64
    Top = 56
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label5: TLabel
    Left = 64
    Top = 104
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label6: TLabel
    Left = 64
    Top = 128
    Width = 57
    Height = 13
    Caption = 'PEKERJAAN'
  end
  object Label7: TLabel
    Left = 264
    Top = 96
    Width = 77
    Height = 13
    Caption = 'JENIS_KELAMIN'
  end
  object Label8: TLabel
    Left = 264
    Top = 72
    Width = 36
    Height = 13
    Caption = 'AGAMA'
  end
  object Label11: TLabel
    Left = 264
    Top = 48
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label12: TLabel
    Left = 64
    Top = 152
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label14: TLabel
    Left = 264
    Top = 120
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label15: TLabel
    Left = 256
    Top = 8
    Width = 50
    Height = 13
    Caption = 'tabel_ortu'
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
    Left = 128
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 128
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 128
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 128
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 128
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit6: TEdit
    Left = 352
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit7: TEdit
    Left = 352
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Edit8: TEdit
    Left = 352
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Edit9: TEdit
    Left = 352
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 256
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_ortu')
    Params = <>
    Left = 704
    Top = 152
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
    Left = 704
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 704
    Top = 208
  end
end
