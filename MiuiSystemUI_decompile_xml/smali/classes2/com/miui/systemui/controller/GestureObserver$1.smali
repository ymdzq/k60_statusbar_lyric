.class public final Lcom/miui/systemui/controller/GestureObserver$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/GestureObserver;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/GestureObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/controller/GestureObserver$1;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/controller/GestureObserver$1;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 2
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardShowing:Z

    .line 4
    iget-object v1, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 6
    move-object v2, v1

    .line 8
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 11
    if-ne v0, v2, :cond_0

    .line 13
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardOccluded:Z

    .line 15
    move-object v2, v1

    .line 17
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 18
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 20
    if-eq v0, v2, :cond_1

    .line 22
    :cond_0
    move-object v0, v1

    .line 24
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 25
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 27
    iput-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardShowing:Z

    .line 29
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 31
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 33
    iput-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardOccluded:Z

    .line 35
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/systemui/controller/GestureObserver;->updateKeyguardFullscreenDisableState(Z)V

    .line 38
    :cond_1
    return-void
    .line 41
.end method

.method public final onPrimaryBouncerShowingChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/controller/GestureObserver$1;->this$0:Lcom/miui/systemui/controller/GestureObserver;

    .line 2
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mBouncerShowing:Z

    .line 4
    iget-object v1, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 6
    move-object v2, v1

    .line 8
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 9
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    .line 11
    if-eq v0, v2, :cond_0

    .line 13
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 15
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    .line 17
    iput-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mBouncerShowing:Z

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Lcom/miui/systemui/controller/GestureObserver;->updateKeyguardFullscreenDisableState(Z)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method
