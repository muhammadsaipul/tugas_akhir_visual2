unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  Form6: TForm6;
  id:string;

implementation

{$R *.dfm}

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;

Button1.Enabled:=True;
Button2.Enabled:=False;
Button3.Enabled:=True;
Button4.Enabled:=True;
Button5.Enabled:=True;

id := ZQuery1.FieldList[0].AsString;
Edit1.Text:= ZQuery1.FieldList[1].AsString;
Edit2.Text:= ZQuery1.FieldList[2].AsString;

end;

procedure TForm6.posisiawal;
begin
Edit1.Text:='';
Edit2.Text:='';

Edit1.Enabled:= False;
Edit2.Enabled:= False;

Button1.Enabled:=True;
Button2.Enabled:=False;
Button3.Enabled:=False;
Button4.Enabled:=False;
Button5.Enabled:=False;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;

Button1.Enabled:=False;
Button2.Enabled:=True;
Button3.Enabled:=False;
Button4.Enabled:=False;
Button5.Enabled:=True;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
if (Edit1.Text = '')or(Edit2.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('nama',Edit1.Text,[]))and (ZQuery1.Locate('jurusan',Edit2.Text,[])) then
begin
  ShowMessage('DATA KELAS DIGUNAKAN!');
  posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DISIMPAN!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into tabel_kelas values(null,"'+edit1.Text+'","'+edit2.Text+'")');
ZQuery1.ExecSQL ;

//ZQuery1.Active:=False;
//ZQuery1.Active:=True;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_kelas');
ZQuery1.Open;

posisiawal;
end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
if (Edit1.Text ='')or(Edit2.Text='')then
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
  ZQuery1.SQL.Add('Update tabel_kelas set nama ="'+Edit1.Text+'",jurusan="'+Edit2.Text+'" where id_kelas="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tabel_kelas');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE');
  posisiawal;
  end;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id_kelas').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tabel_kelas where nama="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
