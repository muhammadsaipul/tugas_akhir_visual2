object Form1: TForm1
  Left = 159
  Top = 181
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 88
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 168
    Top = 120
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 168
    Top = 152
    Width = 22
    Height = 13
    Caption = 'level'
  end
  object Label4: TLabel
    Left = 168
    Top = 184
    Width = 30
    Height = 13
    Caption = 'status'
  end
  object Edit1: TEdit
    Left = 256
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 256
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 256
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 256
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 264
    Width = 425
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 64
    Top = 232
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 152
    Top = 232
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 232
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 328
    Top = 232
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 416
    Top = 232
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
  end
  object Button6: TButton
    Left = 416
    Top = 200
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 10
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 576
    Top = 336
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'database_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Tugas Akhir Visual2\database_siswa\libmysql.dll'
    Left = 576
    Top = 224
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_user')
    Params = <>
    Left = 576
    Top = 280
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45105.744973298600000000
    ReportOptions.LastChange = 45105.748958912040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 480
    Top = 112
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 52.913420000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 75.590600000000000000
          Top = 34.015770000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.606370000000000000
          Top = 34.015770000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'USERNAME')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'PASSWORD')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 253.228510000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'LEVEL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 347.716760000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 275.905690000000000000
          Top = 30.236240000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'LAPORAN DATA USER')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 45.354360000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 75.590600000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 109.606370000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'username'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."username"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 158.740260000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'password'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."password"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 253.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'level'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."level"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 347.716760000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 560
    Top = 112
  end
end
