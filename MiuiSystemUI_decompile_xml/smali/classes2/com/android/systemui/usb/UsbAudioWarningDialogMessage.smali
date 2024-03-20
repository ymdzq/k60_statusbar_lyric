.class public final Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

.field public mDialogType:I


# virtual methods
.method public final getMessageId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 4
    if-nez v1, :cond_1

    .line 6
    iget p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    .line 8
    if-nez p0, :cond_0

    .line 10
    const p0, 0x7f130bfd    # @string/usb_accessory_permission_prompt 'Allow %1$s to access %2$s?'

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    const p0, 0x7f130bfc    # @string/usb_accessory_confirm_prompt 'Open %1$s to handle %2$s?'

    .line 16
    :goto_0
    return p0

    .line 19
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    .line 20
    move-result v0

    .line 23
    const v1, 0x7f130c01    # @string/usb_audio_device_prompt 'Using %1$s with this device might prevent hearing calls, notifications and alarms.'

    .line 24
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    return v1

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    .line 38
    move-result v0

    .line 41
    const/4 v2, 0x0

    .line 42
    if-nez v0, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    .line 45
    move-result v0

    .line 48
    if-eqz v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 51
    iget-object v0, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 53
    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getHasAudioPlayback()Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    const/4 v0, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v0, v2

    .line 65
    :goto_1
    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 68
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    .line 70
    move-result v0

    .line 73
    if-nez v0, :cond_4

    .line 74
    return v1

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    .line 79
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    .line 85
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    iget-object p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    .line 93
    move-result p0

    .line 96
    if-eqz p0, :cond_5

    .line 97
    const p0, 0x7f130c02    # @string/usb_audio_device_prompt_warn 'This app has not been granted record permission but could capture audio through this USB device. Usi ...'

    .line 99
    return p0

    .line 102
    :cond_5
    const-string p0, "UsbAudioWarningDialogMessage"

    .line 103
    const-string v0, "Only shows title with empty content description!"

    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v2
    .line 110
.end method

.method public final isUsbAudioDevice()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getHasAudioPlayback()Z

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    move p0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v2

    .line 30
    :goto_0
    if-eqz p0, :cond_2

    .line 31
    :cond_1
    move v2, v1

    .line 33
    :cond_2
    return v2
    .line 34
.end method
