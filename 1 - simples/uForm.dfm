object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 7
    Width = 37
    Height = 16
    Caption = 'Texto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 142
    Width = 70
    Height = 16
    Caption = 'String nova:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 106
    Width = 73
    Height = 16
    Caption = 'String velha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtStringNova: TEdit
    Left = 120
    Top = 141
    Width = 217
    Height = 21
    TabOrder = 0
    Text = 'teste'
  end
  object btnSubstituir: TButton
    Left = 263
    Top = 171
    Width = 75
    Height = 25
    Caption = 'Substituir'
    TabOrder = 1
    OnClick = btnSubstituirClick
  end
  object edtStringVelha: TEdit
    Left = 120
    Top = 106
    Width = 217
    Height = 21
    TabOrder = 2
    Text = 'ro'
  end
  object reTexto: TRichEdit
    Left = 120
    Top = 8
    Width = 217
    Height = 89
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'O rato roeu a roupa do rei de roma')
    ParentFont = False
    TabOrder = 3
    Zoom = 100
  end
end
