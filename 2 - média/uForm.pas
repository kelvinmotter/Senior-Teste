unit uForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    edtValorTotal: TEdit;
    edtValorRecebido: TEdit;
    Label2: TLabel;
    btnCalcularTroco: TButton;
    Memo1: TMemo;
    procedure edtValorTotalKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorRecebidoKeyPress(Sender: TObject; var Key: Char);
    procedure btnCalcularTrocoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    function ValidarCampoNumerico(aKey: Char): Char;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
   uMaquina, uIMaquina;
{$R *.dfm}

procedure TForm2.btnCalcularTrocoClick(Sender: TObject);
var
  fIMaquina: IMaquina;
  i:         Integer;
begin
  if StrToFloat(edtValorRecebido.Text) > StrToFloat(edtValorTotal.Text) then
  begin
    fIMaquina := TMaquina.Create;
    try
      fIMaquina.MontarTroco(StrToFloat(edtValorRecebido.Text) - StrToFloat(edtValorTotal.Text));
    finally
      fIMaquina := nil;
    end;
  end
  else
    if StrToFloat(edtValorRecebido.Text) < StrToFloat(edtValorTotal.Text) then
      raise Exception.Create('Valor recebido n�o pode ser menor que o valor total');
end;

procedure TForm2.edtValorRecebidoKeyPress(Sender: TObject; var Key: Char);
begin
  Key := ValidarCampoNumerico(Key);
end;

procedure TForm2.edtValorTotalKeyPress(Sender: TObject; var Key: Char);
begin
  Key := ValidarCampoNumerico(Key);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ShowModal;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  CloseModal;
end;

function TForm2.ValidarCampoNumerico(aKey: Char): Char;
begin
  if not (aKey in ['0'..'9',',',#8]) then
    Result := #0
  else
    Result := aKey;
end;

end.
