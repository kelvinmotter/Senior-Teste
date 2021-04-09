program QS7;

uses
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  uForm in 'uForm.pas' {Form2};

{$R *.RES}

var
  Form: TForm2;
begin
  Form := TForm2.Create(nil);
  try

  finally
    Form.Release;
  end;
end.

