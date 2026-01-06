Set sh = CreateObject("Shell.Application")

For Each app In sh.Namespace("shell:::{AD1405D2-30CF-4877-8468-1EE1C52C759F}\Apps").Items
    If LCase(app.Name) = "nvidia control panel" Then
        app.Verbs().Item(0).DoIt
        Exit For
    End If
Next
