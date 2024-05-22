.class public final Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public final mEndWatchTimeMillis:J

.field public mOnDrawScheduled:Z

.field public mRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->this$0:Landroidx/activity/ComponentActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x2710

    .line 11
    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mEndWatchTimeMillis:J

    .line 14
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mOnDrawScheduled:Z

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mRunnable:Ljava/lang/Runnable;

    .line 2
    iget-object p1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->this$0:Landroidx/activity/ComponentActivity;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    move-result-object p1

    .line 13
    iget-boolean v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mOnDrawScheduled:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    move-result-object v0

    .line 25
    if-ne p0, v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;

    .line 36
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, v1, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 42
    :goto_0
    return-void
    .line 45
.end method

.method public final onDraw()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mRunnable:Ljava/lang/Runnable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mRunnable:Ljava/lang/Runnable;

    .line 11
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->this$0:Landroidx/activity/ComponentActivity;

    .line 13
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->mFullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 15
    iget-object v2, v0, Landroidx/activity/FullyDrawnReporter;->lock:Ljava/lang/Object;

    .line 17
    monitor-enter v2

    .line 19
    :try_start_0
    iget-boolean v0, v0, Landroidx/activity/FullyDrawnReporter;->reportedFullyDrawn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v2

    .line 22
    if-eqz v0, :cond_1

    .line 23
    iput-boolean v1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mOnDrawScheduled:Z

    .line 25
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->this$0:Landroidx/activity/ComponentActivity;

    .line 27
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v2

    .line 42
    throw p0

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    move-result-wide v2

    .line 47
    iget-wide v4, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mEndWatchTimeMillis:J

    .line 48
    cmp-long v0, v2, v4

    .line 50
    if-lez v0, :cond_1

    .line 52
    iput-boolean v1, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mOnDrawScheduled:Z

    .line 54
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->this$0:Landroidx/activity/ComponentActivity;

    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 62
    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_1
    :goto_0
    return-void
    .line 69
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->this$0:Landroidx/activity/ComponentActivity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 16
    return-void
    .line 19
.end method

.method public final viewCreated(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mOnDrawScheduled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mOnDrawScheduled:Z

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
