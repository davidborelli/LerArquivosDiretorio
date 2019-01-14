object Form1: TForm1
  Left = 354
  Top = 313
  Caption = 'Leitura de arquivos no diret'#243'rio'
  ClientHeight = 206
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 39
    Height = 13
    Caption = 'Diret'#243'rio'
  end
  object Label2: TLabel
    Left = 152
    Top = 24
    Width = 41
    Height = 13
    Caption = 'Arquivos'
  end
  object edtDiretorio: TEdit
    Left = 8
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object chkSub: TCheckBox
    Left = 8
    Top = 64
    Width = 97
    Height = 17
    Caption = 'Incluir Subdiret'#243'rios'
    TabOrder = 1
  end
  object memLista: TMemo
    Left = 144
    Top = 40
    Width = 609
    Height = 137
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Listar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Mostrar'
    TabOrder = 4
  end
end
