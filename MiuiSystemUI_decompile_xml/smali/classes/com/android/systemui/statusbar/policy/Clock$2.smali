.class public final Lcom/android/systemui/statusbar/policy/Clock$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    .line 10
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    const-string/jumbo v0, "time-zone"

    .line 29
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;

    .line 36
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/io/Serializable;I)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    goto :goto_0

    .line 45
    :cond_1
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 54
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 60
    move-result-object p2

    .line 63
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;

    .line 66
    const/4 v1, 0x1

    .line 68
    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/io/Serializable;I)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_2
    :goto_0
    new-instance p2, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;

    .line 75
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;)V

    .line 77
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :goto_1
    return-void

    .line 83
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 87
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 88
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p2

    .line 93
    if-eqz p2, :cond_3

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    .line 98
    if-eqz p1, :cond_4

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Lcom/android/systemui/statusbar/policy/Clock$4;

    .line 102
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    goto :goto_3

    .line 107
    :cond_3
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 116
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    .line 118
    if-eqz p1, :cond_4

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Lcom/android/systemui/statusbar/policy/Clock$4;

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 124
    move-result-wide v0

    .line 127
    const-wide/16 v2, 0x3e8

    .line 128
    div-long/2addr v0, v2

    .line 130
    mul-long/2addr v0, v2

    .line 131
    add-long/2addr v0, v2

    .line 132
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 133
    :cond_4
    :goto_3
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 138
.end method
