.class public final synthetic Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 9
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 11
    sget-object p1, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_DISMISS:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V

    .line 15
    return-void

    .line 18
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 19
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 21
    return-void

    .line 23
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 24
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 26
    const/16 p1, 0x9

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mKeyguard:Landroid/app/KeyguardManager;

    .line 34
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 36
    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object p0

    .line 43
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    const/16 p1, 0x14

    .line 48
    invoke-static {p1, p0}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 50
    return-void

    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 54
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 56
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method
