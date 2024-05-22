.class public final Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/notification/collection/render/NodeController;


# instance fields
.field public final builder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

.field public manuallyDismissed:Z

.field public final nodeLabel:Ljava/lang/String;

.field public final notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->builder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

    .line 13
    new-instance p2, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController$1;

    .line 15
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController$1;-><init>(Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;)V

    .line 17
    check-cast p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 20
    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 22
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 27
    const-string p1, "ZenModeView"

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->nodeLabel:Ljava/lang/String;

    .line 32
    return-void
    .line 34
.end method


# virtual methods
.method public final addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "Not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "Not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final getChildCount()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getNodeLabel()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->nodeLabel:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 2
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "Not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final offerToKeepInParentForAnimation()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onViewAdded()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewMoved()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewRemoved()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onZenChanged(I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->manuallyDismissed:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->updateVisibility()V

    .line 5
    return-void
    .line 8
.end method

.method public final removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    const-string p1, "Not supported"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method public final removeFromParentIfKeptForAnimation()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final resetKeepInParentForAnimation()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateVisibility()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 4
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 6
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    const/4 v3, 0x2

    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move v0, v1

    .line 18
    :goto_1
    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 21
    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 23
    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 25
    if-eqz v0, :cond_2

    .line 27
    move v0, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v0, v2

    .line 31
    :goto_2
    if-eqz v0, :cond_3

    .line 32
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->manuallyDismissed:Z

    .line 34
    if-nez v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 46
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 48
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 50
    if-eqz v0, :cond_3

    .line 52
    move v0, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move v0, v2

    .line 56
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 57
    const/16 v4, 0x8

    .line 59
    if-eqz v3, :cond_4

    .line 61
    iget v3, v3, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mVisibility:I

    .line 63
    goto :goto_4

    .line 65
    :cond_4
    move v3, v4

    .line 66
    :goto_4
    if-eqz v0, :cond_5

    .line 67
    move v0, v2

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    move v0, v4

    .line 71
    :goto_5
    if-ne v3, v0, :cond_8

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 74
    if-eqz v3, :cond_6

    .line 76
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->getContentView()Landroid/view/View;

    .line 78
    move-result-object v3

    .line 81
    goto :goto_6

    .line 82
    :cond_6
    const/4 v3, 0x0

    .line 83
    :goto_6
    if-eqz v3, :cond_8

    .line 84
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 86
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 91
    move-result v3

    .line 94
    if-nez v3, :cond_7

    .line 95
    goto :goto_7

    .line 97
    :cond_7
    move v1, v2

    .line 98
    :goto_7
    if-eqz v1, :cond_f

    .line 99
    :cond_8
    if-nez v0, :cond_b

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 103
    if-eqz v1, :cond_9

    .line 105
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->doAfterAnim(I)V

    .line 107
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 110
    if-eqz v1, :cond_a

    .line 112
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->resetTranslation()V

    .line 114
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 117
    if-eqz v1, :cond_d

    .line 119
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->resetContentText()V

    .line 121
    goto :goto_8

    .line 124
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 125
    if-nez v1, :cond_c

    .line 127
    goto :goto_8

    .line 129
    :cond_c
    iput v0, v1, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->mVisibility:I

    .line 130
    :cond_d
    :goto_8
    if-ne v0, v4, :cond_e

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 134
    if-eqz p0, :cond_f

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;->doAfterAnim(I)V

    .line 138
    goto :goto_9

    .line 141
    :cond_e
    if-nez v0, :cond_f

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/zen/ZenModeViewController;->mZenModeView:Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 144
    if-eqz p0, :cond_f

    .line 146
    const/high16 v0, 0x3f800000    # 1.0f

    .line 148
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 153
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTransitionAlpha(F)V

    .line 156
    :cond_f
    :goto_9
    return-void
    .line 159
.end method
