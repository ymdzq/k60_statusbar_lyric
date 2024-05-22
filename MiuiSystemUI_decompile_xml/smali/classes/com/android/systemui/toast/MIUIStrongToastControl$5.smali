.class public final Lcom/android/systemui/toast/MIUIStrongToastControl$5;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "miui.intent.action.ACTION_SOC_DECIMAL"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 14
    iget-object p1, p1, Lcom/android/systemui/toast/MIUIStrongToastControl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 16
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 18
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 20
    const-string v0, "MIUIStrongToastControl"

    .line 22
    if-eqz p1, :cond_0

    .line 24
    const-string p0, "keyguard state is not support update"

    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 31
    :cond_0
    const-string p1, "miui.intent.extra.soc_decimal"

    .line 32
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 35
    move-result p1

    .line 38
    const-string v2, "miui.intent.extra.soc_decimal_rate"

    .line 39
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    move-result p2

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    const-string v3, "receive soc decimal, battery:"

    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v3, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 52
    iget-object v3, v3, Lcom/android/systemui/toast/MIUIStrongToastControl;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 54
    iget v3, v3, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 56
    const-string v4, ",level:"

    .line 58
    const-string v5, ";rate="

    .line 60
    invoke-static {v2, v3, v4, p1, v5}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 62
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 75
    iget-object v3, v2, Lcom/android/systemui/toast/MIUIStrongToastControl;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 77
    iget v4, v3, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 79
    const/16 v5, 0x64

    .line 81
    if-gt v4, v5, :cond_5

    .line 83
    int-to-float v6, v4

    .line 85
    int-to-float p1, p1

    .line 86
    const/high16 v7, 0x42c80000    # 100.0f

    .line 87
    div-float/2addr p1, v7

    .line 89
    add-float/2addr p1, v6

    .line 90
    iput p1, v2, Lcom/android/systemui/toast/MIUIStrongToastControl;->mRapidLevel:F

    .line 91
    int-to-float p1, p2

    .line 93
    div-float/2addr p1, v7

    .line 94
    iput p1, v2, Lcom/android/systemui/toast/MIUIStrongToastControl;->mRapidRate:F

    .line 95
    if-ne v4, v5, :cond_1

    .line 97
    iput v6, v2, Lcom/android/systemui/toast/MIUIStrongToastControl;->mRapidLevel:F

    .line 99
    :cond_1
    const/4 p1, 0x1

    .line 101
    iput-boolean p1, v2, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDecimal:Z

    .line 102
    iget-object p2, v2, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 104
    if-nez p2, :cond_2

    .line 106
    move v2, p1

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget-boolean v2, p2, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 110
    :goto_0
    if-eqz v2, :cond_3

    .line 112
    const-string p0, "exit toast not show   decimal "

    .line 114
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 119
    :cond_3
    iget v2, v3, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 120
    const/16 v3, 0x32

    .line 122
    if-lt v2, v3, :cond_5

    .line 124
    if-eqz p2, :cond_4

    .line 126
    iget-boolean v2, p2, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 128
    if-eqz v2, :cond_4

    .line 130
    iget-object p2, p2, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 132
    const-string v2, "charge"

    .line 134
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 136
    move-result p2

    .line 139
    if-eqz p2, :cond_4

    .line 140
    move v1, p1

    .line 142
    :cond_4
    if-eqz v1, :cond_5

    .line 143
    iget-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 145
    iget-object p2, p1, Lcom/android/systemui/toast/MIUIStrongToastControl;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 147
    const/4 v1, 0x2

    .line 149
    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/toast/MIUIStrongToastControl;->structureChargeStrongToast(Lcom/miui/charge/MiuiBatteryStatus;I)Landroid/os/Bundle;

    .line 150
    move-result-object p1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v1, "registerBatteryForSOC  \u66f4\u65b0\u5145\u7535\u74e6\u6570: "

    .line 156
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 162
    iget-object v1, v1, Lcom/android/systemui/toast/MIUIStrongToastControl;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 164
    iget v1, v1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 166
    invoke-static {p2, v1, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$5;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/systemui/toast/MIUIStrongToastControl;->showCustomStrongToast(Landroid/os/Bundle;)V

    .line 173
    :cond_5
    return-void
    .line 176
.end method
