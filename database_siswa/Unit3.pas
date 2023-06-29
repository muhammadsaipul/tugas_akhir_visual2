unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
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
  Form3: TForm3;
  id:string;

implementation

{$R *.dfm}

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin

Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
Edit7.Enabled:= True;
Edit8.Enabled:= True;
Edit9.Enabled:= True;
Edit10.Enabled:= True;



Button1.Enabled:=True;
Button2.Enabled:=False;
Button3.Enabled:=True;
Button4.Enabled:=True;
Button5.Enabled:=True;

id := ZQuery1.FieldList[0].AsString;
Edit1.Text:= ZQuery1.FieldList[1].AsString;
Edit2.Text:= ZQuery1.FieldList[2].AsString;
Edit3.Text:= ZQuery1.FieldList[3].AsString;
Edit4.Text:= ZQuery1.FieldList[4].AsString;
Edit6.Text:= ZQuery1.FieldList[5].AsString;
Edit7.Text:= ZQuery1.FieldList[6].AsString;
Edit8.Text:= ZQuery1.FieldList[7].AsString;
Edit9.Text:= ZQuery1.FieldList[8].AsString;
Edit10.Text:= ZQuery1.FieldList[9].AsString;
end;

procedure TForm3.posisiawal;
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';
Edit9.Text:='';
Edit10.Text:='';


Edit1.Enabled:= False;
Edit2.Enabled:= False;
Edit3.Enabled:= False;
Edit4.Enabled:= False;
Edit5.Enabled:= False;
Edit6.Enabled:= False;
Edit7.Enabled:= False;
Edit8.Enabled:= False;
Edit9.Enabled:= False;
Edit10.Enabled:= False;


Button1.Enabled:=True;
Button2.Enabled:=False;
Button3.Enabled:=False;
Button4.Enabled:=False;
Button5.Enabled:=False;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
Edit6.Enabled:= True;
Edit7.Enabled:= True;
Edit8.Enabled:= True;
Edit9.Enabled:= True;
Edit10.Enabled:= True;

Button1.Enabled:=False;
Button2.Enabled:=True;
Button3.Enabled:=False;
Button4.Enabled:=False;
Button5.Enabled:=True;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if (Edit1.Text = '')or(Edit2.Text = '')or(Edit3.Text= '')or(Edit4.Text= '')or(Edit5.Text= '')or(Edit6.Text= '')or(Edit7.Text= '')or(Edit8.Text= '')or(Edit9.Text= '')or(Edit10.Text= '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (ZQuery1.Locate('nis',Edit1.Text,[]))and (ZQuery1.Locate('nisn',Edit2.Text,[])) then
begin
  ShowMessage('DATA USER ORTU DIGUNAKAN!');
  posisiawal;
end else
begin
ShowMessage('DATA BERHASIL DISIMPAN!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into tabel_siswa values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'","'+edit6.Text+'","'+edit7.Text+'","'+edit8.Text+'","'+edit9.Text+'","'+edit10.Text+'")');
ZQuery1.ExecSQL ;

//ZQuery1.Active:=False;
//ZQuery1.Active:=True;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_siswa');
ZQuery1.Open;

posisiawal;
end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
if (Edit1.Text ='')or(Edit2.Text='')or(Edit3.Text='')or(Edit4.Text='')or(Edit5.Text='')or(Edit6.Text='')or(Edit7.Text='')or(Edit8.Text='')or(Edit9.Text='')or(Edit10.Text='') then
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
  ZQuery1.SQL.Add('Update tabel_siswa set nis ="'+Edit1.Text+'",nisn="'+Edit2.Text+'" where id_siswa="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tabel_siswa');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DIUPDATE');
  posisiawal;
  end;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id_ortu').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tabel_siswa where nis="'+id+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_siswa');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
