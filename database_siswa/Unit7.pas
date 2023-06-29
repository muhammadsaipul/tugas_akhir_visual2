unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id:string;

implementation

{$R *.dfm}

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;

Button1.Enabled:=True;
Button2.Enabled:=False;
Button3.Enabled:=True;
Button4.Enabled:=True;
Button5.Enabled:=True;

id := ZQuery1.FieldList[0].AsString;
Edit1.Text:= ZQuery1.FieldList[1].AsString;
Edit2.Text:= ZQuery1.FieldList[2].AsString;
Edit3.Text:= ZQuery1.FieldList[3].AsString;

end;

procedure TForm7.posisiawal;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';

Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;

Button1.Enabled:=True;
Button2.Enabled:=False;
Button3.Enabled:=False;
Button4.Enabled:=False;
Button5.Enabled:=False;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;

Button1.Enabled:=False;
Button2.Enabled:=True;
Button3.Enabled:=False;
Button4.Enabled:=False;
Button5.Enabled:=True;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
if (Edit1.Text = '')or(Edit2.Text = '')or(Edit3.Text= '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('status_hubungan',Edit1.Text,[]))and (ZQuery1.Locate('keterangan',Edit2.Text,[])) then
begin
  ShowMessage('DATA USER ORTU DIGUNAKAN!');
  posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DISIMPAN!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into tabel_hubungan values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'")');
ZQuery1.ExecSQL ;

//ZQuery1.Active:=False;
//ZQuery1.Active:=True;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_hubungan');
ZQuery1.Open;

posisiawal;
end;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
if (Edit1.Text ='')or(Edit2.Text='')or(Edit3.Text='')then
  begin
  ShowMessage('DATA TIDAK BOLEH KOSONG');
  end else
  if (Edit1.Text = ZQuery1.FieldList[1].AsString) and (Edit2.Text = ZQuery1.FieldList[2].AsString) then
  begin
  ShowMessage('DATA TIDAK ADA PERUBAHAN');
  posisiawal;
  end else
  begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update tabel_hubungan set status_hubungan ="'+Edit1.Text+'",keterangan="'+Edit2.Text+'" where id_hub="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tabel_hubungan');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE');
  posisiawal;
  end;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id_hub').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tabel_hubungan where status_hubungan="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_hubungan');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.Button6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
