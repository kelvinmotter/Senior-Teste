program QS6;

uses
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas',
  uForm in 'uForm.pas' {Form1};

{$R *.RES}
var
  Form: TForm1;
begin
  Form := TForm1.Create(nil);
  try

  finally
    Form.Release;
  end;
end.

