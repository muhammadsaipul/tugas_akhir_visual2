object Form6: TForm6
  Left = 192
  Top = 152
  Width = 928
  Height = 480
  Caption = 'Form6'
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
    Left = 120
    Top = 48
    Width = 47
    Height = 13
    Caption = 'ID SISWA'
  end
  object Label2: TLabel
    Left = 120
    Top = 72
    Width = 39
    Height = 13
    Caption = 'ID POIN'
  end
  object Label3: TLabel
    Left = 120
    Top = 104
    Width = 40
    Height = 13
    Caption = 'ID WALI'
  end
  object Label4: TLabel
    Left = 120
    Top = 128
    Width = 42
    Height = 13
    Caption = 'ID ORTU'
  end
  object Label5: TLabel
    Left = 368
    Top = 72
    Width = 44
    Height = 13
    Caption = 'ID KELAS'
  end
  object Label6: TLabel
    Left = 368
    Top = 96
    Width = 46
    Height = 13
    Caption = 'TANGGAL'
  end
  object Label7: TLabel
    Left = 368
    Top = 120
    Width = 51
    Height = 13
    Caption = 'SEMESTER'
  end
  object Label8: TLabel
    Left = 368
    Top = 144
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object Label9: TLabel
    Left = 288
    Top = 24
    Width = 77
    Height = 13
    Caption = 'Tabel_Semester'
  end
  object Edit1: TEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 184
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 432
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 432
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 432
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit8: TEdit
    Left = 432
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Button1: TButton
    Left = 72
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 8
  end
  object Button2: TButton
    Left = 168
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 9
  end
  object Button3: TButton
    Left = 256
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 10
  end
  object Button4: TButton
    Left = 344
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 11
  end
  object Button5: TButton
    Left = 432
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 12
  end
  object Button6: TButton
    Left = 520
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 240
    Width = 585
    Height = 120
    DataSource = DataSource1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 632
    Top = 192
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
    Top = 80
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_semester')
    Params = <>
    Left = 632
    Top = 136
  end
end
