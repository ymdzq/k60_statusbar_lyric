.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 7
    move-result v0

    .line 10
    iget v1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    if-eqz v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_7

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 33
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    .line 35
    if-eqz v3, :cond_7

    .line 37
    const/4 v3, 0x0

    .line 39
    move v4, v3

    .line 40
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 41
    iget-object v6, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLastSimStates:Landroid/util/SparseIntArray;

    .line 43
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 45
    move-result v7

    .line 48
    const/4 v8, 0x2

    .line 49
    if-ge v4, v7, :cond_3

    .line 50
    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 52
    move-result v7

    .line 55
    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 56
    move-result v6

    .line 59
    sget v7, Lcom/android/keyguard/KeyguardUpdateMonitor;->BIOMETRIC_HELP_FINGERPRINT_NOT_RECOGNIZED:I

    .line 60
    const/4 v7, 0x1

    .line 62
    if-eq v6, v8, :cond_1

    .line 63
    const/4 v9, 0x3

    .line 65
    if-eq v6, v9, :cond_1

    .line 66
    const/4 v9, 0x7

    .line 68
    if-ne v6, v9, :cond_0

    .line 69
    goto :goto_1

    .line 71
    :cond_0
    move v6, v3

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    :goto_1
    move v6, v7

    .line 74
    :goto_2
    if-eqz v6, :cond_2

    .line 75
    move v3, v7

    .line 77
    goto :goto_3

    .line 78
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 79
    goto :goto_0

    .line 81
    :cond_3
    :goto_3
    if-nez v3, :cond_7

    .line 82
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 84
    iget-boolean v3, v3, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 86
    iget-boolean p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    .line 88
    if-eqz v3, :cond_4

    .line 90
    if-nez p1, :cond_7

    .line 92
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 94
    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 96
    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 98
    if-ne v3, v8, :cond_5

    .line 100
    goto :goto_4

    .line 102
    :cond_5
    if-nez p1, :cond_6

    .line 103
    iget-object v3, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 105
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 107
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFlingingToDismissKeyguard:Z

    .line 109
    if-nez v3, :cond_6

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    goto :goto_4

    .line 118
    :cond_6
    sub-float v3, v2, v1

    .line 119
    iput v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissAmount:F

    .line 121
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mDismissingFromTouch:Z

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    .line 125
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 127
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    .line 132
    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 134
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 137
    :cond_7
    :goto_4
    const/4 p1, 0x0

    .line 140
    cmpl-float p1, v1, p1

    .line 141
    if-eqz p1, :cond_8

    .line 143
    cmpl-float p1, v1, v2

    .line 145
    if-nez p1, :cond_a

    .line 147
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 149
    move-result-object p1

    .line 152
    if-eqz p1, :cond_9

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 155
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    .line 159
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 162
    if-eqz p0, :cond_a

    .line 164
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateSystemUiStateFlags()V

    .line 168
    :cond_a
    return-void
    .line 171
.end method
