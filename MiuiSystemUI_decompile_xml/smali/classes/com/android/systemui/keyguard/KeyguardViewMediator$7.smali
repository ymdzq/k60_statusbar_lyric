.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$7;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public mOccludeByDreamAnimator:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 12
    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda0;

    .line 16
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda0;-><init>(Landroid/view/IRemoteAnimationRunner$Stub;I)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    const-string v0, "KeyguardViewMediator"

    .line 25
    const-string v1, "OccludeByDreamAnimator#onAnimationCancelled. Set occluded = true"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 32
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 35
    return-void

    .line 38
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 39
    check-cast p0, Landroid/view/IRemoteAnimationRunner;

    .line 41
    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    .line 43
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->$r8$classId:I

    .line 2
    const-string v1, "KeyguardViewMediator"

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_4

    .line 11
    :pswitch_0
    if-eqz p2, :cond_3

    .line 12
    array-length p1, p2

    .line 14
    if-eqz p1, :cond_3

    .line 15
    aget-object p1, p2, v2

    .line 17
    if-nez p1, :cond_0

    .line 19
    goto :goto_1

    .line 21
    :cond_0
    iget-object p2, p1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    if-eqz p2, :cond_1

    .line 24
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 26
    const/4 p3, 0x5

    .line 28
    if-ne p2, p3, :cond_1

    .line 29
    move p2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move p2, v2

    .line 33
    :goto_0
    if-nez p2, :cond_2

    .line 34
    const-string p1, "The occluding app isn\'t Dream; finishing up. Please check that the config is correct."

    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    goto :goto_2

    .line 41
    :cond_2
    new-instance p2, Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 42
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 44
    iget-object p3, p3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 46
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 48
    move-result-object p3

    .line 51
    check-cast p3, Lcom/android/keyguard/KeyguardViewController;

    .line 52
    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 54
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 56
    move-result-object p3

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    .line 60
    move-result-object p3

    .line 63
    invoke-direct {p2, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    .line 64
    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 67
    iget-object p3, p3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 71
    move-result-object p3

    .line 74
    new-instance p4, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;

    .line 75
    invoke-direct {p4, p0, p1, p2, p5}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Landroid/view/RemoteAnimationTarget;Landroid/view/SyncRtSurfaceTransactionApplier;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 77
    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    move p1, v3

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    :goto_1
    const-string p1, "No apps provided to the OccludeByDream runner; skipping occluding animation."

    .line 85
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_2
    move p1, v2

    .line 90
    :goto_3
    if-nez p1, :cond_4

    .line 91
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 93
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 95
    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    .line 98
    :cond_4
    return-void

    .line 101
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 102
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 104
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 110
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 112
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 114
    move-result-object v0

    .line 117
    if-eqz v0, :cond_5

    .line 118
    move v2, v3

    .line 120
    :cond_5
    if-nez v2, :cond_6

    .line 121
    const-string p0, "Skipping remote animation - view root not ready"

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_5

    .line 128
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 129
    move-object v0, p0

    .line 131
    check-cast v0, Landroid/view/IRemoteAnimationRunner;

    .line 132
    move v1, p1

    .line 134
    move-object v2, p2

    .line 135
    move-object v3, p3

    .line 136
    move-object v4, p4

    .line 137
    move-object v5, p5

    .line 138
    invoke-interface/range {v0 .. v5}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 139
    :goto_5
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 144
.end method
