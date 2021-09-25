#requires -version 5.1
#ConvertTo-ASCIIArt.ps1

<#
font list at https://artii.herokuapp.com/fonts_list
font names are case-sensitive

invoke-restmethod https://artii.herokuapp.com/fonts_list

#>

Function Banner {
    [cmdletbinding()]
    [alias("cart")]
    [outputtype([System.String])]
    Param(
        [Parameter(Position = 0, Mandatory, HelpMessage = "Enter a short string of text to convert", ValueFromPipeline)]
        [ValidateNotNullOrEmpty()]
        [string]$Text,
        [Parameter(Position = 1,HelpMessage = "Specify a font from https://artii.herokuapp.com/fonts_list. Font names are case-sensitive")]
        [ValidateNotNullOrEmpty()]
        [string]$Font = "big"
    )

    Begin {
        Write-Verbose "[$((Get-Date).TimeofDay) BEGIN] Starting $($myinvocation.mycommand)"
    } #begin

    Process {
        Write-Verbose "[$((Get-Date).TimeofDay) PROCESS] Processing $text with font $Font"
        $testEncode = [uri]::EscapeDataString($Text)
        $url = "http://artii.herokuapp.com/make?text=$testEncode&font=$Font"
        Try {
            Invoke-Restmethod -Uri $url -DisableKeepAlive -ErrorAction Stop
        }
        Catch {
            Throw $_
        }
    } #process
    End {
        Write-Verbose "[$((Get-Date).TimeofDay) END    ] Ending $($myinvocation.mycommand)"
    } #end
}
