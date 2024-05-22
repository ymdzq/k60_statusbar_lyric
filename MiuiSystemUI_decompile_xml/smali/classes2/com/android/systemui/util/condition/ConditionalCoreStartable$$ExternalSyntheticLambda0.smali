.class public final synthetic Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/condition/Monitor$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamMonitor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/DreamMonitor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/DreamMonitor;

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v3, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;

    .line 21
    invoke-direct {v3, v0, p1, v1}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-object p1, p1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 26
    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    iput-object v2, p0, Lcom/android/systemui/dreams/DreamMonitor;->mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    :goto_0
    return-void

    .line 37
    :goto_1
    if-eqz p1, :cond_4

    .line 38
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance v3, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;

    .line 47
    invoke-direct {v3, v0, p1, v1}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    iget-object p1, p1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 52
    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    iput-object v2, p0, Lcom/android/systemui/dreams/DreamMonitor;->mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 57
    const-string p1, "DreamMonitor"

    .line 59
    const/4 v0, 0x3

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    const-string/jumbo v0, "started"

    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    new-instance p1, Landroid/util/ArraySet;

    .line 74
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    .line 79
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mDreamCondition:Lcom/android/systemui/dreams/conditions/DreamCondition;

    .line 84
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 89
    iget-object v3, p0, Lcom/android/systemui/dreams/DreamMonitor;->mCallback:Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;

    .line 91
    invoke-direct {v1, p1, v3, v2}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 93
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 96
    move-result p1

    .line 99
    if-nez p1, :cond_2

    .line 100
    new-instance p1, Lcom/android/systemui/shared/condition/Monitor$Subscription;

    .line 102
    invoke-direct {p1, v0, v2, v1}, Lcom/android/systemui/shared/condition/Monitor$Subscription;-><init>(Ljava/util/Set;Lcom/android/systemui/shared/condition/Monitor$Callback;Lcom/android/systemui/shared/condition/Monitor$Subscription;)V

    .line 104
    move-object v1, p1

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

    .line 108
    iget-object v0, p1, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    .line 110
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    .line 112
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamMonitor;->mRestartDozeListener:Lcom/android/systemui/flags/RestartDozeListener;

    .line 115
    iget-boolean p1, p0, Lcom/android/systemui/flags/RestartDozeListener;->inited:Z

    .line 117
    if-eqz p1, :cond_3

    .line 119
    goto :goto_2

    .line 121
    :cond_3
    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/flags/RestartDozeListener;->inited:Z

    .line 123
    iget-object p1, p0, Lcom/android/systemui/flags/RestartDozeListener;->listener:Lcom/android/systemui/flags/RestartDozeListener$listener$1;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 127
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 129
    :goto_2
    new-instance p1, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;

    .line 132
    invoke-direct {p1, p0}, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;-><init>(Lcom/android/systemui/flags/RestartDozeListener;)V

    .line 134
    const-wide/16 v0, 0x3e8

    .line 137
    iget-object p0, p0, Lcom/android/systemui/flags/RestartDozeListener;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 139
    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 141
    goto :goto_3

    .line 144
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    :goto_3
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 150
.end method
