
; First, let's include the class file. And nothing more. That's all we need.
#include "class\wkhtmltox.au3"

; Today's doodle is awesome. Let's save Google.com to PDF (the default option).
Local $oObject = WKHtmlToX() ; Not needed to do WKHtmlToX('pdf') because it's the default option

; If you want to see the WKHtmlToX window, uncomment below
;$oObject.SetDebugMode()

$oObject.Input = "http://google.com/"
$oObject.Output = "google.pdf" ; relative to current working dir

MsgBox(0, "WKHtmlToX", "Will now convert google.com to PDF.")
$oObject.Convert()

ShellExecute("google.pdf")

; Nice! So now we can save the same object above in PNG (or even JPEG) too!
$oObject.ToFormat = "png"
$oObject.Output = "google.png"

MsgBox(0, "WKHtmlToX", "Will now convert google.com to PNG.")
$oObject.Convert()

ShellExecute("google.png")

; That was easy, wasn't it?