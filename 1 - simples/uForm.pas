unit uForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, uISubstitui, uSubstitui;

type
  TForm1 = class(TForm)
    edtStringNova: TEdit;
    btnSubstituir: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtStringVelha: TEdit;
    reTexto: TRichEdit;
    procedure btnSubstituirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  end;



implementation

{$R *.dfm}

procedure TForm1.btnSubstituirClick(Sender: TObject);
var
  fISubstituir: ISubstitui;
  sRetorno: String;
begin
  fISubstituir := TSubstitui.Create();
  try
    sRetorno := fISubstituir.Substituir(reTexto.Text, edtStringVelha.Text, edtStringNova.Text);
    ShowMessage(sRetorno);
  finally
    fISubstituir := Nil;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ShowModal;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  CloseModal;
end;

end.
