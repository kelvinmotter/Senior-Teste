object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 247
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 58
    Top = 20
    Width = 68
    Height = 16
    Caption = 'Valor Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 59
    Top = 52
    Width = 91
    Height = 16
    Caption = 'Valor Recebido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtValorTotal: TEdit
    Left = 154
    Top = 20
    Width = 111
    Height = 21
    TabOrder = 0
    Text = '0'
    OnKeyPress = edtValorTotalKeyPress
  end
  object edtValorRecebido: TEdit
    Left = 155
    Top = 50
    Width = 111
    Height = 21
    TabOrder = 1
    Text = '0'
    OnKeyPress = edtValorRecebidoKeyPress
  end
  object btnCalcularTroco: TButton
    Left = 283
    Top = 20
    Width = 105
    Height = 49
    Caption = 'Calcular Troco'
    TabOrder = 2
    OnClick = btnCalcularTrocoClick
  end
  object Memo1: TMemo
    Left = 64
    Top = 88
    Width = 321
    Height = 145
    TabOrder = 3
  end
end
