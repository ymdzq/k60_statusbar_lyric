.class public final Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardIndicationInjector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    const-class p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 2
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 8
    iget-boolean p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePreViewVisible:Z

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 12
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 14
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "onClick: mPowerPluggedIn "

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, ";isMagazinePreViewVisibility="

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 39
    const-string v2, "KeyguardIndicationInjector"

    .line 40
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    if-eqz v0, :cond_3

    .line 45
    if-nez p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 49
    iget v0, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 51
    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    move-result-wide v0

    .line 58
    iput-wide v0, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeTextClickTime:J

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 61
    iget v0, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 63
    const/4 v1, 0x1

    .line 65
    add-int/2addr v0, v1

    .line 66
    iput v0, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    const-string v0, "onClick: mChargeClickCount "

    .line 71
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 76
    iget v0, v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ";time="

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    move-result-wide v3

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 92
    iget-wide v5, v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeTextClickTime:J

    .line 94
    sub-long/2addr v3, v5

    .line 96
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 103
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 107
    iget p1, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 109
    const/4 v0, 0x2

    .line 111
    if-lt p1, v0, :cond_3

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    move-result-wide v2

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 118
    iget-wide v4, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeTextClickTime:J

    .line 120
    sub-long/2addr v2, v4

    .line 122
    const-wide/16 v4, 0x96

    .line 123
    cmp-long p1, v2, v4

    .line 125
    const/4 v0, 0x0

    .line 127
    const-wide/16 v2, 0x1f4

    .line 128
    if-lez p1, :cond_1

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    move-result-wide v4

    .line 135
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 136
    iget-wide v6, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeTextClickTime:J

    .line 138
    sub-long/2addr v4, v6

    .line 140
    cmp-long v4, v4, v2

    .line 141
    if-gez v4, :cond_1

    .line 143
    iput v0, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 147
    move-result-wide v2

    .line 150
    iput-wide v2, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeTextClickTime:J

    .line 151
    const-class p0, Lcom/miui/charge/MiuiChargeController;

    .line 153
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 158
    check-cast p1, Lcom/miui/charge/MiuiChargeController;

    .line 159
    iput-boolean v1, p1, Lcom/miui/charge/MiuiChargeController;->mStateInitialized:Z

    .line 161
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 163
    move-result-object p0

    .line 166
    check-cast p0, Lcom/miui/charge/MiuiChargeController;

    .line 167
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 169
    invoke-virtual {p0, p1, v1}, Lcom/miui/charge/MiuiChargeController;->checkBatteryStatus(Lcom/miui/charge/MiuiBatteryStatus;Z)V

    .line 171
    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 175
    move-result-wide v4

    .line 178
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$3;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 179
    iget-wide v6, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeTextClickTime:J

    .line 181
    sub-long/2addr v4, v6

    .line 183
    cmp-long p1, v4, v2

    .line 184
    if-lez p1, :cond_2

    .line 186
    iput v1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 190
    move-result-wide v0

    .line 193
    iput-wide v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeTextClickTime:J

    .line 194
    goto :goto_0

    .line 196
    :cond_2
    iput v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeClickCount:I

    .line 197
    :cond_3
    :goto_0
    return-void
    .line 199
.end method
