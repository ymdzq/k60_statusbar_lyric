.class public Lcom/android/systemui/qs/MiuiNotificationShadeHeader;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$ShowingUnimportantChangeListener;


# instance fields
.field public final foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

.field public mFoldHeaderFolme:Lmiuix/animation/IFolme;

.field public mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

.field public final mFoldHeight:F

.field public mHeaderFolme:Lmiuix/animation/IFolme;

.field public mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

.field public mItemConfig:Lmiuix/animation/base/AnimConfig;

.field public mNormalHeight:F

.field public mOrientation:I

.field public mQsContainerImpl:Lcom/android/systemui/qs/MiuiQSContainer;

.field public mUseControlPanel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mOrientation:I

    .line 6
    const-class p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 8
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 14
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    const p2, 0x7f070359    # @dimen/fold_miui_header_height '100.0dp'

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result p1

    .line 28
    int-to-float p1, p1

    .line 29
    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeight:F

    .line 30
    return-void
    .line 32
.end method


# virtual methods
.method public final getAnimState(IZ)Lmiuix/animation/controller/AnimState;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-nez p2, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 13
    if-ne p0, v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    if-ne p1, v0, :cond_1

    .line 18
    const/high16 p0, -0x3cea0000    # -150.0f

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    const/high16 p0, 0x43160000    # 150.0f

    .line 23
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 26
    :goto_1
    if-ne p1, v0, :cond_4

    .line 27
    if-eqz p2, :cond_3

    .line 29
    const-string p1, "header_visible"

    .line 31
    goto :goto_2

    .line 33
    :cond_3
    const-string p1, "header_invisible"

    .line 34
    goto :goto_2

    .line 36
    :cond_4
    if-eqz p2, :cond_5

    .line 37
    const-string p1, "fold_visible"

    .line 39
    goto :goto_2

    .line 41
    :cond_5
    const-string p1, "fold_invisible"

    .line 42
    :goto_2
    new-instance p2, Lmiuix/animation/controller/AnimState;

    .line 44
    invoke-direct {p2, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 46
    sget-object p1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 49
    float-to-double v0, p0

    .line 51
    invoke-virtual {p2, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 52
    move-result-object p0

    .line 55
    return-object p0
    .line 56
.end method

.method public getFoldHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeight:F

    .line 2
    return p0
    .line 4
.end method

.method public getNormalHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mNormalHeight:F

    .line 2
    return p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 15
    const-class v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 24
    invoke-virtual {v1, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V

    .line 26
    const-class v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 29
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 35
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->addListener(Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager$ShowingUnimportantChangeListener;)V

    .line 37
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 44
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mUseControlPanel:Z

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->updateHeaderView()V

    .line 50
    return-void
    .line 53
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 9
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 13
    iget v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mOrientation:I

    .line 15
    if-eq p1, v0, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 23
    move-result-object p1

    .line 26
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 27
    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mOrientation:I

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->updateFoldHeaderMargin()V

    .line 31
    new-instance p1, Lcom/android/systemui/qs/MiuiNotificationShadeHeader$$ExternalSyntheticLambda0;

    .line 34
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiNotificationShadeHeader;)V

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 39
    :cond_0
    return-void
    .line 42
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 15
    const-class v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 18
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->shouldSuppressFold()Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->listeners:Ljava/util/List;

    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    :goto_0
    const-class v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 43
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->removeCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 54
    if-eqz v0, :cond_1

    .line 56
    filled-new-array {v0}, [Lcom/android/systemui/qs/MiuiHeaderView;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 65
    if-eqz p0, :cond_2

    .line 67
    filled-new-array {p0}, [Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 69
    move-result-object p0

    .line 72
    invoke-static {p0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 73
    :cond_2
    return-void
    .line 76
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 5
    return-void
    .line 8
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mQsContainerImpl:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    sub-int/2addr p5, p3

    .line 6
    sub-int/2addr p9, p7

    .line 7
    if-eq p5, p9, :cond_0

    .line 8
    sget-object p1, Lcom/android/systemui/qs/MiuiQSContainer;->BACKGROUND_BOTTOM:Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;

    .line 10
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSContainer;->updateResources(Z)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final onMaxBoundsChanged(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->updateFoldHeaderMargin()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onShowingUnimportantChanged(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p1, :cond_2

    .line 5
    iget p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mOrientation:I

    .line 7
    if-ne p1, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->showHeaderWithoutAnim(Z)V

    .line 11
    goto/16 :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderFolme:Lmiuix/animation/IFolme;

    .line 16
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 18
    move-result-object p1

    .line 21
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 22
    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    .line 24
    move-result-object v3

    .line 27
    invoke-interface {p1, v3}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 28
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderFolme:Lmiuix/animation/IFolme;

    .line 31
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getAnimState(IZ)Lmiuix/animation/controller/AnimState;

    .line 37
    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 41
    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    .line 43
    move-result-object v3

    .line 46
    invoke-interface {p1, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 47
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderFolme:Lmiuix/animation/IFolme;

    .line 55
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 57
    move-result-object p1

    .line 60
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 61
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 63
    move-result-object v1

    .line 66
    invoke-interface {p1, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 67
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTranslationY()F

    .line 72
    move-result p1

    .line 75
    const/4 v1, 0x0

    .line 76
    cmpl-float p1, p1, v1

    .line 77
    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderFolme:Lmiuix/animation/IFolme;

    .line 81
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 83
    move-result-object p1

    .line 86
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getAnimState(IZ)Lmiuix/animation/controller/AnimState;

    .line 87
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 91
    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    .line 93
    move-result-object v2

    .line 96
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderFolme:Lmiuix/animation/IFolme;

    .line 100
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 102
    move-result-object p1

    .line 105
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getAnimState(IZ)Lmiuix/animation/controller/AnimState;

    .line 106
    move-result-object v0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 110
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 112
    move-result-object p0

    .line 115
    invoke-interface {p1, v0, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 116
    goto :goto_0

    .line 119
    :cond_2
    iget p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mOrientation:I

    .line 120
    if-ne p1, v1, :cond_3

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->showHeaderWithoutAnim(Z)V

    .line 124
    goto :goto_0

    .line 127
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderFolme:Lmiuix/animation/IFolme;

    .line 128
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 130
    move-result-object p1

    .line 133
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 134
    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    .line 136
    move-result-object v3

    .line 139
    invoke-interface {p1, v3}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 140
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderFolme:Lmiuix/animation/IFolme;

    .line 143
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 145
    move-result-object p1

    .line 148
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getAnimState(IZ)Lmiuix/animation/controller/AnimState;

    .line 149
    move-result-object v1

    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 153
    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    .line 155
    move-result-object v3

    .line 158
    invoke-interface {p1, v1, v3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 159
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderFolme:Lmiuix/animation/IFolme;

    .line 162
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 164
    move-result-object p1

    .line 167
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 168
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 170
    move-result-object v1

    .line 173
    invoke-interface {p1, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 174
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderFolme:Lmiuix/animation/IFolme;

    .line 177
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 179
    move-result-object p1

    .line 182
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getAnimState(IZ)Lmiuix/animation/controller/AnimState;

    .line 183
    move-result-object v0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 187
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 189
    move-result-object p0

    .line 192
    invoke-interface {p1, v0, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 193
    :goto_0
    return-void
    .line 196
.end method

.method public final onUseControlCenterChange(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mUseControlPanel:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mUseControlPanel:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->updateHeaderView()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setNormalHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mNormalHeight:F

    .line 2
    return-void
    .line 4
.end method

.method public setQSContainer(Lcom/android/systemui/qs/MiuiQSContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mQsContainerImpl:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    return-void
    .line 4
.end method

.method public final showHeaderWithoutAnim(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderFolme:Lmiuix/animation/IFolme;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 6
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 10
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 13
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderFolme:Lmiuix/animation/IFolme;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 24
    move-result-object v1

    .line 27
    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 28
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 31
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 43
    :goto_0
    if-nez v0, :cond_3

    .line 45
    goto :goto_1

    .line 47
    :cond_3
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    const/high16 v1, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 57
    :goto_1
    if-eqz p1, :cond_4

    .line 60
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 62
    goto :goto_2

    .line 64
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 65
    :goto_2
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_5

    .line 68
    goto :goto_3

    .line 70
    :cond_5
    const/16 v1, 0x8

    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 76
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 79
    if-eqz p1, :cond_6

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 83
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 86
    if-eqz p0, :cond_7

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 90
    :cond_7
    return-void
    .line 93
.end method

.method public final updateFoldHeaderMargin()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f07035a    # @dimen/fold_miui_header_margin '30.56dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    return-void
    .line 32
.end method

.method public final updateHeaderView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->setNormalHeight(F)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    filled-new-array {v1}, [Lcom/android/systemui/qs/MiuiHeaderView;

    .line 13
    move-result-object v1

    .line 16
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 20
    if-eqz v1, :cond_1

    .line 22
    filled-new-array {v1}, [Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 24
    move-result-object v1

    .line 27
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 28
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mUseControlPanel:Z

    .line 31
    const/4 v2, 0x0

    .line 33
    if-eqz v1, :cond_2

    .line 34
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 38
    move-result-object v1

    .line 41
    const v3, 0x7f0d01ca    # @layout/miui_ns_notification_header_view 'res/layout/miui_ns_notification_header_view.xml'

    .line 42
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/systemui/qs/MiuiHeaderView;

    .line 49
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 56
    move-result-object v1

    .line 59
    const v3, 0x7f0d01cb    # @layout/miui_ns_qs_header_view 'res/layout/miui_ns_qs_header_view.xml'

    .line 60
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/systemui/qs/MiuiHeaderView;

    .line 67
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 69
    :goto_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 73
    move-result-object v1

    .line 76
    const v3, 0x7f0d03da    # @layout/unimportant_panel_header 'res/layout/unimportant_panel_header.xml'

    .line 77
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 80
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 84
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 86
    const/4 v2, 0x4

    .line 88
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 92
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 97
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 99
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 102
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 104
    const/4 v2, 0x2

    .line 107
    new-array v3, v2, [F

    .line 108
    fill-array-data v3, :array_0

    .line 110
    const/4 v4, -0x2

    .line 113
    invoke-virtual {v1, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 114
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 117
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 119
    new-array v2, v2, [F

    .line 122
    fill-array-data v2, :array_1

    .line 124
    invoke-virtual {v1, v4, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 127
    move-result-object v1

    .line 130
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 133
    filled-new-array {v1}, [Landroid/view/View;

    .line 135
    move-result-object v1

    .line 138
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 139
    move-result-object v1

    .line 142
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderFolme:Lmiuix/animation/IFolme;

    .line 143
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 145
    filled-new-array {v1}, [Landroid/view/View;

    .line 147
    move-result-object v1

    .line 150
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 151
    move-result-object v1

    .line 154
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderFolme:Lmiuix/animation/IFolme;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mHeaderView:Lcom/android/systemui/qs/MiuiHeaderView;

    .line 157
    if-eqz v1, :cond_3

    .line 159
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->mFoldHeaderView:Lcom/android/systemui/statusbar/notification/unimportant/FoldPanelHeader;

    .line 164
    if-eqz v1, :cond_4

    .line 166
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 168
    :cond_4
    new-instance v0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader$$ExternalSyntheticLambda0;

    .line 171
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiNotificationShadeHeader;)V

    .line 173
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void

    .line 179
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data

    .line 180
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data
.end method
