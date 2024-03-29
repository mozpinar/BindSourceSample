unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.Bind.Components, Data.Bind.ObjectScope, Data.Bind.GenData,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Grid,
  System.UITypes,
  uEntities,                       // <<<<<<<
  System.Generics.Collections      // <<<<<<<
  ;
type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    btnAdd: TSpeedButton;
    btnEdit: TSpeedButton;
    btnDelete: TSpeedButton;
    Panel1: TPanel;
    edFirstName: TEdit;
    lblFirstName: TLabel;
    edLastName: TEdit;
    lblLastName: TLabel;
    edAge: TEdit;
    lblAge: TLabel;
    btnOk: TButton;
    btnCancel: TButton;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkGridToDataSourcePrototypeBindSource1: TLinkGridToDataSource;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    procedure PrototypeBindSource1CreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    fMyPersons: TObjectList<TKisi>;
    procedure BSAAfterInsert(aBindSourceAdapter : TBindSourceAdapter);
    procedure BSAAfterEdit(aBindSourceAdapter : TBindSourceAdapter);
    procedure BSAAfterPost(aBindSourceAdapter : TBindSourceAdapter);
    procedure BSAAfterCancel(aBindSourceAdapter : TBindSourceAdapter);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BSAAfterCancel(aBindSourceAdapter: TBindSourceAdapter);
begin
  btnOk.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TForm1.BSAAfterEdit(aBindSourceAdapter: TBindSourceAdapter);
begin
  btnOk.Enabled := True;
  btnCancel.Enabled := True;
end;

procedure TForm1.BSAAfterInsert(aBindSourceAdapter: TBindSourceAdapter);
begin
  btnOk.Enabled := True;
  btnCancel.Enabled := True;
end;

procedure TForm1.BSAAfterPost(aBindSourceAdapter: TBindSourceAdapter);
begin
  btnOk.Enabled := False;
  btnCancel.Enabled := False;
end;

procedure TForm1.btnAddClick(Sender: TObject);
begin                                    
  PrototypeBindSource1.InternalAdapter.Insert;
end;

procedure TForm1.btnCancelClick(Sender: TObject);
begin
  PrototypeBindSource1.InternalAdapter.Cancel;
  PrototypeBindSource1.Cancel;
end;

procedure TForm1.btnDeleteClick(Sender: TObject);
begin
  if PrototypeBindSource1.InternalAdapter.ItemCount>0 then
    if MessageDlg('Kay�t silinecek emin misiniz?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      PrototypeBindSource1.InternalAdapter.Delete;
end;

procedure TForm1.btnEditClick(Sender: TObject);
begin
  if PrototypeBindSource1.InternalAdapter.ItemCount>0 then
    PrototypeBindSource1.InternalAdapter.Edit;
end;

procedure TForm1.btnOkClick(Sender: TObject);
begin
  if (edFirstName.Text='') or (edLastName.Text='') then
    raise Exception.Create('�sim ve Soyisim girilmesi zorunludur!');

  PrototypeBindSource1.InternalAdapter.Post;
end;

procedure TForm1.PrototypeBindSource1CreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  fMyPersons := TObjectList<TKisi>.Create(True);

  fMyPersons.Add(TKisi.Create('Ahmet', 'Abac�', 33));
  fMyPersons.Add(TKisi.Create('Mehmet', 'G�rmez', 38));
  fMyPersons.Add(TKisi.Create('Cenk', 'G�rmez', 12));
  fMyPersons.Add(TKisi.Create('Hale', 'G�rmez', 34));
  fMyPersons.Add(TKisi.Create('J�lide', 'Tekir', 55));
  fMyPersons.Add(TKisi.Create('Timur', 'All�kaya', 72));
  fMyPersons.Add(TKisi.Create('Demir', 'Demir', 50));
  fMyPersons.Add(TKisi.Create('Aslan', 'Aslan', 99));
  fMyPersons.Add(TKisi.Create('G�ler', 'Dolunay', 21));


  // Use TObjectBindSourceAdapter for a single object
  ABindSourceAdapter := TListBindSourceAdapter<TKisi>.Create(Self, FMyPersons, True);
  ABindSourceAdapter.AfterInsert := BSAAfterInsert;
  ABindSourceAdapter.AfterEdit := BSAAfterEdit;
  ABindSourceAdapter.AfterPost := BSAAfterPost;
  ABindSourceAdapter.AfterCancel := BSAAfterCancel;

  btnOk.Enabled := False;
  btnCancel.Enabled := False;
  
end;

end.
