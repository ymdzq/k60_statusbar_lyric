.class public final Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public mCanDismissLockScreen:Z

.field public final mContext:Landroid/content/Context;

.field public mDismissAmount:F

.field public mDismissingFromTouch:Z

.field public mFaceAuthEnabled:Z

.field public mFlingingToDismissKeyguard:Z

.field public mFlingingToDismissKeyguardDuringSwipeGesture:Z

.field public mKeyguardFadingAway:Z

.field public mKeyguardFadingAwayDelay:J

.field public mKeyguardFadingAwayDuration:J

.field public mKeyguardGoingAway:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLaunchTransitionFadingAway:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

.field public mOccluded:Z

.field public mPrimaryBouncerShowing:Z

.field public mSecure:Z

.field public mShowing:Z

.field public mSnappingKeyguardBackAfterSwipe:Z

.field public mTrustManaged:Z

.field public mTrusted:Z

.field public final mUnlockAnimationControllerLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Ldagger/Lazy;Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$UpdateMonitorCallback;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 17
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    .line 20
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguardDuringSwipeGesture:Z

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSnappingKeyguardBackAfterSwipe:Z

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    .line 31
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 35
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 37
    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 39
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mUnlockAnimationControllerLazy:Ldagger/Lazy;

    .line 42
    const-string p1, "KeyguardStateControllerImpl"

    .line 44
    invoke-virtual {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 46
    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    .line 50
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 53
    return-void
    .line 55
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 2
    const-string v0, "Callback must not be null. b/128895449"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "KeyguardStateController:"

    .line 2
    const-string v0, "  mShowing: "

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 10
    const-string v1, "  mOccluded: "

    .line 12
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p2

    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 18
    const-string v1, "  mSecure: "

    .line 20
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p2

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 26
    const-string v1, "  mCanDismissLockScreen: "

    .line 28
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p2

    .line 33
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 34
    const-string v1, "  mTrustManaged: "

    .line 36
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object p2

    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrustManaged:Z

    .line 42
    const-string v1, "  mTrusted: "

    .line 44
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object p2

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string p2, "  mDebugUnlocked: false"

    .line 62
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "  mFaceAuthEnabled: "

    .line 69
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceAuthEnabled:Z

    .line 74
    const-string v1, "  isKeyguardFadingAway: "

    .line 76
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object p2

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 82
    const-string v1, "  isKeyguardGoingAway: "

    .line 84
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-result-object p2

    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 90
    const-string v1, "  isLaunchTransitionFadingAway: "

    .line 92
    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    move-result-object p2

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    .line 98
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 100
    return-void
    .line 103
.end method

.method public final isKeyguardScreenRotationAllowed()Z
    .locals 2

    .line 1
    const-string v0, "lockscreen.rot_override"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object p0

    .line 16
    const v0, 0x7f050028    # @bool/config_enableLockScreenRotation '@android:bool/config_enableMultiUserUI'

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    :cond_0
    const/4 v1, 0x1

    .line 26
    :cond_1
    return v1
    .line 27
.end method

.method public final isMethodSecure(I)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 15
    return p0
    .line 17
.end method

.method public final notifyKeyguardGoingAway(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    const-wide/16 v0, 0x1000

    .line 6
    const-string v2, "keyguardGoingAway"

    .line 8
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    new-instance p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    .line 22
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final notifyKeyguardState(ZZ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 6
    if-ne v0, p2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 11
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 17
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eq v1, p2, :cond_1

    .line 21
    move v1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v1, v3

    .line 25
    :goto_0
    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 26
    if-eq v4, p1, :cond_2

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    move v2, v3

    .line 31
    :goto_1
    const/4 v4, 0x2

    .line 32
    if-nez v1, :cond_3

    .line 33
    if-nez v2, :cond_3

    .line 35
    goto :goto_3

    .line 37
    :cond_3
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 38
    move-result v5

    .line 41
    iput-boolean p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 42
    iput-boolean p2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 44
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    .line 46
    move-result v6

    .line 49
    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 50
    invoke-virtual {v7, p1, p2, v6}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logKeyguardShowingChanged(ZZZ)V

    .line 52
    if-eq v6, v5, :cond_6

    .line 55
    if-eqz v6, :cond_4

    .line 57
    iput-boolean v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 59
    :cond_4
    move v5, v3

    .line 61
    :goto_2
    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v7

    .line 67
    if-ge v5, v7, :cond_6

    .line 68
    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v7

    .line 75
    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 78
    move-result-object v7

    .line 81
    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 82
    if-eqz v7, :cond_5

    .line 84
    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 86
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 89
    goto :goto_2

    .line 91
    :cond_6
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 92
    iget-boolean v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    .line 94
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 96
    invoke-virtual {v5, v6, v7}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->setKeyguardShowingAndOccluded(ZZ)V

    .line 98
    if-eqz v1, :cond_7

    .line 101
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_OCCLUSION_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 103
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 105
    goto :goto_3

    .line 108
    :cond_7
    if-eqz v2, :cond_8

    .line 109
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 113
    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "Keyguard showing: "

    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, " occluded: "

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 137
    const-wide/16 v0, 0x1000

    .line 138
    const-string v2, "UI Events"

    .line 140
    invoke-static {v0, v1, v2, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string p2, "KeyguardStateController#notifyKeyguardChanged"

    .line 145
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 147
    new-instance p2, Ljava/util/ArrayList;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 152
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    .line 157
    const/4 v2, 0x4

    .line 159
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 160
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 163
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 166
    if-eqz p1, :cond_9

    .line 169
    const/4 p1, 0x0

    .line 171
    goto :goto_4

    .line 172
    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 173
    :goto_4
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    .line 175
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    .line 177
    new-instance p0, Ljava/util/ArrayList;

    .line 179
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    new-instance p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    .line 184
    invoke-direct {p1, v4}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 186
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 189
    return-void
    .line 192
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 2
    const-string v0, "Callback must not be null. b/128895449"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
    .line 14
.end method

.method public final setKeyguardFadingAway(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    const-wide/16 v0, 0x1000

    .line 6
    const-string v2, "keyguardFadingAway"

    .line 8
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 17
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    const/4 p0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result v0

    .line 26
    if-ge p0, v0, :cond_0

    .line 27
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 33
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;->onKeyguardFadingAwayChanged()V

    .line 35
    add-int/lit8 p0, p0, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    return-void
    .line 41
.end method

.method public update(Z)V
    .locals 8

    .line 1
    const-string v0, "KeyguardStateController#update"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 11
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 23
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 29
    move v5, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v5, v3

    .line 33
    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    .line 34
    move-result v6

    .line 37
    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    .line 38
    move-result v7

    .line 41
    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthEnabledForUser(I)Z

    .line 42
    move-result v0

    .line 45
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 46
    if-ne v1, v4, :cond_1

    .line 48
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 50
    if-ne v5, v4, :cond_1

    .line 52
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrustManaged:Z

    .line 54
    if-ne v6, v4, :cond_1

    .line 56
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    .line 58
    if-ne v4, v7, :cond_1

    .line 60
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceAuthEnabled:Z

    .line 62
    if-eq v4, v0, :cond_2

    .line 64
    :cond_1
    move v2, v3

    .line 66
    :cond_2
    if-nez v2, :cond_3

    .line 67
    if-eqz p1, :cond_4

    .line 69
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 71
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 73
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrusted:Z

    .line 75
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mTrustManaged:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceAuthEnabled:Z

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 81
    invoke-virtual {p1, v1, v5, v7, v6}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logKeyguardStateUpdate(ZZZZ)V

    .line 83
    const-string p1, "KeyguardStateController#notifyUnlockedChanged"

    .line 86
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 93
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    new-instance p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    .line 98
    const/4 v0, 0x5

    .line 100
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 101
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 104
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 107
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 110
    return-void
    .line 113
.end method
