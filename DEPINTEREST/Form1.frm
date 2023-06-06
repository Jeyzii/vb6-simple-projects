VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7140
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6075
   LinkTopic       =   "Form1"
   ScaleHeight     =   7140
   ScaleWidth      =   6075
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "end"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3600
      TabIndex        =   9
      Top             =   4920
      Width           =   2055
   End
   Begin VB.CommandButton Command1 
      Caption         =   "compute"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   360
      TabIndex        =   8
      Top             =   4920
      Width           =   2175
   End
   Begin VB.TextBox txtmonth 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      TabIndex        =   7
      Top             =   2880
      Width           =   1935
   End
   Begin VB.TextBox txtinterest 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      TabIndex        =   6
      Top             =   1800
      Width           =   1935
   End
   Begin VB.TextBox txtdeposit 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      TabIndex        =   5
      Top             =   720
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "depinterest"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1680
      TabIndex        =   10
      Top             =   6240
      Width           =   2895
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      TabIndex        =   4
      Top             =   3840
      Width           =   1935
   End
   Begin VB.Label label4 
      BackStyle       =   0  'Transparent
      Caption         =   "finalbalance"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   3
      Top             =   3960
      Width           =   2295
   End
   Begin VB.Label lbldeposit 
      BackStyle       =   0  'Transparent
      Caption         =   "monthly dep"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   840
      Width           =   2295
   End
   Begin VB.Label lblinterest 
      BackStyle       =   0  'Transparent
      Caption         =   "yearly interest"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   1
      Top             =   1680
      Width           =   2295
   End
   Begin VB.Label lblmonth 
      BackStyle       =   0  'Transparent
      Caption         =   "# of months"
      BeginProperty Font 
         Name            =   "Stencil"
         Size            =   15
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   0
      Top             =   3000
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim deposit As Single
Dim interest As Single
Dim month As Single
Dim final As Single
Dim intrate As Single

Private Sub Label3_Click()

End Sub





Private Sub Command1_Click()
deposit = Val(txtdeposit.Text)
interest = Val(txtinterest.Text)
intrate = interest / 1200
month = Val(txtmonth.Text)
final = deposit * ((1 + intrate) ^ month - 1) / intrate
Label5.Caption = Format(final, "#####0.00")
End Sub

Private Sub Command2_Click()
End

End Sub

Private Sub Form_Load()
Form1.BackColor = vbRed

End Sub
