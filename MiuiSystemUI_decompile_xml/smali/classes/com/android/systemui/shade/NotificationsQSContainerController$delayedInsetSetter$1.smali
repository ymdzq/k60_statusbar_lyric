.class public final Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/function/Consumer;


# instance fields
.field public canceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public cutoutInsets:I

.field public stableInsets:I

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationsQSContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/view/WindowInsets;

    .line 2
    iget v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->stableInsets:I

    .line 4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->stableInsets:I

    .line 22
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 24
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 30
    move-result v2

    .line 33
    :cond_1
    iput v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->cutoutInsets:I

    .line 34
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->canceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 36
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->run()V

    .line 43
    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 47
    move-result v0

    .line 50
    iput v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->stableInsets:I

    .line 51
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 53
    move-result-object p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 59
    move-result v2

    .line 62
    :cond_4
    iput v2, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->cutoutInsets:I

    .line 63
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->canceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 65
    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 69
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 72
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationsQSContainerController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 74
    const-wide/16 v0, 0x1f4

    .line 76
    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 78
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->canceller:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 82
    :goto_1
    return-void
    .line 84
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    iget v1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->stableInsets:I

    .line 4
    iput v1, v0, Lcom/android/systemui/shade/NotificationsQSContainerController;->bottomStableInsets:I

    .line 6
    iget p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController$delayedInsetSetter$1;->cutoutInsets:I

    .line 8
    iput p0, v0, Lcom/android/systemui/shade/NotificationsQSContainerController;->bottomCutoutInsets:I

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationsQSContainerController;->updateBottomSpacing()V

    .line 12
    return-void
    .line 15
.end method
