.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

.field public final synthetic f$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$12;Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 6
    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    .line 8
    iget-wide v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    .line 10
    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    .line 12
    iget-object v7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 14
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 16
    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$12;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 21
    check-cast p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 23
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 25
    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onSuccessfulUnlock()V

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    .line 30
    return-void
    .line 33
.end method
