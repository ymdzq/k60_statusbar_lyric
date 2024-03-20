.class public final synthetic Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 9
    const v1, 0x7f140565    # @style/Theme.SystemUI.Dialog.Alert

    .line 11
    const/4 v2, 0x1

    .line 14
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(IZLandroid/content/Context;)V

    .line 17
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 21
    const v4, 0x1010355    # @android:attr/alertDialogIcon

    .line 24
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 27
    const v4, 0x7f130524    # @string/high_temp_alarm_title 'Unplug your device'

    .line 30
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 33
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 36
    const-string v4, ""

    .line 39
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 44
    const v5, 0x7f130523    # @string/high_temp_alarm_notify_message 'Your device is getting warm near the charging port. If it’s connected to a charger or USB accessory, ...'

    .line 45
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;

    .line 55
    invoke-direct {v3, p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    .line 57
    const v4, 0x104000a    # @android:string/ok

    .line 60
    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 63
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;

    .line 66
    invoke-direct {v3, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    .line 68
    const/4 v4, -0x2

    .line 71
    const v5, 0x7f130521    # @string/high_temp_alarm_help_care_steps 'See care steps'

    .line 72
    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 75
    new-instance v2, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;

    .line 78
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V

    .line 80
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 86
    move-result-object v1

    .line 89
    const v2, 0x200080

    .line 90
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 96
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 99
    const/4 v0, 0x3

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguard:Landroid/app/KeyguardManager;

    .line 106
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 108
    move-result p0

    .line 111
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    move-result-object p0

    .line 115
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 116
    move-result-object p0

    .line 119
    const/16 v0, 0x13

    .line 120
    invoke-static {v0, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void
    .line 125
.end method
