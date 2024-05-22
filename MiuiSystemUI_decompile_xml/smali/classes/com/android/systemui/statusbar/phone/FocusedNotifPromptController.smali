.class public final Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;
.implements Lcom/miui/systemui/controller/ForceBlackObserver$Callback;


# instance fields
.field public volatile mBackToHome:Z

.field public final mCallbacks:Ljava/util/List;

.field public mContent:Landroid/widget/FrameLayout;

.field public mContentFolme:Lmiuix/animation/IFolme;

.field public final mContext:Landroid/content/Context;

.field public mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

.field public mCurrentUserId:I

.field public volatile mDisableIconAnim:Z

.field public mForceBlack:Z

.field public mIcon:Landroid/widget/ImageView;

.field public mIconFolme:Lmiuix/animation/IFolme;

.field public mIsAnimating:Z

.field public mIsFocusedNotifPromptShowing:Z

.field public mIsHeadsUpShowing:Z

.field public mLastRect:Landroid/graphics/Rect;

.field public final mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

.field public mMiuiOptimization:Z

.field public volatile mNeedAnimate:Z

.field public final mNotifMap:Ljava/util/HashMap;

.field public final mNotifPackageNames:Ljava/util/List;

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field public mRequestHide:Z

.field public volatile mShouldShow:Z

.field public mTopActivityPackageName:Ljava/lang/String;

.field public final mUserCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/miui/systemui/SettingsManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/settings/UserTracker;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsAnimating:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mDisableIconAnim:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNeedAnimate:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mBackToHome:Z

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mLastRect:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCallbacks:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifPackageNames:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    .line 39
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifMap:Ljava/util/HashMap;

    .line 44
    new-instance v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$1;

    .line 46
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$1;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V

    .line 48
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mUserCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContext:Landroid/content/Context;

    .line 53
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 55
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 59
    move-result-object v2

    .line 62
    check-cast p7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 63
    invoke-virtual {p7, v1, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 65
    invoke-virtual {p7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 68
    move-result p7

    .line 71
    iput p7, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentUserId:I

    .line 72
    new-instance p7, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 76
    move-result-object v1

    .line 79
    invoke-direct {p7, p0, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;Landroid/os/Looper;)V

    .line 80
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object p7

    .line 91
    const v1, 0x7f030058    # @array/config_focused_notif_package_names_for_test

    .line 92
    invoke-virtual {p7, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 95
    move-result-object p7

    .line 98
    invoke-static {p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 99
    move-result-object p7

    .line 102
    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object p1

    .line 109
    const p7, 0x7f030057    # @array/config_focused_notif_package_names

    .line 110
    invoke-virtual {p1, p7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 116
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 117
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    const-string p7, "initPackageNames: mNotifPackageNames="

    .line 126
    invoke-direct {p1, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 137
    const-string p7, "FocusedNotifPromptContr"

    .line 138
    invoke-static {p7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;

    .line 143
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$3;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V

    .line 145
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;->mStatusBarFocusNotifListener:Ljava/util/List;

    .line 148
    check-cast p2, Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$4;

    .line 155
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$4;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V

    .line 157
    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 160
    const-class p1, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 163
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    move-result-object p1

    .line 168
    check-cast p1, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 169
    iget-object p2, p1, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 171
    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 175
    move-result-object p2

    .line 178
    goto :goto_0

    .line 179
    :cond_0
    const-string p2, ""

    .line 180
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 182
    new-instance p2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$5;

    .line 184
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$5;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V

    .line 186
    invoke-virtual {p1, p2}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->addTopActivityMayChangeListener(Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;)V

    .line 189
    invoke-virtual {p4, p0}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    .line 192
    iget-boolean p1, p4, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 195
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMiuiOptimization:Z

    .line 197
    check-cast p5, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 199
    invoke-virtual {p5, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 201
    new-instance p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$6;

    .line 204
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$6;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V

    .line 206
    invoke-virtual {p6, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 209
    const-class p1, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 212
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    move-result-object p2

    .line 217
    check-cast p2, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 218
    invoke-virtual {p2, p0}, Lcom/miui/systemui/controller/ForceBlackObserver;->addCallback(Lcom/miui/systemui/controller/ForceBlackObserver$Callback;)V

    .line 220
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 223
    move-result-object p1

    .line 226
    check-cast p1, Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 227
    iget-boolean p1, p1, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlack:Z

    .line 229
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mForceBlack:Z

    .line 231
    return-void
    .line 233
.end method

.method public static getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;
    .locals 4

    .line 1
    const-string v0, "focusedNotifInState"

    .line 2
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/high16 v0, -0x3e380000    # -25.0f

    .line 12
    :goto_0
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 14
    invoke-direct {v1, p0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 16
    sget-object p0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    .line 19
    float-to-double v2, v0

    .line 21
    invoke-virtual {v1, p0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public static hideImmediately(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public static needAnim(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    return v1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static showImmediately(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 13
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method


# virtual methods
.method public final animateHide(Lmiuix/animation/IFolme;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 8
    move-result v0

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    const/4 v5, 0x1

    .line 14
    const v6, 0x3e19999a    # 0.15f

    .line 15
    move-object v1, p0

    .line 18
    move-object v2, p2

    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimConfig(Ljava/lang/String;JZF)Lmiuix/animation/base/AnimConfig;

    .line 20
    move-result-object v1

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    const/4 v6, 0x0

    .line 26
    const v7, 0x3eb33333    # 0.35f

    .line 27
    move-object v2, p0

    .line 30
    move-object v3, p2

    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimConfig(Ljava/lang/String;JZF)Lmiuix/animation/base/AnimConfig;

    .line 32
    move-result-object p0

    .line 35
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 36
    move-result-object p2

    .line 39
    filled-new-array {v1}, [Lmiuix/animation/base/AnimConfig;

    .line 40
    move-result-object v1

    .line 43
    invoke-interface {p2, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 44
    if-eqz p3, :cond_2

    .line 47
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 49
    move-result-object p1

    .line 52
    const-string p2, "focusedNotifOutState"

    .line 53
    const-string p3, "focusedNotifInState"

    .line 55
    if-eqz v0, :cond_0

    .line 57
    move-object v1, p2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v1, p3

    .line 61
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 62
    move-result-object v1

    .line 65
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 66
    move-result-object v2

    .line 69
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 70
    move-result-object p1

    .line 73
    if-eqz v0, :cond_1

    .line 74
    move-object p2, p3

    .line 76
    :cond_1
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 77
    move-result-object p2

    .line 80
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 81
    move-result-object p0

    .line 84
    invoke-interface {p1, p2, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 85
    :cond_2
    return-void
    .line 88
.end method

.method public final animateShow(Lmiuix/animation/IFolme;Ljava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContent:Landroid/widget/FrameLayout;

    .line 12
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    const-wide/16 v1, 0x12c

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const-wide/16 v1, 0x0

    .line 23
    :goto_0
    const/4 v7, 0x1

    .line 25
    const v8, 0x3e19999a    # 0.15f

    .line 26
    move-object v3, p0

    .line 29
    move-object v4, p2

    .line 30
    move-wide v5, v1

    .line 31
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimConfig(Ljava/lang/String;JZF)Lmiuix/animation/base/AnimConfig;

    .line 32
    move-result-object v3

    .line 35
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 36
    move-result-object v4

    .line 39
    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    .line 40
    move-result-object v3

    .line 43
    invoke-interface {v4, v3}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    .line 44
    if-eqz p3, :cond_3

    .line 47
    const/4 v7, 0x0

    .line 49
    const v8, 0x3eb33333    # 0.35f

    .line 50
    move-object v3, p0

    .line 53
    move-object v4, p2

    .line 54
    move-wide v5, v1

    .line 55
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimConfig(Ljava/lang/String;JZF)Lmiuix/animation/base/AnimConfig;

    .line 56
    move-result-object p3

    .line 59
    const-wide/16 v3, 0x0

    .line 60
    const/4 v5, 0x0

    .line 62
    const v6, 0x3eb33333    # 0.35f

    .line 63
    move-object v1, p0

    .line 66
    move-object v2, p2

    .line 67
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimConfig(Ljava/lang/String;JZF)Lmiuix/animation/base/AnimConfig;

    .line 68
    move-result-object p0

    .line 71
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 72
    move-result-object p1

    .line 75
    const-string p2, "focusedNotifInState"

    .line 76
    const-string v1, "focusedNotifOutState"

    .line 78
    if-eqz v0, :cond_1

    .line 80
    move-object v2, p2

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move-object v2, v1

    .line 84
    :goto_1
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 85
    move-result-object v2

    .line 88
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 89
    move-result-object p0

    .line 92
    invoke-interface {p1, v2, p0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 93
    move-result-object p0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    move-object p2, v1

    .line 99
    :cond_2
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 100
    move-result-object p1

    .line 103
    filled-new-array {p3}, [Lmiuix/animation/base/AnimConfig;

    .line 104
    move-result-object p2

    .line 107
    invoke-interface {p0, p1, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 108
    :cond_3
    return-void
    .line 111
.end method

.method public final cancelFolme()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 13
    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContentFolme:Lmiuix/animation/IFolme;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 26
    move-result-object v0

    .line 29
    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContentFolme:Lmiuix/animation/IFolme;

    .line 33
    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 35
    move-result-object p0

    .line 38
    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final getAnimConfig(Ljava/lang/String;JZF)Lmiuix/animation/base/AnimConfig;
    .locals 4

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    const/4 v2, 0x0

    .line 10
    const v3, 0x3f733333    # 0.95f

    .line 11
    aput v3, v1, v2

    .line 14
    const/4 v2, 0x1

    .line 16
    aput p5, v1, v2

    .line 17
    const/4 p5, -0x2

    .line 19
    invoke-virtual {v0, p5, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 20
    move-result-object p5

    .line 23
    invoke-virtual {p5, p2, p3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 24
    move-result-object p2

    .line 27
    if-eqz p4, :cond_0

    .line 28
    new-instance p3, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$7;

    .line 30
    invoke-direct {p3, p0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$7;-><init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;Ljava/lang/String;)V

    .line 32
    filled-new-array {p3}, [Lmiuix/animation/listener/TransitionListener;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {p2, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 39
    :cond_0
    return-object p2
    .line 42
.end method

.method public final getBeanMap(I)Ljava/util/HashMap;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifMap:Ljava/util/HashMap;

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/HashMap;

    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/HashMap;

    .line 34
    return-object p0
    .line 36
.end method

.method public final getFocusedNotifViewRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->getFocusedNotifViewRect()Landroid/graphics/Rect;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 11
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 13
    :goto_0
    return-object p0
    .line 16
.end method

.method public final getMaxPriorityBean()Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifPackageNames:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    iget v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentUserId:I

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getBeanMap(I)Ljava/util/HashMap;

    .line 23
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 31
    if-eqz v1, :cond_0

    .line 33
    :cond_1
    return-object v1
    .line 35
.end method

.method public final hideImmediately()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->cancelFolme()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->hideImmediately(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContent:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->hideImmediately(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setIsFocusedNotifPromptShowing(Z)V

    return-void
.end method

.method public final notifyNotifBeanChanged(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->setData(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getFocusedNotifViewRect()Landroid/graphics/Rect;

    .line 9
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 17
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->icon:Landroid/graphics/drawable/Icon;

    .line 19
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, ""

    .line 25
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->onFocusedNotifUpdate(Ljava/lang/String;Landroid/graphics/drawable/Icon;Landroid/graphics/Rect;)V

    .line 28
    :goto_0
    return-void
    .line 31
.end method

.method public final onAnimCompleted(Ljava/lang/String;ZZ)V
    .locals 5

    .line 1
    const-string/jumbo v0, "tag_focused_icon"

    .line 2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 5
    move-result p1

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p2, :cond_7

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIcon:Landroid/widget/ImageView;

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContent:Landroid/widget/FrameLayout;

    .line 17
    :goto_0
    const/4 v2, 0x0

    .line 19
    if-eqz p3, :cond_1

    .line 20
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mForceBlack:Z

    .line 22
    if-eqz p3, :cond_1

    .line 24
    move p3, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p3, v2

    .line 28
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 29
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsHeadsUpShowing:Z

    .line 31
    if-nez v4, :cond_3

    .line 33
    if-eqz v3, :cond_3

    .line 35
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->headsUp:Z

    .line 37
    if-nez v4, :cond_3

    .line 39
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 41
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 43
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 51
    if-eqz v3, :cond_3

    .line 53
    :cond_2
    move v3, v1

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v3, v2

    .line 57
    :goto_2
    if-eqz v3, :cond_5

    .line 58
    if-eqz p3, :cond_4

    .line 60
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 62
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->animateShow(Lmiuix/animation/IFolme;Ljava/lang/String;Z)V

    .line 64
    goto :goto_3

    .line 67
    :cond_4
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->showImmediately(Landroid/view/View;)V

    .line 68
    goto :goto_3

    .line 71
    :cond_5
    if-eqz p3, :cond_6

    .line 72
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 74
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->animateHide(Lmiuix/animation/IFolme;Ljava/lang/String;Z)V

    .line 76
    goto :goto_3

    .line 79
    :cond_6
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->hideImmediately(Landroid/view/View;)V

    .line 80
    :cond_7
    :goto_3
    if-eqz p1, :cond_9

    .line 83
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 85
    if-nez p1, :cond_9

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    const-string p1, "OverviewProxyService"

    .line 94
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 96
    if-eqz p2, :cond_8

    .line 98
    const-string p2, "onFocusNotifyAnimFinish: "

    .line 100
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 105
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 107
    iget-object p2, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 109
    invoke-static {p2}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 111
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    const-string p3, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 115
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 120
    const/16 p3, 0x34

    .line 122
    const/4 v0, 0x0

    .line 124
    invoke-interface {p0, p3, p2, v0, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 128
    goto :goto_4

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 133
    throw p0

    .line 136
    :cond_8
    const-string p0, "Failed to get overview proxy to notify focused notification anim finish."

    .line 137
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    goto :goto_4

    .line 142
    :catch_0
    move-exception p0

    .line 143
    const-string p2, "Failed to call onFocusNotifyAnimFinish()"

    .line 144
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :cond_9
    :goto_4
    return-void
    .line 149
.end method

.method public final onChanged(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMiuiOptimization:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMiuiOptimization:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->update()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 2
    const/16 p1, 0x3ed

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    const-wide/16 v0, 0x1f4

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11
    return-void
    .line 14
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateFromConfigChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public final onForceBlackChange(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mForceBlack:Z

    .line 2
    return-void
    .line 4
.end method

.method public final onMaxBoundsChanged(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateFromConfigChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public final onNotifHeadsUpResult(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 6

    .line 1
    if-eqz p1, :cond_7

    .line 2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 4
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->showOnStatusBar(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 12
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 14
    move-result-object v0

    .line 17
    new-instance v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 18
    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;-><init>()V

    .line 20
    const-string v2, "FocusedNotifPromptContr"

    .line 23
    if-eqz v0, :cond_5

    .line 25
    :try_start_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 27
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 29
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 31
    move-result v4

    .line 34
    const/4 v5, 0x1

    .line 35
    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getSmallIcon(Lcom/android/systemui/statusbar/notification/ExpandedNotification;IZ)Landroid/graphics/drawable/Icon;

    .line 36
    move-result-object v3

    .line 39
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->icon:Landroid/graphics/drawable/Icon;

    .line 40
    if-eqz v3, :cond_0

    .line 42
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v3

    .line 49
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->drawable:Landroid/graphics/drawable/Drawable;

    .line 50
    :cond_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 52
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 54
    move-result-object v4

    .line 57
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 58
    move-result v4

    .line 61
    const-string v5, ""

    .line 62
    if-nez v4, :cond_1

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 67
    move-result-object v3

    .line 70
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 71
    const-string v4, "miui.focus.ticker"

    .line 73
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 78
    :goto_0
    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->content:Ljava/lang/String;

    .line 79
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 81
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getTargetPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 86
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 87
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 89
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 91
    move-result-object v4

    .line 94
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 95
    move-result v4

    .line 98
    if-nez v4, :cond_2

    .line 99
    const/4 v3, 0x0

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 103
    move-result-object v3

    .line 106
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 107
    const-string v4, "miui.focus.rvPendingIntent"

    .line 109
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 111
    move-result-object v3

    .line 114
    check-cast v3, Landroid/app/PendingIntent;

    .line 115
    :goto_1
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->intent:Landroid/app/PendingIntent;

    .line 117
    if-nez v3, :cond_4

    .line 119
    iget-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 121
    if-eqz v3, :cond_3

    .line 123
    goto :goto_2

    .line 125
    :cond_3
    iget-object v3, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 126
    :goto_2
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->intent:Landroid/app/PendingIntent;

    .line 128
    :cond_4
    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 130
    const-string v4, "miui.focus.rvBar"

    .line 132
    const-class v5, Landroid/widget/RemoteViews;

    .line 134
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    move-result-object v3

    .line 139
    check-cast v3, Landroid/widget/RemoteViews;

    .line 140
    iput-object v3, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentRemoteViews:Landroid/widget/RemoteViews;

    .line 142
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 144
    const-string v3, "miui.focus.rvBarNight"

    .line 146
    const-class v4, Landroid/widget/RemoteViews;

    .line 148
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 153
    check-cast v0, Landroid/widget/RemoteViews;

    .line 154
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->contentNightRemoteViews:Landroid/widget/RemoteViews;

    .line 156
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 158
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->notifKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_3

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v3, "getFocusedNotifBean: "

    .line 164
    invoke-static {v3, v0, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 166
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    const-string v3, "getFocusedNotifBean: bean="

    .line 171
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 182
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-boolean p2, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->headsUp:Z

    .line 186
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 188
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 190
    move-result p2

    .line 193
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 194
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifPackageNames:Ljava/util/List;

    .line 198
    check-cast v0, Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 202
    move-result v0

    .line 205
    if-nez v0, :cond_6

    .line 206
    goto :goto_4

    .line 208
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getBeanMap(I)Ljava/util/HashMap;

    .line 209
    move-result-object v0

    .line 212
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentUserId:I

    .line 216
    if-ne p1, p2, :cond_7

    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->update()V

    .line 220
    :cond_7
    :goto_4
    return-void
    .line 223
.end method

.method public final onSmallestScreenWidthChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateFromConfigChanged()V

    .line 2
    return-void
    .line 5
.end method

.method public final setIsFocusedNotifPromptShowing(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCallbacks:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifPromptCallback;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->onFocusedNotifVisibilityChanged(Z)V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    return-void
    .line 36
.end method

.method public final setRequestHide(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setRequestHide: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "FocusedNotifPromptContr"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 22
    if-eq v0, p1, :cond_1

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 26
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mDisableIconAnim:Z

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 31
    const/16 v1, 0x3e9

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 38
    const/16 v1, 0x3ec

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 45
    const/16 v1, 0x3ee

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 52
    if-nez v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 56
    const/16 p1, 0x3ea

    .line 58
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 64
    const-wide/16 v2, 0x9c4

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    const-string v0, "com.miui.home"

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->topActivityMayChanged(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateVisibility(Z)V

    .line 76
    :cond_1
    :goto_0
    return-void
    .line 79
.end method

.method public final setView(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->setController(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->setData(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;)V

    .line 13
    const v0, 0x7f0a0377    # @id/focused_notif_icon

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIcon:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0a0374    # @id/focused_notif_content

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/FrameLayout;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContent:Landroid/widget/FrameLayout;

    .line 36
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 38
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->cancelFolme()V

    .line 42
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIcon:Landroid/widget/ImageView;

    .line 45
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->showImmediately(Landroid/view/View;)V

    .line 47
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContent:Landroid/widget/FrameLayout;

    .line 50
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->showImmediately(Landroid/view/View;)V

    .line 52
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setIsFocusedNotifPromptShowing(Z)V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->hideImmediately()V

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIcon:Landroid/widget/ImageView;

    .line 63
    filled-new-array {p1}, [Landroid/view/View;

    .line 65
    move-result-object p1

    .line 68
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 69
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContent:Landroid/widget/FrameLayout;

    .line 75
    filled-new-array {p1}, [Landroid/view/View;

    .line 77
    move-result-object p1

    .line 80
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 81
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContentFolme:Lmiuix/animation/IFolme;

    .line 85
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->cancelFolme()V

    .line 88
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContentFolme:Lmiuix/animation/IFolme;

    .line 94
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->update()V

    .line 96
    return-void
    .line 99
.end method

.method public final topActivityMayChanged(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "topActivityMayChanged: topActivity="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "FocusedNotifPromptContr"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 22
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_4

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 30
    const/16 v1, 0x3ec

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getMaxPriorityBean()Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 37
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 41
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_3

    .line 44
    if-eqz v2, :cond_3

    .line 46
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 48
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 50
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    move-result v3

    .line 55
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 56
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    move-result v5

    .line 61
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 62
    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 64
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 66
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    move-result v2

    .line 71
    const/4 v6, 0x1

    .line 72
    xor-int/2addr v2, v6

    .line 73
    const-string v7, "com.miui.home"

    .line 74
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    move-result v7

    .line 79
    if-eqz v3, :cond_0

    .line 80
    if-eqz v7, :cond_0

    .line 82
    if-nez v5, :cond_2

    .line 84
    if-eqz v2, :cond_2

    .line 86
    :cond_0
    if-ne v3, v5, :cond_1

    .line 88
    if-nez v5, :cond_2

    .line 90
    if-eqz v2, :cond_2

    .line 92
    :cond_1
    move v4, v6

    .line 94
    :cond_2
    if-eqz v7, :cond_3

    .line 95
    const-wide/16 v2, 0x15e

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 102
    if-eqz v4, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->update()V

    .line 106
    :cond_4
    return-void
    .line 109
.end method

.method public final update()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifPackageNames:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    iget v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentUserId:I

    .line 25
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getBeanMap(I)Ljava/util/HashMap;

    .line 27
    move-result-object v5

    .line 30
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 34
    check-cast v3, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 35
    if-nez v3, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 40
    iput-boolean v4, v5, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statusBarPrompting:Z

    .line 42
    if-eqz v1, :cond_2

    .line 44
    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->headsUp:Z

    .line 46
    if-nez v4, :cond_2

    .line 48
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 50
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 52
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    move-result v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    :cond_2
    move-object v1, v3

    .line 60
    :cond_3
    if-eqz v2, :cond_4

    .line 61
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 63
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 65
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    move-result v4

    .line 70
    if-eqz v4, :cond_0

    .line 71
    :cond_4
    move-object v2, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const/4 v0, 0x1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 78
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statusBarPrompting:Z

    .line 80
    :cond_6
    if-eqz v2, :cond_7

    .line 82
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->sbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 84
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->statusBarPrompting:Z

    .line 86
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v5, "update: mCurrentNotifBean="

    .line 90
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v5, "\n, maxPriorityBean="

    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v5, "\n, maxPriorityBeanIgnoreHeadsUp="

    .line 109
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 120
    const-string v3, "FocusedNotifPromptContr"

    .line 121
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v1, :cond_9

    .line 126
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->headsUp:Z

    .line 128
    if-nez v2, :cond_9

    .line 130
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 132
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 134
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 136
    move-result v2

    .line 139
    if-eqz v2, :cond_8

    .line 140
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 142
    if-eqz v2, :cond_9

    .line 144
    :cond_8
    move v2, v0

    .line 146
    goto :goto_1

    .line 147
    :cond_9
    move v2, v4

    .line 148
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 149
    if-ne v3, v1, :cond_a

    .line 151
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsHeadsUpShowing:Z

    .line 153
    if-nez v3, :cond_a

    .line 155
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 157
    if-eq v3, v2, :cond_e

    .line 159
    :cond_a
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsHeadsUpShowing:Z

    .line 161
    if-nez v3, :cond_c

    .line 163
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 165
    if-eq v3, v2, :cond_b

    .line 167
    goto :goto_2

    .line 169
    :cond_b
    move v2, v4

    .line 170
    goto :goto_3

    .line 171
    :cond_c
    :goto_2
    move v2, v0

    .line 172
    :goto_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsHeadsUpShowing:Z

    .line 173
    if-eqz v3, :cond_d

    .line 175
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsHeadsUpShowing:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mDisableIconAnim:Z

    .line 179
    :cond_d
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->notifyNotifBeanChanged(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;)V

    .line 183
    move v4, v2

    .line 186
    :cond_e
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateVisibility(Z)V

    .line 187
    return-void
    .line 190
.end method

.method public final updateFromConfigChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v1

    .line 15
    const v2, 0x7f07034d    # @dimen/focused_notif_icon_size '20.0dp'

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result v1

    .line 22
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIcon:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptImageView;

    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Landroid/widget/TextView;

    .line 32
    const v1, 0x7f14047a    # @style/TextAppearance.StatusBar.Clock

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v0

    .line 43
    const v1, 0x7f07034e    # @dimen/focused_notif_view_min_width '100.0dp'

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    move-result v0

    .line 50
    iput v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mMinWidth:I

    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result v0

    .line 60
    iput v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mIconWidth:I

    .line 61
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->update(ZZ)V

    .line 64
    :cond_0
    return-void
    .line 67
.end method

.method public final updateRectToHome()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->getFocusedNotifViewRect()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mLastRect:Landroid/graphics/Rect;

    .line 6
    if-eq v1, v0, :cond_0

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mLastRect:Landroid/graphics/Rect;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "updateRectToHome: rect="

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    const-string v1, "FocusedNotifPromptContr"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->notifyNotifBeanChanged(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public final updateVisibility(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNeedAnimate:Z

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 4
    const/16 v0, 0x3eb

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 11
    const-wide/16 v1, 0x32

    .line 13
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 15
    return-void
    .line 18
.end method
