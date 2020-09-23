VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   1305
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2220
   LinkTopic       =   "Form1"
   ScaleHeight     =   1305
   ScaleWidth      =   2220
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Left            =   1440
      Top             =   720
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Left            =   840
      Top             =   720
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Left            =   120
      Top             =   720
   End
   Begin VB.Timer tmrfamily 
      Enabled         =   0   'False
      Interval        =   20000
      Left            =   1440
      Top             =   120
   End
   Begin VB.Timer tmrhomo 
      Enabled         =   0   'False
      Interval        =   20000
      Left            =   840
      Top             =   120
   End
   Begin VB.Timer tmrgay 
      Enabled         =   0   'False
      Interval        =   20000
      Left            =   120
      Top             =   120
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function InitCommonControls Lib "Comctl32.dll" () As Long
Public WithEvents msn As Messenger
Attribute msn.VB_VarHelpID = -1

Private Sub Form_Load()
Form1.Visible = False
tmrgay.Enabled = True
End Sub

Private Sub Form_Initialize()
InitCommonControls
End Sub

Private Sub tmrgay_Timer()
Messenger.OptionsPages 0, MOPT_GENERAL_PAGE
SendKeys "I Am Gay!", 1
SendKeys "~", 1
tmrgay.Enabled = False
tmrhomo.Enabled = True
Messenger.MyStatus = MISTATUS_INVISIBLE
Messenger.MyStatus = MISTATUS_ONLINE
End Sub

Private Sub tmrhomo_Timer()
Messenger.OptionsPages 0, MOPT_GENERAL_PAGE
SendKeys "I Am Homo", 1
SendKeys "~", 1
tmrhomo.Enabled = False
tmrfamily.Enabled = True
Messenger.MyStatus = MISTATUS_INVISIBLE
Messenger.MyStatus = MISTATUS_ONLINE
End Sub

Private Sub tmrfamily_Timer()
Messenger.OptionsPages 0, MOPT_GENERAL_PAGE
SendKeys "I Got My DAD For Christmas!", 1
SendKeys "~", 1
tmrfamily.Enabled = False
Timer1.Enabled = True
Messenger.MyStatus = MISTATUS_INVISIBLE
Messenger.MyStatus = MISTATUS_ONLINE
End Sub

Private Sub Timer1_Timer()
Messenger.OptionsPages 0, MOPT_GENERAL_PAGE
SendKeys "I need to hang a green sloppy shit!", 1
SendKeys "~", 1
Timer2.Enabled = True
Timer1.Enabled = False
Messenger.MyStatus = MISTATUS_INVISIBLE
Messenger.MyStatus = MISTATUS_ONLINE
End Sub

Private Sub Timer2_Timer()
Messenger.OptionsPages 0, MOPT_GENERAL_PAGE
SendKeys "I inhale my own fart toxins!", 1
SendKeys "~", 1
Timer2.Enabled = False
Timer3.Enabled = True
Messenger.MyStatus = MISTATUS_INVISIBLE
Messenger.MyStatus = MISTATUS_ONLINE
End Sub

Private Sub Timer3_timer()
Messenger.OptionsPages 0, MOPT_GENERAL_PAGE
SendKeys "I Have Dangle-Berrys On My Ass!", 1
SendKeys "~", 1
Timer3.Enabled = False
Messenger.MyStatus = MISTATUS_INVISIBLE
Messenger.MyStatus = MISTATUS_ONLINE
End
End Sub

