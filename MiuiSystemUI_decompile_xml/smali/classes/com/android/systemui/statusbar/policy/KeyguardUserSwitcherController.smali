.class public final Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public static final DEBUG:Z


# instance fields
.field public final mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

.field public final mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

.field public mBarState:I

.field public mBgAnimator:Landroid/animation/ObjectAnimator;

.field public mDarkAmount:F

.field public final mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

.field public final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field public mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public mUserSwitcherOpen:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->DEBUG:Z

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 6
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 8
    const-wide/16 v1, 0x168

    .line 11
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 9

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p7

    .line 3
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    .line 10
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    .line 17
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    .line 22
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    .line 24
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    .line 29
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    .line 31
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    .line 34
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->DEBUG:Z

    .line 36
    if-eqz v0, :cond_0

    .line 38
    const-string v0, "KeyguardUserSwitcherController"

    .line 40
    const-string v1, "New KeyguardUserSwitcherController"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    move-object v0, p5

    .line 47
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 48
    move-object v4, p6

    .line 50
    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 51
    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 53
    move-object/from16 v0, p8

    .line 55
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 57
    move-object/from16 v0, p9

    .line 59
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 61
    new-instance v8, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    .line 63
    move-object v0, v8

    .line 65
    move-object v1, p2

    .line 66
    move-object v2, p3

    .line 67
    move-object v3, p4

    .line 68
    move-object v5, p0

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    .line 70
    iput-object v8, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    .line 73
    new-instance v0, Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 75
    const/4 v1, 0x0

    .line 77
    move-object v2, p1

    .line 78
    invoke-direct {v0, p1, v7, v1}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/log/LogBuffer;)V

    .line 79
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 84
    move-object v1, p2

    .line 86
    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object v0, v6, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 90
    return-void
    .line 92
.end method


# virtual methods
.method public final closeSwitcherIfOpenAndNotSimple(Z)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 9
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 13
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 17
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 23
    iget-boolean v0, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isSimpleUserSwitcher:Z

    .line 25
    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    .line 29
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    return v1
    .line 34
.end method

.method public final onInit()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "KeyguardUserSwitcherController"

    .line 6
    const-string v1, "onInit"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    move-object v1, v0

    .line 15
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 16
    const v2, 0x7f0a04a6    # @id/keyguard_user_switcher_list

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 25
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    return-void
    .line 39
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "KeyguardUserSwitcherController"

    .line 6
    const-string v1, "onViewAttached"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->notifyDataSetChanged()V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 30
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 48
    move-result-object v0

    .line 51
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 52
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 54
    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 56
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 62
    iget-boolean v0, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isSimpleUserSwitcher:Z

    .line 64
    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setUserSwitcherOpened(ZZ)V

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 73
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 77
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->setAlpha(I)V

    .line 86
    :goto_0
    return-void
    .line 89
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "KeyguardUserSwitcherController"

    .line 6
    const-string v1, "onViewDetached"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 28
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 31
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 33
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$3;

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenObserver:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$2;

    .line 40
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 42
    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 47
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 51
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 53
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->setAlpha(I)V

    .line 60
    return-void
    .line 63
.end method

.method public final setUserSwitcherOpened(ZZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p2

    .line 4
    const-string v2, "KeyguardUserSwitcherController"

    .line 6
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->DEBUG:Z

    .line 8
    if-eqz v3, :cond_0

    .line 10
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 12
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v4

    .line 17
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v5

    .line 21
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v6

    .line 25
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    const-string/jumbo v5, "setUserSwitcherOpened: %b -> %b (animate=%b)"

    .line 30
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 36
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    move/from16 v4, p1

    .line 40
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 42
    if-eqz v3, :cond_1

    .line 44
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object v3

    .line 49
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 53
    const-string/jumbo v4, "updateVisibilities: animate=%b"

    .line 54
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 64
    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 68
    :cond_2
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 71
    const/4 v3, 0x1

    .line 73
    const-wide/16 v4, 0x190

    .line 74
    const/16 v6, 0xff

    .line 76
    const-string v7, "alpha"

    .line 78
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBackground:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;

    .line 80
    const/4 v9, 0x0

    .line 82
    if-eqz v2, :cond_3

    .line 83
    filled-new-array {v9, v6}, [I

    .line 85
    move-result-object v2

    .line 88
    invoke-static {v8, v7, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 89
    move-result-object v2

    .line 92
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 93
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 98
    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 100
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 105
    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$5;

    .line 107
    invoke-direct {v4, v0, v9}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$5;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;I)V

    .line 109
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 115
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 117
    goto :goto_0

    .line 120
    :cond_3
    filled-new-array {v6, v9}, [I

    .line 121
    move-result-object v2

    .line 124
    invoke-static {v8, v7, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 125
    move-result-object v2

    .line 128
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 129
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 134
    sget-object v4, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 136
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 141
    new-instance v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$5;

    .line 143
    invoke-direct {v4, v0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$5;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;I)V

    .line 145
    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 151
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 153
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 156
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 158
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->DEBUG:Z

    .line 160
    if-eqz v4, :cond_4

    .line 162
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 164
    move-result-object v4

    .line 167
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    move-result-object v5

    .line 171
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 172
    move-result v6

    .line 175
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v6

    .line 179
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    .line 180
    move-result-object v4

    .line 183
    const-string/jumbo v5, "updateVisibilities: open=%b animate=%b childCount=%d"

    .line 184
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 190
    const-string v5, "KeyguardUserSwitcherListView"

    .line 191
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_4
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    .line 196
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 198
    move-result v4

    .line 201
    new-array v5, v4, [Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 202
    move v6, v9

    .line 204
    :goto_1
    if-ge v6, v4, :cond_7

    .line 205
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 207
    move-result-object v7

    .line 210
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 211
    aput-object v7, v5, v6

    .line 213
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 215
    if-nez v6, :cond_5

    .line 218
    aget-object v7, v5, v6

    .line 220
    invoke-virtual {v7, v3, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 222
    aget-object v7, v5, v6

    .line 225
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 227
    goto :goto_2

    .line 230
    :cond_5
    aget-object v7, v5, v6

    .line 231
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 233
    if-eqz v0, :cond_6

    .line 236
    aget-object v7, v5, v6

    .line 238
    invoke-virtual {v7, v3, v3, v9}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 240
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 243
    goto :goto_1

    .line 245
    :cond_7
    if-eqz v1, :cond_10

    .line 246
    if-le v4, v3, :cond_10

    .line 248
    const/4 v1, 0x0

    .line 250
    aput-object v1, v5, v9

    .line 251
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 253
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 256
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAnimating:Z

    .line 259
    if-eqz v0, :cond_8

    .line 261
    iget-object v6, v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 263
    goto :goto_3

    .line 265
    :cond_8
    iget-object v6, v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 266
    :goto_3
    new-instance v7, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;

    .line 268
    invoke-direct {v7, v2, v0, v5}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;Z[Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;)V

    .line 270
    iget-object v0, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    .line 273
    const/4 v2, -0x1

    .line 275
    iput v2, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 276
    iput v2, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 278
    new-array v8, v4, [[J

    .line 280
    iput-object v8, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 282
    const-wide/16 v10, -0x1

    .line 284
    move v8, v9

    .line 286
    :goto_4
    if-ge v8, v4, :cond_a

    .line 287
    iget-object v12, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 289
    new-array v13, v3, [J

    .line 291
    aput-object v13, v12, v8

    .line 293
    invoke-virtual {v6, v8, v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    .line 295
    move-result-wide v12

    .line 298
    iget-object v14, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 299
    aget-object v14, v14, v8

    .line 301
    aput-wide v12, v14, v9

    .line 303
    aget-object v14, v5, v8

    .line 305
    if-eqz v14, :cond_9

    .line 307
    cmp-long v14, v12, v10

    .line 309
    if-lez v14, :cond_9

    .line 311
    iput v9, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 313
    iput v8, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 315
    move-wide v10, v12

    .line 317
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 318
    goto :goto_4

    .line 320
    :cond_a
    iget v3, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 321
    if-eq v3, v2, :cond_f

    .line 323
    iget v3, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 325
    if-ne v3, v2, :cond_b

    .line 327
    goto :goto_9

    .line 329
    :cond_b
    move v2, v9

    .line 330
    :goto_5
    iget-object v3, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 331
    array-length v4, v3

    .line 333
    if-ge v2, v4, :cond_10

    .line 334
    aget-object v4, v3, v2

    .line 336
    aget-wide v12, v4, v9

    .line 338
    iget v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 340
    if-ne v4, v2, :cond_c

    .line 342
    iget v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 344
    if-nez v4, :cond_c

    .line 346
    move-object/from16 v19, v7

    .line 348
    goto :goto_6

    .line 350
    :cond_c
    move-object/from16 v19, v1

    .line 351
    :goto_6
    iget-object v4, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/DisappearAnimationUtils$1;

    .line 353
    if-eqz v4, :cond_d

    .line 355
    array-length v3, v3

    .line 357
    sub-int v4, v3, v2

    .line 358
    int-to-double v10, v4

    .line 360
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 361
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    .line 363
    move-result-wide v10

    .line 366
    int-to-double v3, v3

    .line 367
    div-double/2addr v10, v3

    .line 368
    double-to-float v3, v10

    .line 369
    goto :goto_7

    .line 370
    :cond_d
    const/high16 v3, 0x3f800000    # 1.0f

    .line 371
    :goto_7
    iget v4, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    .line 373
    mul-float/2addr v3, v4

    .line 375
    aget-object v11, v5, v2

    .line 376
    iget-wide v14, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 378
    iget-boolean v4, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    .line 380
    if-eqz v4, :cond_e

    .line 382
    goto :goto_8

    .line 384
    :cond_e
    neg-float v3, v3

    .line 385
    :goto_8
    move/from16 v16, v3

    .line 386
    iget-object v3, v6, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 388
    move-object v10, v6

    .line 390
    move/from16 v17, v4

    .line 391
    move-object/from16 v18, v3

    .line 393
    invoke-virtual/range {v10 .. v19}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 395
    add-int/lit8 v2, v2, 0x1

    .line 398
    goto :goto_5

    .line 400
    :cond_f
    :goto_9
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView$$ExternalSyntheticLambda0;->run()V

    .line 401
    :cond_10
    return-void
    .line 404
.end method
