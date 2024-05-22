.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

.field public final synthetic f$1:Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$2:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final synthetic f$3:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Landroid/view/RemoteAnimationTarget;Landroid/view/SyncRtSurfaceTransactionApplier;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;->f$1:Landroid/view/RemoteAnimationTarget;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;->f$2:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;->f$3:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$7;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;->f$1:Landroid/view/RemoteAnimationTarget;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;->f$2:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda1;->f$3:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 8
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 10
    check-cast v3, Landroid/animation/ValueAnimator;

    .line 12
    if-eqz v3, :cond_0

    .line 14
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_0
    const/4 v3, 0x2

    .line 19
    new-array v3, v3, [F

    .line 20
    fill-array-data v3, :array_0

    .line 22
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 25
    move-result-object v3

    .line 28
    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 29
    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 31
    iget v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mDreamOpenAnimationDuration:I

    .line 33
    int-to-long v4, v4

    .line 35
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 39
    check-cast v3, Landroid/animation/ValueAnimator;

    .line 41
    sget-object v4, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 43
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45
    iget-object v3, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 48
    check-cast v3, Landroid/animation/ValueAnimator;

    .line 50
    new-instance v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda2;

    .line 52
    invoke-direct {v4, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$$ExternalSyntheticLambda2;-><init>(Landroid/view/RemoteAnimationTarget;Landroid/view/SyncRtSurfaceTransactionApplier;)V

    .line 54
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 60
    check-cast v1, Landroid/animation/ValueAnimator;

    .line 62
    new-instance v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;

    .line 64
    invoke-direct {v2, v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->mOccludeByDreamAnimator:Ljava/lang/Object;

    .line 72
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 74
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 80
.end method
