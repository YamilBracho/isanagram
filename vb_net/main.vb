Module VBModule
 
    Sub Main()
       Dim arr As String() = New String() {"123=320", 
            "dog=god", 
            "cat=tac", 
            "pool=loop", 
            "cool=loco", 
            "jira=raji", 
            "bees=bese", 
            "kilo=loki", 
            "", 
            " = ", 
            "asfgfasgasfsagdf==",
            "01234567890123456789012345678901234567890=09876543210987654321098765432109876543210", 
            "abc=bca" }

        For Each str As String In arr
            If isAnagram(str) Then
                Console.WriteLine(str & " is an Anagram.")
            Else
                Console.WriteLine(str & " is not an Anagram.")
            End If
        Next
    End Sub

    Function isAnagram(ByVal str As String) As Boolean
        If str.Length = 0 Then
            Return False
        End If

        Dim tokens As String() = str.Split("="c)
        If tokens.Length <> 2 Then
            Return False
        End If

        Dim len0 As Integer = tokens(0).Length
        If len0 <> tokens(1).Length Then
            Return False
        End If

        For Each ch1 As Char In tokens(0)
            If Not tokens(1).Contains(ch1) Then
                Return False
            End If
        Next

        Return True
    End Function

End Module