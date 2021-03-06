unit uMaquina;

interface

uses
  uIMaquina, System.SysUtils, System.StrUtils, System.Classes, Vcl.Dialogs;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

uses
  uTroco;

function TMaquina.MontarTroco(aTroco: Double): TList;
var
  fCedulas: TList;
  i: TCedula;
  iQtde:integer;
  sMsg: String;
begin
  sMsg := '';
  fCedulas := TList.Create;
  try
    for i := Low(CValorCedula) to High(CValorCedula) do
    begin
      if aTroco >= CValorCedula[i] then
      begin
        iQtde := Trunc(aTroco / CValorCedula[i]);
        aTroco := aTroco - (CValorCedula[i] * iQtde);

        if CValorCedula[i] >= 1 then
          sMsg := sMsg + IntToStr(iQtde) + ' nota de R$' + CValorCedula[i].ToString + ',00' +#13#10
        else
          sMsg := sMsg + IntToStr(iQtde) + ' moeda de R$' + CValorCedula[i].ToString + #13#10;
                  IfThen(CValorCedula[i].ToString['0.01', '0.05'],
                         CValorCedula[i].ToString + #13#10,
                         CValorCedula[i].ToString + '0' + #13#10);

        fCedulas.Add(TTroco.Create(i,iQtde));
      end;
    end;
    Result := fCedulas;
  finally
    FreeAndNil(fCedulas);
    ShowMessage(sMsg);
  end;
end;

end.
