program healthh;

uses
  Vcl.Forms,
  Healthpas in 'Healthpas.pas' {Form2},
  Cadastro in 'Cadastro.pas' {Form3},
  unitCadAgendamentos in '..\..\..\..\Área de Trabalho\Sistema_de_Clinica_Medica-main\Sistema_Clinica_Medica\unitCadAgendamentos.pas' {FormCadAgendamento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFormCadAgendamento, FormCadAgendamento);
  Application.Run;
end.
