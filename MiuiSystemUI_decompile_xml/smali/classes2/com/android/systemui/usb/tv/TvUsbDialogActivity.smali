.class public abstract Lcom/android/systemui/usb/tv/TvUsbDialogActivity;
.super Lcom/android/systemui/tv/TvBottomSheetActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;

    .line 2
    return-void
    .line 4
.end method


# virtual methods
.method public final initUI(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    .line 1
    const v0, 0x7f0a0151    # @id/bottom_sheet_title

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    const v1, 0x7f0a014c    # @id/bottom_sheet_body

    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/TextView;

    .line 18
    const v2, 0x7f0a014d    # @id/bottom_sheet_icon

    .line 20
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/ImageView;

    .line 27
    const v3, 0x7f0a0150    # @id/bottom_sheet_second_icon

    .line 29
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/ImageView;

    .line 36
    const v4, 0x7f0a014f    # @id/bottom_sheet_positive_button

    .line 38
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v4

    .line 44
    check-cast v4, Landroid/widget/Button;

    .line 45
    const v5, 0x7f0a014e    # @id/bottom_sheet_negative_button

    .line 47
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v5

    .line 53
    check-cast v5, Landroid/widget/Button;

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const p1, 0x1080583    # @android:drawable/ic_wifi_signal_0

    .line 62
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    const/16 p1, 0x8

    .line 68
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    const p1, 0x104000a    # @android:string/ok

    .line 73
    invoke-virtual {v4, p1}, Landroid/widget/Button;->setText(I)V

    .line 76
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/high16 p1, 0x1040000    # @android:string/cancel

    .line 82
    invoke-virtual {v5, p1}, Landroid/widget/Button;->setText(I)V

    .line 84
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {v5}, Landroid/widget/Button;->requestFocus()Z

    .line 90
    return-void
    .line 93
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result p1

    .line 5
    const v0, 0x7f0a014f    # @id/bottom_sheet_positive_button

    .line 6
    if-ne p1, v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->onConfirm()V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 15
    :goto_0
    return-void
    .line 18
.end method

.method public abstract onConfirm()V
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/tv/TvBottomSheetActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object p1

    .line 8
    const/high16 v0, 0x80000

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 11
    :try_start_0
    new-instance p1, Lcom/android/systemui/usb/UsbDialogHelper;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    move-result-object v1

    .line 23
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/usb/UsbDialogHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    const-string v0, "TvUsbDialogActivity"

    .line 31
    const-string/jumbo v1, "unable to initialize"

    .line 33
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/tv/TvBottomSheetActivity;->finish()V

    .line 39
    :goto_0
    return-void
    .line 42
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 14
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 16
    return-void
    .line 19
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/usb/tv/TvUsbDialogActivity;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    .line 5
    iget-boolean v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 7
    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 11
    iget-object v2, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    .line 15
    iput-object v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 21
    iget-object v2, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 23
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    .line 25
    iput-object v1, v0, Lcom/android/systemui/usb/UsbDialogHelper;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    .line 28
    :goto_0
    return-void
    .line 30
.end method
