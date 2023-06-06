VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8415
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4575
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   ScaleHeight     =   8415
   ScaleWidth      =   4575
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   480
      Top             =   3000
   End
   Begin VB.Label lblmonth 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "january"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   1455
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   4215
   End
   Begin VB.Label lbltime 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "00:00:00"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   1455
      Left            =   120
      TabIndex        =   3
      Top             =   6720
      Width           =   4215
   End
   Begin VB.Label lblyear 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "2000"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   1455
      Left            =   120
      TabIndex        =   2
      Top             =   3480
      Width           =   4215
   End
   Begin VB.Label lbldate 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   1455
      Left            =   120
      TabIndex        =   1
      Top             =   1800
      Width           =   4215
   End
   Begin VB.Label lblday 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "sunday"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   1455
      Left            =   120
      TabIndex        =   0
      Top             =   4920
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Form1.BackColor = vbBlack

End Sub

Private Sub Timer1_Timer()
Dim calendar As Variant
calendar = Now
lblday.Caption = Format(calendar, "dddd")
lbldate.Caption = Format(calendar, "d")
lblyear.Caption = Format(calendar, "yyyy")
lbltime.Caption = Format(calendar, "hh:mm:ss")
lblmonth.Caption = Format(calendar, "mmmm")



End Sub
