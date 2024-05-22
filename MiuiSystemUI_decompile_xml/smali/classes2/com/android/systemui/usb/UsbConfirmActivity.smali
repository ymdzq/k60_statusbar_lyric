.class public Lcom/android/systemui/usb/UsbConfirmActivity;
.super Lcom/android/systemui/usb/UsbDialogActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbDialogActivity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfirm()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->grantUidAccessPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->setDefaultPackage()V

    .line 24
    goto :goto_1

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 33
    move-result v1

    .line 36
    :try_start_0
    iget-boolean v2, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 v3, 0x0

    .line 39
    iget-object v4, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mUsbService:Landroid/hardware/usb/IUsbManager;

    .line 40
    if-eqz v2, :cond_2

    .line 42
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 44
    invoke-interface {v4, v0, v3, v1}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 46
    goto :goto_1

    .line 49
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 50
    invoke-interface {v4, v0, v3, v1}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "UsbDialogHelper"

    .line 57
    const-string v2, "IUsbService connection failed"

    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->confirmDialogStartActivity()V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 69
    return-void
    .line 72
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/usb/UsbDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 7
    const/4 v0, 0x1

    .line 9
    iput v0, p1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    .line 10
    iput-object p0, p1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 12
    return-void
    .line 14
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
    iget-object v1, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

    .line 28
    iget v1, v1, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    .line 30
    if-nez v1, :cond_1

    .line 32
    const v1, 0x7f130c06    # @string/usb_audio_device_permission_prompt_title 'Allow %1$s to access %2$s?'

    .line 34
    goto :goto_1

    .line 37
    :cond_1
    const v1, 0x7f130c05    # @string/usb_audio_device_confirm_prompt_title 'Open %1$s to handle %2$s?'

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
    iget-object v2, p0, Lcom/android/systemui/usb/UsbConfirmActivity;->mUsbConfirmMessageHandler:Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;

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
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogActivity;->addAlwaysUseCheckbox()V

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 115
    return-void
    .line 118
.end method
