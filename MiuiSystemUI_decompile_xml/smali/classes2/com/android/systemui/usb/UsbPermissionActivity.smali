.class public Lcom/android/systemui/usb/UsbPermissionActivity;
.super Lcom/android/systemui/usb/UsbDialogActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mPermissionGranted:Z

.field public final mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbDialogActivity;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    .line 6
    iput-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->grantUidAccessPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 7
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->setDefaultPackage()V

    .line 25
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    .line 28
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 30
    return-void
    .line 33
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/usb/UsbDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 7
    const/4 v0, 0x0

    .line 9
    iput v0, p1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    .line 10
    iput-object p0, p1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 12
    return-void
    .line 14
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mPermissionGranted:Z

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/UsbDialogHelper;->sendPermissionDialogResponse(Z)V

    .line 12
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/usb/UsbDialogActivity;->onPause()V

    .line 15
    return-void
    .line 18
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/systemui/usb/UsbDialogActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    .line 28
    iget v1, v1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    .line 30
    if-nez v1, :cond_1

    .line 32
    const v1, 0x7f130c00    # @string/usb_audio_device_permission_prompt_title 'Allow %1$s to access %2$s?'

    .line 34
    goto :goto_1

    .line 37
    :cond_1
    const v1, 0x7f130bff    # @string/usb_audio_device_confirm_prompt_title 'Open %1$s to handle %2$s?'

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 41
    iget-object v3, v2, Lcom/android/systemui/usb/UsbDialogHelper;->mAppName:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v2}, Lcom/android/systemui/usb/UsbDialogHelper;->getDeviceDescription()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 48
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/android/systemui/usb/UsbPermissionActivity;->mUsbPermissionMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    .line 57
    invoke-virtual {v2}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->getMessageId()I

    .line 59
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    iget-object v3, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 65
    iget-object v4, v3, Lcom/android/systemui/usb/UsbDialogHelper;->mAppName:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {v3}, Lcom/android/systemui/usb/UsbDialogHelper;->getDeviceDescription()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 72
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    const/4 v2, 0x0

    .line 82
    :goto_2
    iget-object v3, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 83
    iput-object v1, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 85
    iput-object v2, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 87
    const v1, 0x104000a    # @android:string/ok

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    iput-object v1, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 96
    const/high16 v1, 0x1040000    # @android:string/cancel

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 103
    iput-object v1, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 104
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 106
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    if-nez v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 112
    iget-boolean v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mCanBeDefault:Z

    .line 114
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogActivity;->addAlwaysUseCheckbox()V

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 121
    return-void
    .line 124
.end method
