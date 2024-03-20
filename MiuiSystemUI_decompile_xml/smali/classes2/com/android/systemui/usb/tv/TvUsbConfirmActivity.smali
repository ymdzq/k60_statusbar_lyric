.class public Lcom/android/systemui/usb/tv/TvUsbConfirmActivity;
.super Lcom/android/systemui/usb/tv/TvUsbDialogActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/usb/tv/TvUsbConfirmActivity;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onConfirm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->grantUidAccessPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->confirmDialogStartActivity()V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 12
    return-void
    .line 15
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 7
    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

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
    if-eqz v0, :cond_1

    .line 28
    const v0, 0x7f130c0e    # @string/usb_device_confirm_prompt_warn 'Open %1$s to handle %2$s?\nThis app has not been granted record permission but could capture audio th ...'

    .line 30
    goto :goto_1

    .line 33
    :cond_1
    const v0, 0x7f130c0d    # @string/usb_device_confirm_prompt 'Open %1$s to handle %2$s?'

    .line 34
    goto :goto_1

    .line 37
    :cond_2
    const v0, 0x7f130bfc    # @string/usb_accessory_confirm_prompt 'Open %1$s to handle %2$s?'

    .line 38
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 41
    iget-object v2, v1, Lcom/android/systemui/usb/UsbDialogHelper;->mAppName:Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/usb/UsbDialogHelper;->getDeviceDescription()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 48
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 57
    iget-object v1, v1, Lcom/android/systemui/usb/UsbDialogHelper;->mAppName:Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->initUI(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 61
    return-void
    .line 64
.end method
