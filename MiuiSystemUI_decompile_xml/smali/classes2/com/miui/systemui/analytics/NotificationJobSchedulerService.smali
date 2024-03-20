.class public final Lcom/miui/systemui/analytics/NotificationJobSchedulerService;
.super Landroid/app/job/JobService;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const-class p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBgHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    const/4 p0, 0x0

    .line 23
    return p0
    .line 24
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
