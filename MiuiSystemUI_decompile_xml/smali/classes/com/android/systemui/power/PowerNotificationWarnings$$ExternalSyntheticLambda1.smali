.class public final synthetic Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 p2, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 10
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 12
    const/4 v1, 0x5

    .line 14
    invoke-static {v1, p1, p2, v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(ILandroid/content/Context;ZZ)V

    .line 15
    sget-object p1, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_OK:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V

    .line 20
    return-void

    .line 23
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 24
    iget-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 26
    const v1, 0x7f130522    # @string/high_temp_alarm_help_url 'help_uri_usb_warm'

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    new-instance v1, Landroid/content/Intent;

    .line 35
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 37
    const-string v2, "com.android.settings"

    .line 40
    const-string v3, "com.android.settings.HelpTrampoline"

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v2, "android.intent.extra.TEXT"

    .line 47
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    new-instance p1, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda3;

    .line 52
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 54
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 57
    invoke-interface {p0, v1, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 59
    return-void

    .line 62
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 63
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 66
    return-void

    .line 68
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    sget-object p1, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->SAVER_CONFIRM_CANCEL:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V

    .line 76
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 80
.end method
