unit uniFrmConsultarCEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, IdHTTP, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  HTTPApp, XMLDoc, XMLIntf, ActiveX;

type
  TfrmConsultarCEP = class(TForm)
    pnlPage: TPanel;
    pnlHeader: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtCEP: TEdit;
    Image1: TImage;
    mmoResult: TMemo;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    qryEndereco: TClientDataSet;
    qryEnderecorua: TStringField;
    qryEnderecobairro: TStringField;
    qryEnderecocep: TStringField;
    qryEnderecocidade: TStringField;
    qryEnderecoestado: TStringField;
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    var
      API_1 : String;
      API_2 : String;
      API_3 : String;

    function ConsultarAPI(CEP : String; v_TipoAPI : Integer) : Boolean;

  public
    { Public declarations }
  end;

var
  frmConsultarCEP: TfrmConsultarCEP;

implementation

uses
  IdSSLOpenSSL, uLkJSON;

{$R *.dfm}

procedure TfrmConsultarCEP.Button1Click(Sender: TObject);
begin
  ConsultarAPI(edtCEP.Text, 1);
end;

procedure TfrmConsultarCEP.Button2Click(Sender: TObject);
begin
  ConsultarAPI(edtCEP.Text, 2);
end;

procedure TfrmConsultarCEP.Button3Click(Sender: TObject);
begin
  ConsultarAPI(edtCEP.Text, 3);
end;

function TfrmConsultarCEP.ConsultarAPI(CEP: String; v_TipoAPI : Integer): Boolean;
var
  CoResult: Integer;
  HTTP: TIdHTTP;
  Query: String;
  Buffer: String;
  IdSSL: TIdSSLIOHandlerSocketOpenSSL;
begin
  if edtCEP.Text = '' then
  begin
    ShowMessage('Digite um CEP para que seja possível consultar!');
    Exit;
  end;


  //Passando URL's para cada variável de API...
  API_1 := 'https://ws.apicep.com/cep/'; //.json
  API_2 := 'https://brasilapi.com.br/api/cep/v1/';
  API_3 := 'https://viacep.com.br/ws/'; // /json

  try
    mmoResult.Clear;

    if v_TipoAPI = 1 then
      RESTClient1.BaseURL := API_1 + CEP + '.json'
    else if v_TipoAPI = 2 then
      RESTClient1.BaseURL := API_2 + CEP
    else if v_TipoAPI = 3 then
      RESTClient1.BaseURL := API_3 + CEP + '/json';


    RESTRequest1.Execute;
    mmoResult.Lines.Add(RESTRequest1.Response.JSONText);

  except on E: Exception do
    ShowMessage('Erro ao fazer requisição...');
  end;
end;

procedure TfrmConsultarCEP.Image1Click(Sender: TObject);
begin
  ConsultarAPI(edtCEP.Text, 1);
end;

end.
