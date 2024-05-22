.class public final Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;
.super Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final hideUdfpsOverlay(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 13
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda3;

    .line 15
    const/4 v1, 0x2

    .line 17
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 18
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 21
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 23
    return-void
    .line 26
.end method

.method public final onAcquired(II)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/hardware/biometrics/BiometricFingerprintConstants;->shouldDisableUdfpsDisplayMode(I)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 10
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;

    .line 12
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;II)V

    .line 14
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final onEnrollmentHelp(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onEnrollmentProgress(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setDebugMessage(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    check-cast p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method

.method public final showUdfpsOverlay(JIILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    .locals 7

    .line 1
    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    iget-object p3, p3, Lcom/android/systemui/biometrics/UdfpsController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p3, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 11
    iget-object p3, p3, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 13
    new-instance v6, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;

    .line 15
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    move-wide v2, p1

    .line 19
    move v4, p4

    .line 20
    move-object v5, p5

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V

    .line 22
    check-cast p3, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 25
    invoke-virtual {p3, v6}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 27
    return-void
    .line 30
.end method
