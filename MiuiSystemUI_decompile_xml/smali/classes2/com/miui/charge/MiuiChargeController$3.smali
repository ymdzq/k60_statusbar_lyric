.class public final Lcom/miui/charge/MiuiChargeController$3;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/MiuiChargeController;


# direct methods
.method public constructor <init>(Lcom/miui/charge/MiuiChargeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController$3;->this$0:Lcom/miui/charge/MiuiChargeController;

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
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_5

    .line 14
    const-string p1, "miui.intent.extra.soc_decimal"

    .line 16
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    move-result p1

    .line 21
    const-string v2, "miui.intent.extra.soc_decimal_rate"

    .line 22
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result p2

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string v3, "receive soc decimal, battery:"

    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v3, p0, Lcom/miui/charge/MiuiChargeController$3;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 35
    iget-object v3, v3, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 37
    iget v3, v3, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 39
    const-string v4, ",level:"

    .line 41
    const-string v5, ";rate="

    .line 43
    invoke-static {v2, v3, v4, p1, v5}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 54
    const-string v3, "MiuiChargeController"

    .line 55
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, p0, Lcom/miui/charge/MiuiChargeController$3;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 60
    iget-object v3, v2, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 62
    iget v3, v3, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 64
    const/16 v4, 0x64

    .line 66
    if-ge v3, v4, :cond_8

    .line 68
    iget-boolean v4, v2, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 70
    if-eqz v4, :cond_8

    .line 72
    iget-object v2, v2, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 74
    if-eqz v2, :cond_4

    .line 76
    int-to-float v3, v3

    .line 78
    int-to-float p1, p1

    .line 79
    const/high16 v4, 0x42c80000    # 100.0f

    .line 80
    div-float/2addr p1, v4

    .line 82
    add-float/2addr p1, v3

    .line 83
    int-to-float p2, p2

    .line 84
    div-float/2addr p2, v4

    .line 85
    iget-object v3, v2, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    .line 86
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    const/4 v5, 0x0

    .line 91
    cmpg-float v5, p1, v5

    .line 92
    if-ltz v5, :cond_2

    .line 94
    cmpl-float v4, p1, v4

    .line 96
    if-ltz v4, :cond_0

    .line 98
    goto :goto_0

    .line 100
    :cond_0
    iget-object v4, v3, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 101
    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 105
    :cond_1
    float-to-int v4, p1

    .line 108
    iput v4, v3, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCurrentProgress:I

    .line 109
    iget-object v4, v3, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 113
    move-result-object v5

    .line 116
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    move-result-object v6

    .line 120
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 121
    move-result-object v6

    .line 124
    const-string v7, "%1.2f"

    .line 125
    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object v5

    .line 130
    invoke-virtual {v4, v5}, Lcom/miui/charge/view/NumberDrawView;->setLevelText(Ljava/lang/String;)V

    .line 131
    const/4 v4, 0x2

    .line 134
    new-array v4, v4, [F

    .line 135
    aput p1, v4, v1

    .line 137
    add-float/2addr p1, p2

    .line 139
    const p2, 0x42c7fae1    # 99.99f

    .line 140
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 143
    move-result p1

    .line 146
    aput p1, v4, v0

    .line 147
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 149
    move-result-object p1

    .line 152
    iput-object p1, v3, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 153
    new-instance p2, Lcom/miui/charge/view/MiuiChargePercentCountView$1;

    .line 155
    invoke-direct {p2, v3}, Lcom/miui/charge/view/MiuiChargePercentCountView$1;-><init>(Lcom/miui/charge/view/MiuiChargePercentCountView;)V

    .line 157
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    iget-object p1, v3, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 163
    new-instance p2, Lcom/miui/charge/view/MiuiChargePercentCountView$2;

    .line 165
    invoke-direct {p2, v3, v1}, Lcom/miui/charge/view/MiuiChargePercentCountView$2;-><init>(Lcom/miui/charge/view/MiuiChargePercentCountView;I)V

    .line 167
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    iget-object p1, v3, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 173
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    .line 175
    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 177
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object p1, v3, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 183
    const-wide/16 v0, 0x2710

    .line 185
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    iget-object p1, v3, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 190
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    :cond_2
    :goto_0
    iget-object p1, v2, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 195
    iget-object p2, v2, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 197
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object p1, v2, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    .line 202
    iget-object p2, v2, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    .line 204
    iget-boolean v0, v2, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowChargingInNonLockscreen:Z

    .line 206
    if-eqz v0, :cond_3

    .line 208
    const-wide/16 v0, 0x16a8

    .line 210
    goto :goto_1

    .line 212
    :cond_3
    const-wide/16 v0, 0x24b8

    .line 213
    :goto_1
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    :cond_4
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController$3;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 218
    iget-object p2, p1, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 220
    iget-object p1, p1, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 222
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$3;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 227
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 229
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 231
    const-wide/16 v0, 0x25e4

    .line 233
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 235
    goto :goto_2

    .line 238
    :cond_5
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 241
    move-result-object v2

    .line 244
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    move-result p1

    .line 248
    if-eqz p1, :cond_6

    .line 249
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController$3;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 251
    iget-object p2, p1, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    .line 253
    iget-object p1, p1, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$5;

    .line 255
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$3;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 260
    const-string p1, "USER_PRESENT"

    .line 262
    invoke-virtual {p0, p1}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    .line 264
    goto :goto_2

    .line 267
    :cond_6
    const-string p1, "miui.intent.action.ACTION_WIRELESS_POSITION"

    .line 268
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 270
    move-result-object v2

    .line 273
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    move-result p1

    .line 277
    if-eqz p1, :cond_8

    .line 278
    const-string p1, "miui.intent.extra.wireless_position"

    .line 280
    const/4 v2, -0x1

    .line 282
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 283
    move-result p1

    .line 286
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$3;->this$0:Lcom/miui/charge/MiuiChargeController;

    .line 287
    iget p2, p0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeState:I

    .line 289
    if-eq p1, p2, :cond_8

    .line 291
    iput p1, p0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeState:I

    .line 293
    if-nez p1, :cond_7

    .line 295
    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    .line 297
    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    .line 299
    invoke-virtual {p0, v0}, Lcom/miui/charge/MiuiChargeController;->showMissedTip(Z)V

    .line 301
    goto :goto_2

    .line 304
    :cond_7
    if-ne p1, v0, :cond_8

    .line 305
    iput-boolean v1, p0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    .line 307
    sput-boolean v1, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    .line 309
    invoke-virtual {p0, v1}, Lcom/miui/charge/MiuiChargeController;->showMissedTip(Z)V

    .line 311
    :cond_8
    :goto_2
    return-void
    .line 314
.end method
