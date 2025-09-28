' Visual Basic .NET: event-driven language for Windows apps
Module NKTgLaw
  Sub Main()
    Dim x As Double = 2.0
    Dim v As Double = 3.0
    Dim m As Double = 5.0
    Dim dm_dt As Double = 0.1
    Dim p As Double = m * v
    Dim NKTg1 As Double = x * p
    Dim NKTg2 As Double = dm_dt * p
    Console.WriteLine("p={0} NKTg1={1} NKTg2={2}", p, NKTg1, NKTg2)
  End Sub
End Module
