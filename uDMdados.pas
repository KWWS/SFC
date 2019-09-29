unit uDMdados;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Data.DB, Data.SqlExpr,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDMdados = class(TDataModule)
    FDConnection1: TFDConnection;
    SQLTableClientes: TFDTable;
    SQLTableClientesID_CLIENTE: TIntegerField;
    SQLTableClientesNOME_CLIENTE: TStringField;
    SQLTableClientesEMAIL_CLIENTE: TStringField;
    SQLTableClientesENDERECO_CLIENTE: TStringField;
    SQLTableClientesNUMERO_CLIENTE: TIntegerField;
    SQLTableClientesTELEFONE_CLIENTE: TStringField;
    SQLTableClientesDATA_CLIENTE: TSQLTimeStampField;
    DataSetProviderClientes: TDataSetProvider;
    ClientDataSetClientes: TClientDataSet;
    ClientDataSetClientesID_CLIENTE: TIntegerField;
    ClientDataSetClientesNOME_CLIENTE: TStringField;
    ClientDataSetClientesEMAIL_CLIENTE: TStringField;
    ClientDataSetClientesENDERECO_CLIENTE: TStringField;
    ClientDataSetClientesNUMERO_CLIENTE: TIntegerField;
    ClientDataSetClientesTELEFONE_CLIENTE: TStringField;
    ClientDataSetClientesDATA_CLIENTE: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMdados: TDMdados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
