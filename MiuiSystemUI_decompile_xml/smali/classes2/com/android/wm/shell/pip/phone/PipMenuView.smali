.class public Lcom/android/wm/shell/pip/phone/PipMenuView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mActions:Ljava/util/List;

.field public final mActionsGroup:Landroid/widget/LinearLayout;

.field public mAllowMenuTimeout:Z

.field public mAllowTouches:Z

.field public final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public final mBetweenActionPaddingLand:I

.field public mCloseAction:Landroid/app/RemoteAction;

.field public final mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public mDidLastShowMenuResize:Z

.field public final mDismissButton:Landroid/view/View;

.field public final mDismissFadeOutDurationMs:I

.field public final mEnterSplitButton:Landroid/view/View;

.field public mFocusedTaskAllowSplitScreen:Z

.field public final mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMenuBgUpdateListener:Lcom/android/wm/shell/pip/phone/PipMenuView$1;

.field public final mMenuContainer:Landroid/view/View;

.field public mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field public mMenuState:I

.field public final mPipForceCloseDelay:I

.field public final mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

.field public final mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field public final mSettingsButton:Landroid/view/View;

.field public final mSoScSplitScreenControllerOptional:Ljava/util/Optional;

.field public final mSplitScreenControllerOptional:Ljava/util/Optional;

.field public final mTopEndContainer:Landroid/view/View;

.field public final mViewRoot:Landroid/view/View;


# direct methods
.method public static $r8$lambda$220dq74pfm5LXMiMOAlPmvOVcoI(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/miui/analytics/MiuiPIPTrackStub;->getInstance()Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 11
    move-result-object p1

    .line 14
    const-string v2, "action_click_function"

    .line 15
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/miui/analytics/MiuiPIPTrackStub;->trackEvent(Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/CharSequence;)V

    .line 18
    iget p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 25
    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda2;

    .line 29
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 38
    sget-object p1, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 42
    :cond_0
    return-void
    .line 45
.end method

.method public static $r8$lambda$61Zm6ZTuSMPEly2Mxu4fU-qPcDU(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    cmpl-float v0, v0, v1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lcom/miui/analytics/MiuiPIPTrackStub;->getInstance()Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 14
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 20
    move-result-object p1

    .line 23
    const-string v2, "action_click_function"

    .line 24
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/miui/analytics/MiuiPIPTrackStub;->trackEvent(Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    .line 32
    move-result-object p1

    .line 35
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    .line 40
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    check-cast v1, Landroid/content/ComponentName;

    .line 44
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 49
    const-string v2, "package"

    .line 50
    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    move-result-object v1

    .line 55
    const-string v2, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    .line 56
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    const v1, 0x10008000

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 67
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 69
    check-cast p1, Ljava/lang/Integer;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result p1

    .line 76
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 77
    move-result-object p1

    .line 80
    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 84
    sget-object p1, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_SHOW_SETTINGS:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 88
    :cond_0
    return-void
    .line 91
.end method

.method public static $r8$lambda$8-gBDONmzUzA8ecLAbe-wb0uOes(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/miui/analytics/MiuiPIPTrackStub;->getInstance()Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 19
    move-result-object p1

    .line 22
    const-string v2, "action_click_function"

    .line 23
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/miui/analytics/MiuiPIPTrackStub;->trackEvent(Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;

    .line 34
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;I)V

    .line 37
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;ZZI)V

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 44
    sget-object p1, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_EXPAND_TO_FULLSCREEN:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 48
    :cond_0
    return-void
    .line 51
.end method

.method public static $r8$lambda$nPYmF7BsfbyiISNUsPSYkvQ1jgs(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/miui/analytics/MiuiPIPTrackStub;->getInstance()Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 19
    move-result-object p1

    .line 22
    const-string v2, "action_click_function"

    .line 23
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/miui/analytics/MiuiPIPTrackStub;->trackEvent(Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;

    .line 34
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/pip/phone/PhonePipMenuController;I)V

    .line 37
    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;ZZI)V

    .line 41
    :cond_0
    return-void
    .line 44
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/pip/PipUiEventLogger;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 17
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    .line 19
    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    .line 21
    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    .line 24
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 26
    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    .line 28
    iput-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 31
    iput-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 35
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 37
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    .line 39
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSplitScreenControllerOptional:Ljava/util/Optional;

    .line 41
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSoScSplitScreenControllerOptional:Ljava/util/Optional;

    .line 43
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 45
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    move-result-object p2

    .line 52
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 53
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 55
    const p2, 0x7f0d02c7    # @layout/pip_menu 'res/layout/pip_menu.xml'

    .line 57
    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    move-result-object p2

    .line 66
    const p3, 0x7f0b0045    # @integer/config_pipForceCloseDelay '1000'

    .line 67
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 70
    move-result p2

    .line 73
    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipForceCloseDelay:I

    .line 74
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 76
    const p3, 0x7f0816f5    # @drawable/pip_menu_background 'res/drawable/pip_menu_background.xml'

    .line 78
    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 81
    move-result-object p2

    .line 84
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 87
    const p3, 0x7f0a0100    # @id/background

    .line 90
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object p3

    .line 96
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mViewRoot:Landroid/view/View;

    .line 97
    invoke-virtual {p3, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const p2, 0x7f0a05ac    # @id/menu_container

    .line 102
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p2

    .line 108
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    .line 109
    const/4 p4, 0x0

    .line 111
    invoke-virtual {p2, p4}, Landroid/view/View;->setAlpha(F)V

    .line 112
    const p2, 0x7f0a09b4    # @id/top_end_container

    .line 115
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p2

    .line 121
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mTopEndContainer:Landroid/view/View;

    .line 122
    const p5, 0x7f0a0863    # @id/settings

    .line 124
    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object p5

    .line 130
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    .line 131
    invoke-virtual {p5, p4}, Landroid/view/View;->setAlpha(F)V

    .line 133
    new-instance p6, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;

    .line 136
    invoke-direct {p6, p0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    .line 138
    invoke-virtual {p5, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const p6, 0x7f0a02da    # @id/dismiss

    .line 144
    invoke-virtual {p0, p6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object p6

    .line 150
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    .line 151
    invoke-virtual {p6, p4}, Landroid/view/View;->setAlpha(F)V

    .line 153
    new-instance p7, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;

    .line 156
    invoke-direct {p7, p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    .line 158
    invoke-virtual {p6, p7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const p7, 0x7f0a0344    # @id/expand_button

    .line 164
    invoke-virtual {p0, p7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 167
    move-result-object p7

    .line 170
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;

    .line 171
    const/4 v2, 0x2

    .line 173
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    .line 174
    invoke-virtual {p7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const p7, 0x7f0a0332    # @id/enter_split

    .line 180
    invoke-virtual {p0, p7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object p7

    .line 186
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    .line 187
    invoke-virtual {p7, p4}, Landroid/view/View;->setAlpha(F)V

    .line 189
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;

    .line 192
    const/4 v2, 0x3

    .line 194
    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    .line 195
    invoke-virtual {p7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    const v0, 0x7f0a07a0    # @id/resize_handle

    .line 204
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 207
    move-result-object v1

    .line 210
    invoke-virtual {v1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 211
    const p4, 0x7f0a0094    # @id/actions_group

    .line 214
    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 217
    move-result-object p4

    .line 220
    check-cast p4, Landroid/widget/LinearLayout;

    .line 221
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 225
    move-result-object p4

    .line 228
    const v1, 0x7f070e79    # @dimen/pip_between_action_padding_land '8.0dp'

    .line 229
    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 232
    move-result p4

    .line 235
    iput p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBetweenActionPaddingLand:I

    .line 236
    new-instance p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    .line 238
    invoke-direct {p4}, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;-><init>()V

    .line 240
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipMenuIconsAlgorithm:Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;

    .line 243
    check-cast p3, Landroid/view/ViewGroup;

    .line 245
    check-cast p2, Landroid/view/ViewGroup;

    .line 247
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 249
    move-result-object v0

    .line 252
    iput-object p3, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mViewRoot:Landroid/view/ViewGroup;

    .line 253
    iput-object p2, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mTopEndContainer:Landroid/view/ViewGroup;

    .line 255
    iput-object v0, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDragHandle:Landroid/view/View;

    .line 257
    iput-object p7, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mEnterSplitButton:Landroid/view/View;

    .line 259
    iput-object p5, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mSettingsButton:Landroid/view/View;

    .line 261
    iput-object p6, p4, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDismissButton:Landroid/view/View;

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    move-result-object p1

    .line 268
    const p2, 0x7f0b0044    # @integer/config_pipExitAnimationDuration '250'

    .line 269
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 272
    move-result p1

    .line 275
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissFadeOutDurationMs:I

    .line 276
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipMenuView$2;

    .line 278
    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipMenuView$2;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;)V

    .line 280
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 283
    return-void
    .line 286
.end method


# virtual methods
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/16 v0, 0x7d0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    const/16 v0, 0x7d0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    .line 14
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method

.method public getEstimatedMinMenuSize()Landroid/util/Size;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070e78    # @dimen/pip_action_size '48.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v1

    .line 25
    mul-int/2addr v1, v0

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 30
    const v2, 0x7f070e7f    # @dimen/pip_expand_action_size '60.0dp'

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result v0

    .line 37
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v2

    .line 41
    const v3, 0x7f070e77    # @dimen/pip_action_padding '16.0dp'

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v2

    .line 48
    add-int/2addr v2, v0

    .line 49
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p0

    .line 53
    const v0, 0x7f070e80    # @dimen/pip_expand_container_edge_margin '30.0dp'

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result p0

    .line 60
    add-int/2addr p0, v2

    .line 61
    new-instance v0, Landroid/util/Size;

    .line 62
    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    .line 64
    return-object v0
    .line 67
.end method

.method public final hideMenu(Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;ZZI)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 8
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    const/4 v0, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, p3, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;)V

    .line 19
    :cond_0
    new-instance p3, Landroid/animation/AnimatorSet;

    .line 22
    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 27
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    .line 29
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 31
    const/4 v2, 0x2

    .line 33
    new-array v3, v2, [F

    .line 34
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    .line 36
    move-result v4

    .line 39
    aput v4, v3, v0

    .line 40
    const/4 v4, 0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    aput v5, v3, v4

    .line 44
    invoke-static {p3, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 46
    move-result-object p3

    .line 49
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    .line 50
    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    .line 55
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 57
    new-array v6, v2, [F

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 61
    move-result v7

    .line 64
    aput v7, v6, v0

    .line 65
    aput v5, v6, v4

    .line 67
    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 69
    move-result-object v1

    .line 72
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    .line 73
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 75
    new-array v7, v2, [F

    .line 77
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 79
    move-result v8

    .line 82
    aput v8, v7, v0

    .line 83
    aput v5, v7, v4

    .line 85
    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 87
    move-result-object v3

    .line 90
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    .line 91
    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 93
    new-array v8, v2, [F

    .line 95
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    .line 97
    move-result v9

    .line 100
    aput v9, v8, v0

    .line 101
    aput v5, v8, v4

    .line 103
    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 105
    move-result-object v0

    .line 108
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 109
    filled-new-array {p3, v1, v3, v0}, [Landroid/animation/Animator;

    .line 111
    move-result-object p3

    .line 114
    invoke-virtual {v5, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 115
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 118
    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 120
    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 125
    if-eqz p4, :cond_3

    .line 127
    if-eq p4, v4, :cond_2

    .line 129
    if-ne p4, v2, :cond_1

    .line 131
    iget p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissFadeOutDurationMs:I

    .line 133
    int-to-long v0, p4

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 137
    const-string p1, "Invalid animation type "

    .line 139
    invoke-static {p1, p4}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0

    .line 148
    :cond_2
    const-wide/16 v0, 0x7d

    .line 149
    goto :goto_0

    .line 151
    :cond_3
    const-wide/16 v0, 0x0

    .line 152
    :goto_0
    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 154
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 157
    new-instance p4, Lcom/android/wm/shell/pip/phone/PipMenuView$4;

    .line 159
    invoke-direct {p4, p0, p2, p1}, Lcom/android/wm/shell/pip/phone/PipMenuView$4;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;ZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;)V

    .line 161
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 164
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 167
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 169
    :cond_4
    return-void
    .line 172
.end method

.method public final hideMenu$1()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDidLastShowMenuResize:Z

    .line 3
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2, v0, v1, v0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu(Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda5;ZZI)V

    .line 6
    return-void
    .line 9
.end method

.method public final notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 2
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    .line 4
    if-eq p1, v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v1, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$$ExternalSyntheticLambda0;-><init>(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 15
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaActionListener:Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;

    .line 18
    iget-object p3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMediaController:Lcom/android/wm/shell/pip/PipMediaController;

    .line 20
    const/4 v0, 0x1

    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    iget-object v1, p3, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    .line 36
    move-result-object p3

    .line 39
    invoke-virtual {p2, p3}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;->onMediaActionsChanged(Ljava/util/List;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$1;->onMediaActionsChanged(Ljava/util/List;)V

    .line 51
    iget-object p3, p3, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 59
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 60
    move-result-object p3

    .line 63
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    .line 64
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 66
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/SystemWindows;->getFocusGrantToken(Landroid/view/View;)Landroid/os/IBinder;

    .line 68
    move-result-object p0

    .line 71
    if-eqz p1, :cond_2

    .line 72
    goto :goto_1

    .line 74
    :cond_2
    move v0, p2

    .line 75
    :goto_1
    const/4 p1, 0x0

    .line 76
    invoke-interface {p3, p1, p0, v0}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_2

    .line 80
    :catch_0
    move-exception p0

    .line 81
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 82
    if-eqz p1, :cond_3

    .line 84
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 89
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 90
    const-string p3, "PhonePipMenuController"

    .line 92
    filled-new-array {p3, p0}, [Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 97
    const p3, 0x60380a95

    .line 98
    const-string v0, "%s: Unable to update focus as menu appears/disappears, %s"

    .line 101
    invoke-static {p1, p3, p2, v0, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_3
    :goto_2
    return-void
    .line 106
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x6f

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu$1()V

    .line 6
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final repostDelayedHide(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 5
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 11
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 20
    int-to-long v1, p1

    .line 22
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 23
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 25
    return-void
    .line 28
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final showMenu(ILandroid/graphics/Rect;ZZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p3

    .line 6
    move/from16 v3, p4

    .line 8
    iput-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowMenuTimeout:Z

    .line 10
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDidLastShowMenuResize:Z

    .line 12
    iget-object v4, v0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v4

    .line 19
    const v5, 0x7f050044    # @bool/config_pipEnableEnterSplitButton 'false'

    .line 20
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 23
    move-result v4

    .line 26
    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuState:I

    .line 27
    if-eq v5, v1, :cond_6

    .line 29
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x1

    .line 32
    if-eqz v3, :cond_1

    .line 33
    if-eq v5, v7, :cond_0

    .line 35
    if-ne v1, v7, :cond_1

    .line 37
    :cond_0
    move v5, v7

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v5, v6

    .line 41
    :goto_0
    xor-int/2addr v5, v7

    .line 42
    iput-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 43
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 45
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mHideMenuRunnable:Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 47
    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 49
    invoke-virtual {v5, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 54
    if-eqz v5, :cond_2

    .line 56
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 58
    :cond_2
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 61
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 63
    iput-object v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 66
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    .line 68
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 70
    const/4 v9, 0x2

    .line 72
    new-array v10, v9, [F

    .line 73
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    .line 75
    move-result v11

    .line 78
    aput v11, v10, v6

    .line 79
    const/high16 v11, 0x3f800000    # 1.0f

    .line 81
    aput v11, v10, v7

    .line 83
    invoke-static {v5, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 85
    move-result-object v5

    .line 88
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuBgUpdateListener:Lcom/android/wm/shell/pip/phone/PipMenuView$1;

    .line 89
    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    .line 94
    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 96
    new-array v12, v9, [F

    .line 98
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    .line 100
    move-result v13

    .line 103
    aput v13, v12, v6

    .line 104
    aput v11, v12, v7

    .line 106
    invoke-static {v8, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 108
    move-result-object v8

    .line 111
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    .line 112
    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 114
    new-array v13, v9, [F

    .line 116
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    .line 118
    move-result v14

    .line 121
    aput v14, v13, v6

    .line 122
    aput v11, v13, v7

    .line 124
    invoke-static {v10, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 126
    move-result-object v10

    .line 129
    iget-object v12, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    .line 130
    sget-object v13, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 132
    new-array v14, v9, [F

    .line 134
    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    .line 136
    move-result v15

    .line 139
    aput v15, v14, v6

    .line 140
    if-eqz v4, :cond_3

    .line 142
    iget-boolean v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mFocusedTaskAllowSplitScreen:Z

    .line 144
    if-eqz v4, :cond_3

    .line 146
    goto :goto_1

    .line 148
    :cond_3
    const/4 v11, 0x0

    .line 149
    :goto_1
    aput v11, v14, v7

    .line 150
    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 152
    move-result-object v4

    .line 155
    if-ne v1, v7, :cond_4

    .line 156
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 158
    filled-new-array {v5, v8, v10, v4}, [Landroid/animation/Animator;

    .line 160
    move-result-object v4

    .line 163
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 164
    goto :goto_2

    .line 167
    :cond_4
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 168
    filled-new-array {v4}, [Landroid/animation/Animator;

    .line 170
    move-result-object v4

    .line 173
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 174
    :goto_2
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 177
    sget-object v5, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 179
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 184
    const-wide/16 v7, 0x7d

    .line 186
    invoke-virtual {v4, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 188
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 191
    new-instance v5, Lcom/android/wm/shell/pip/phone/PipMenuView$3;

    .line 193
    invoke-direct {v5, v0, v1, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView$3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;IZ)V

    .line 195
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    if-eqz p5, :cond_5

    .line 201
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 203
    invoke-direct {v2, v0, v9}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    .line 205
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;)V

    .line 208
    goto :goto_3

    .line 211
    :cond_5
    const/4 v2, 0x0

    .line 212
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->notifyMenuStateChangeStart(IZLcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;)V

    .line 213
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 219
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 221
    :goto_3
    invoke-virtual/range {p0 .. p2}, Lcom/android/wm/shell/pip/phone/PipMenuView;->updateActionViews(ILandroid/graphics/Rect;)V

    .line 224
    goto :goto_4

    .line 227
    :cond_6
    if-eqz v2, :cond_7

    .line 228
    const/16 v1, 0x7d0

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->repostDelayedHide(I)V

    .line 232
    :cond_7
    :goto_4
    return-void
    .line 235
.end method

.method public final updateActionViews(ILandroid/graphics/Rect;)V
    .locals 13

    .line 1
    const v0, 0x7f0a0345    # @id/expand_container

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    const v1, 0x7f0a0092    # @id/actions_container

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/view/ViewGroup;

    .line 18
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v2}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda0;-><init>()V

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    const/4 v2, 0x4

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-ne p1, v4, :cond_0

    .line 31
    move v5, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v5, v2

    .line 35
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 36
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v5

    .line 42
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 45
    check-cast v6, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    move-result v6

    .line 52
    if-nez v6, :cond_e

    .line 53
    if-nez p1, :cond_1

    .line 55
    goto/16 :goto_b

    .line 57
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 62
    if-eqz p1, :cond_d

    .line 64
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 68
    move-result-object p1

    .line 71
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 72
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 74
    move-result v1

    .line 77
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 78
    check-cast v6, Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result v6

    .line 85
    if-ge v1, v6, :cond_2

    .line 86
    const v1, 0x7f0d02c8    # @layout/pip_menu_action 'res/layout/pip_menu_action.xml'

    .line 88
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 91
    invoke-virtual {p1, v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    move-result-object v1

    .line 96
    check-cast v1, Lcom/android/wm/shell/pip/phone/PipMenuActionView;

    .line 97
    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 99
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    goto :goto_1

    .line 104
    :cond_2
    move p1, v3

    .line 105
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 106
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 108
    move-result v1

    .line 111
    const/16 v6, 0x8

    .line 112
    if-ge p1, v1, :cond_4

    .line 114
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 116
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 118
    move-result-object v1

    .line 121
    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 122
    check-cast v7, Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result v7

    .line 129
    if-ge p1, v7, :cond_3

    .line 130
    move v6, v3

    .line 132
    :cond_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 133
    add-int/lit8 p1, p1, 0x1

    .line 136
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 139
    move-result p1

    .line 142
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 143
    move-result p2

    .line 146
    if-le p1, p2, :cond_5

    .line 147
    move p1, v4

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    move p1, v3

    .line 151
    :goto_3
    move p2, v3

    .line 152
    :goto_4
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 153
    check-cast v1, Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 157
    move-result v1

    .line 160
    if-ge p2, v1, :cond_d

    .line 161
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActions:Ljava/util/List;

    .line 163
    check-cast v1, Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 170
    check-cast v1, Landroid/app/RemoteAction;

    .line 171
    iget-object v7, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 173
    invoke-virtual {v7, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 175
    move-result-object v7

    .line 178
    check-cast v7, Lcom/android/wm/shell/pip/phone/PipMenuActionView;

    .line 179
    iget-object v8, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mCloseAction:Landroid/app/RemoteAction;

    .line 181
    if-eqz v8, :cond_6

    .line 183
    invoke-virtual {v8}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 185
    move-result-object v8

    .line 188
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 189
    move-result-object v9

    .line 192
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    move-result v8

    .line 196
    if-eqz v8, :cond_6

    .line 197
    move v8, v4

    .line 199
    goto :goto_5

    .line 200
    :cond_6
    move v8, v3

    .line 201
    :goto_5
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 202
    move-result-object v9

    .line 205
    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getType()I

    .line 206
    move-result v9

    .line 209
    if-eq v9, v2, :cond_8

    .line 210
    const/4 v10, 0x6

    .line 212
    if-ne v9, v10, :cond_7

    .line 213
    goto :goto_6

    .line 215
    :cond_7
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 216
    move-result-object v9

    .line 219
    iget-object v10, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 220
    new-instance v11, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;

    .line 222
    invoke-direct {v11, v7}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuActionView;)V

    .line 224
    iget-object v12, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainHandler:Landroid/os/Handler;

    .line 227
    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 229
    goto :goto_7

    .line 232
    :cond_8
    :goto_6
    const/4 v9, 0x0

    .line 233
    invoke-virtual {v7, v9}, Lcom/android/wm/shell/pip/phone/PipMenuActionView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :goto_7
    if-eqz v8, :cond_9

    .line 237
    move v9, v3

    .line 239
    goto :goto_8

    .line 240
    :cond_9
    move v9, v6

    .line 241
    :goto_8
    invoke-virtual {v7, v9}, Lcom/android/wm/shell/pip/phone/PipMenuActionView;->setCustomCloseBackgroundVisibility(I)V

    .line 242
    invoke-virtual {v1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 245
    move-result-object v9

    .line 248
    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 252
    move-result v9

    .line 255
    if-eqz v9, :cond_a

    .line 256
    new-instance v9, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;

    .line 258
    invoke-direct {v9, p0, v1, v8}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/app/RemoteAction;Z)V

    .line 260
    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_a
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 266
    move-result v8

    .line 269
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 270
    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 273
    move-result v1

    .line 276
    if-eqz v1, :cond_b

    .line 277
    const/high16 v1, 0x3f800000    # 1.0f

    .line 279
    goto :goto_9

    .line 281
    :cond_b
    const v1, 0x3f0a3d71    # 0.54f

    .line 282
    :goto_9
    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 285
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 288
    move-result-object v1

    .line 291
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 292
    if-eqz p1, :cond_c

    .line 294
    if-lez p2, :cond_c

    .line 296
    iget v7, p0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mBetweenActionPaddingLand:I

    .line 298
    goto :goto_a

    .line 300
    :cond_c
    move v7, v3

    .line 301
    :goto_a
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 302
    add-int/lit8 p2, p2, 0x1

    .line 304
    goto/16 :goto_4

    .line 306
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 308
    move-result-object p1

    .line 311
    const p2, 0x7f070e77    # @dimen/pip_action_padding '16.0dp'

    .line 312
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 315
    move-result p1

    .line 318
    iput p1, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 319
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 321
    move-result-object p0

    .line 324
    const p1, 0x7f070e80    # @dimen/pip_expand_container_edge_margin '30.0dp'

    .line 325
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 328
    move-result p0

    .line 331
    iput p0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 332
    goto :goto_c

    .line 334
    :cond_e
    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 335
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 338
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 340
    :goto_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 342
    return-void
    .line 345
.end method
