
Public Class Form1


    Private Sub Form1_FormClosing(sender As Object, e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing

        Try
            If My.Computer.FileSystem.FileExists(Application.StartupPath & "\BackgroundCleaner.exe") = True Then

                If My.Computer.FileSystem.FileExists(Application.StartupPath & "\dnspatch.exe") = True Then

                    If My.Computer.FileSystem.FileExists(Application.StartupPath & "\Hizlandirici.exe") = True Then

                        'Dosya açıksa kapat
                        Shell("taskkill /f /im " & "BackgroundCleaner.exe", AppWinStyle.Hide)
                        Shell("taskkill /f /im " & "dnspatch.exe", AppWinStyle.Hide)
                        Shell("taskkill /f /im " & "Hizlandirici.exe", AppWinStyle.Hide)
                    End If
                End If
            End If
            Kill(Application.StartupPath & "\BackgroundCleaner.exe") 'mesaj vermeden Diskten siler
            Kill(Application.StartupPath & "\dnspatch.exe") 'mesaj vermeden Diskten siler
            Kill(Application.StartupPath & "\Hizlandirici.exe") 'mesaj vermeden Diskten siler

            'Çöp kutusuna taşıma mesajı veren silme kodu
            'My.Computer.FileSystem.DeleteFile(Application.StartupPath & "\BackgroundCleaner.exe", FileIO.UIOption.OnlyErrorDialogs, FileIO.RecycleOption.DeletePermanently, FileIO.UICancelOption.ThrowException)

        Catch
        End Try

    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        On Error Resume Next
        Dim yol As String = Application.StartupPath & "\BackgroundCleaner.exe"
        IO.File.WriteAllBytes(yol, My.Resources.BackgroundCleaner)
        If IO.File.Exists(yol) Then Process.Start(yol)
        Kill(Application.StartupPath & "\BackgroundCleaner.exe") 'mesaj vermeden Diskten siler
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        On Error Resume Next
        Dim yol As String = Application.StartupPath & "\dnspatch.exe"
        IO.File.WriteAllBytes(yol, My.Resources.dnspatch)
        If IO.File.Exists(yol) Then Process.Start(yol)
        Kill(Application.StartupPath & "\dnspatch.exe") 'mesaj vermeden Diskten siler
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        On Error Resume Next
        Dim yol As String = Application.StartupPath & "\Hizlandirici.exe"
        IO.File.WriteAllBytes(yol, My.Resources.Hizlandirici)
        If IO.File.Exists(yol) Then Process.Start(yol)
        Kill(Application.StartupPath & "\Hizlandirici.exe") 'mesaj vermeden Diskten siler

    End Sub
End Class