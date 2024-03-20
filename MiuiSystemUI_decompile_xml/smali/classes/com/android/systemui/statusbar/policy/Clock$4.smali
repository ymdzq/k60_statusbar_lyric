.class public final Lcom/android/systemui/statusbar/policy/Clock$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$4;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v1

    .line 18
    const-wide/16 v3, 0x3e8

    .line 19
    div-long/2addr v1, v3

    .line 21
    mul-long/2addr v1, v3

    .line 22
    add-long/2addr v1, v3

    .line 23
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 24
    return-void
    .line 27
.end method
