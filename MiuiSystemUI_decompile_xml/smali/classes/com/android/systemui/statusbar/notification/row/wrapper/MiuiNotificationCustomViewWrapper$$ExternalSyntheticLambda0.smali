.class public final synthetic Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/app/Notification;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;JLandroid/app/Notification;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 5
    iput-wide p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;->f$2:Landroid/app/Notification;

    .line 9
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onChronometerTick(Landroid/widget/Chronometer;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;

    .line 2
    iget-wide v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;->f$2:Landroid/app/Notification;

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda0;->f$3:Z

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    move-result-wide v4

    .line 16
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    .line 17
    move-result-wide v6

    .line 20
    sub-long v6, v4, v6

    .line 21
    mul-long/2addr v6, v1

    .line 23
    iget-object v1, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 24
    const-string/jumbo v2, "timerCurrent"

    .line 26
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual {p1}, Landroid/widget/Chronometer;->isCountDown()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    .line 38
    move-result-wide v1

    .line 41
    sub-long/2addr v1, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Chronometer;->getBase()J

    .line 44
    move-result-wide v1

    .line 47
    sub-long v1, v4, v1

    .line 48
    :goto_0
    sget-boolean v3, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_NOTIFICATION:Z

    .line 50
    if-eqz v3, :cond_1

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v8, "tick current="

    .line 56
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string v6, " count="

    .line 65
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 76
    const-string v6, "FocusNotification"

    .line 77
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 82
    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    :cond_2
    const-wide/16 v6, 0x0

    .line 89
    cmp-long v3, v1, v6

    .line 91
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressBackView:Landroid/widget/ProgressBar;

    .line 93
    if-gez v3, :cond_3

    .line 95
    invoke-virtual {p1, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    .line 97
    invoke-virtual {p1}, Landroid/widget/Chronometer;->stop()V

    .line 100
    if-eqz p0, :cond_4

    .line 103
    const/4 p0, 0x0

    .line 105
    invoke-virtual {v6, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    goto :goto_1

    .line 109
    :cond_3
    if-eqz p0, :cond_4

    .line 110
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    .line 112
    move-result p0

    .line 115
    long-to-int p1, v1

    .line 116
    add-int/lit16 p1, p1, -0x1f4

    .line 117
    filled-new-array {p0, p1}, [I

    .line 119
    move-result-object p0

    .line 122
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 123
    move-result-object p0

    .line 126
    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 127
    const-wide/16 v1, 0x3e8

    .line 129
    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 131
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 134
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 136
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 144
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda1;

    .line 146
    invoke-direct {p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;)V

    .line 148
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 151
    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationCustomViewWrapper;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 154
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    :cond_4
    :goto_1
    return-void
    .line 159
.end method
