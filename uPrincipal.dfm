object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'SCF - Sistema de Controle Financeiro'
  ClientHeight = 536
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 320
    Top = 264
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Fornecedores1: TMenuItem
        Caption = 'Fornecedores'
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
      end
    end
    object ContasPagar1: TMenuItem
      Caption = 'Contas a Pagar'
    end
    object ContasaReceber1: TMenuItem
      Caption = 'Contas a Receber'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
