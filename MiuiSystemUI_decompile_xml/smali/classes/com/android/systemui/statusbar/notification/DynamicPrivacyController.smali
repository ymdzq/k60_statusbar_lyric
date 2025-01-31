.class public final Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public mCacheInvalid:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLastDynamicUnlocked:Z

.field public final mListeners:Landroid/util/ArraySet;

.field public final mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    .line 10
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 12
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    .line 21
    move-result p1

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public isDynamicPrivacyEnabled()Z
    .locals 0

    .line 1
    const-class p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 2
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/interfaces/keyguard/IMiuiFaceUnlockManager;

    .line 8
    check-cast p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;

    .line 10
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockManager;->isShowMessageWhenFaceUnlockSuccess()Z

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public final isDynamicallyUnlocked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 5
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 7
    if-nez v1, :cond_0

    .line 9
    move-object v1, v0

    .line 11
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 12
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 14
    if-nez v1, :cond_0

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 18
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 20
    if-eqz v0, :cond_1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
    .line 33
.end method

.method public final isInLockedDownShade()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_3

    .line 9
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 16
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    return v2

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_3
    :goto_0
    return v2
    .line 43
.end method

.method public final onKeyguardFadingAwayChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->onUnlockedChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public final onUnlockedChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicPrivacyEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    .line 8
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    .line 12
    if-ne v0, v1, :cond_0

    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    .line 16
    if-eqz v1, :cond_1

    .line 18
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mLastDynamicUnlocked:Z

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    .line 22
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;

    .line 38
    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;->onDynamicPrivacyChanged()V

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mCacheInvalid:Z

    .line 49
    :goto_1
    return-void
    .line 51
.end method
