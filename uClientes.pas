unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.SqlExpr, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TFrmClientes = class(TForm)
    Panel1: TPanel;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnApagar: TBitBtn;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    GBDados: TGroupBox;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    DBGDados: TDBGrid;
    Label2: TLabel;
    buscar: TEdit;
    DataSource1: TDataSource;
    DBEmail: TDBEdit;
    DBNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBNum: TDBEdit;
    Label7: TLabel;
    DBTel: TDBEdit;
    Label5: TLabel;
    TBRich: TDBRichEdit;
    BtnSalvar: TBitBtn;
    BtnCanc: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnCancClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnApagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

{$R *.dfm}

uses uPrincipal, uDMdados;

procedure TFrmClientes.BtnApagarClick(Sender: TObject);
begin
   if not DMdados.ClientDataSetClientes.IsEmpty then
   begin
      if Application.MessageBox('Deseja apagar este Cliente?', 'Exclus�o', MB_ICONQUESTION +
      MB_YESNO + MB_DEFBUTTON1) = ID_YES then
      begin
          try
            DMdados.ClientDataSetClientes.Delete;
            DMdados.ClientDataSetClientes.ApplyUpdates(0);
            GBDados.Enabled := false;
            BtnSalvar.Enabled := false;
            BtnCanc.Enabled := false;
            BtnNovo.Enabled := true;
            BtnEditar.Enabled := true;
            BtnApagar.Enabled := true;
            DMdados.ClientDataSetClientes.Cancel;
            DBGDados.Enabled := true;
            Application.MessageBox('Cliente apagado com sucesso!', 'Exclus�o', MB_ICONINFORMATION + MB_OK);
          except

          end;
      end;
   end;
end;

procedure TFrmClientes.BtnCancClick(Sender: TObject);
begin
  GBDados.Enabled := false;
  BtnSalvar.Enabled := false;
  BtnCanc.Enabled := false;
  BtnNovo.Enabled := true;
  BtnEditar.Enabled := true;
  BtnApagar.Enabled := true;
  DMdados.ClientDataSetClientes.Cancel;
  DBGDados.Enabled := true;
end;

procedure TFrmClientes.BtnEditarClick(Sender: TObject);
begin
  if not DMdados.ClientDataSetClientes.IsEmpty then
  begin
    DMdados.ClientDataSetClientes.Edit;
    GBDados.Enabled := true;
    DBNome.SetFocus;
    BtnNovo.Enabled := false;
    BtnEditar.Enabled := false;
    BtnApagar.Enabled := false;
    BtnSalvar.Enabled := true;
    BtnCanc.Enabled := true;
    DBGDados.Enabled := false;
  end;
end;

procedure TFrmClientes.BtnNovoClick(Sender: TObject);
begin
  DMdados.ClientDataSetClientes.Insert;
  GBDados.Enabled := true;
  DBNome.SetFocus;
  BtnNovo.Enabled := false;
  BtnEditar.Enabled := false;
  BtnApagar.Enabled := false;
  BtnSalvar.Enabled := true;
  BtnCanc.Enabled := true;
  DBGDados.Enabled := false;
end;

procedure TFrmClientes.BtnSalvarClick(Sender: TObject);

var
tipo : integer;

begin
  tipo := 0;
    try
       if DMdados.ClientDataSetClientes.State in [dsInsert] then
       begin
        tipo := 1;
       end;
       if DMdados.ClientDataSetClientes.State in [dsEdit] then
       begin
        tipo := 0;
       end;
       DMdados.ClientDataSetClientes.Post;
       DMdados.ClientDataSetClientes.ApplyUpdates(0);
       GBDados.Enabled := false;
       BtnSalvar.Enabled := false;
       BtnCanc.Enabled := false;
       BtnNovo.Enabled := true;
       BtnEditar.Enabled := true;
       BtnApagar.Enabled := true;
       DBGDados.Enabled := true;

       DMdados.ClientDataSetClientes.Refresh;

       if tipo = 1 then
       begin
          Application.MessageBox('Cliente cadastrado com sucesso!', 'Cadastro', MB_ICONINFORMATION + MB_OK);
       end;
       if tipo = 0 then
       begin
           Application.MessageBox('Cliente alterado com sucesso!', 'Cadastro', MB_ICONINFORMATION + MB_OK);
       end;
    Except
       Application.MessageBox('Ocorreu um erro', 'Cadastro', MB_ICONERROR + MB_OK);
    end;

end;

procedure TFrmClientes.FormShow(Sender: TObject);
begin
  GBDados.Enabled := false;
  BtnSalvar.Enabled := false;
  BtnCanc.Enabled := false;
  DBGDados.Enabled := true;
end;

end.
