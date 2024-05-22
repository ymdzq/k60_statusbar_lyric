.class public final Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field public static final DEBUG:Z


# instance fields
.field public mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

.field public mBarState:I

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

.field public final mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mIsKeyguardShowing:Z

.field public final mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field public final mResources:Landroid/content/res/Resources;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

.field public mUserAvatarViewWithBackground:Landroid/view/View;

.field public final mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->DEBUG:Z

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 6
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    .line 8
    const-wide/16 v1, 0x168

    .line 11
    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    .line 13
    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 15
    return-void
    .line 17
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

    .line 31
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->DEBUG:Z

    .line 33
    if-eqz v0, :cond_0

    .line 35
    const-string v0, "KeyguardQsUserSwitchController"

    .line 37
    const-string v1, "New KeyguardQsUserSwitchController"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mResources:Landroid/content/res/Resources;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 48
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 50
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 52
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 54
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 56
    new-instance p2, Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 58
    const/4 p3, 0x0

    .line 60
    invoke-direct {p2, p1, p5, p3}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/log/LogBuffer;)V

    .line 61
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 64
    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    .line 66
    iput-object p10, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 68
    return-void
    .line 70
.end method


# virtual methods
.method public final getUserIconHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onInit()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "KeyguardQsUserSwitchController"

    .line 6
    const-string v1, "onInit"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    check-cast v0, Landroid/widget/FrameLayout;

    .line 15
    const v1, 0x7f0a04a9    # @id/kg_multi_user_avatar

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 24
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 26
    const v1, 0x7f0a04aa    # @id/kg_multi_user_avatar_with_background

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarViewWithBackground:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    .line 37
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 39
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 41
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 46
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;

    .line 48
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 56
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$5;

    .line 58
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$5;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 63
    return-void
    .line 66
.end method

.method public final onViewAttached()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "KeyguardQsUserSwitchController"

    .line 6
    const-string v1, "onViewAttached"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;->onChanged()V

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 23
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 32
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 41
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateCurrentUser()Z

    .line 50
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateKeyguardShowing(Z)V

    .line 54
    return-void
    .line 57
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "KeyguardQsUserSwitchController"

    .line 6
    const-string v1, "onViewDetached"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mDataSetObserver:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$6;

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$1;

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 31
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$2;

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 38
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$3;

    .line 42
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 44
    return-void
    .line 47
.end method

.method public final updateCurrentUser()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    .line 5
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    .line 9
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getCount()I

    .line 11
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$4;

    .line 18
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getUsers()Ljava/util/List;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/systemui/user/data/source/UserRecord;

    .line 30
    iget-boolean v5, v3, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 32
    if-eqz v5, :cond_0

    .line 34
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    .line 36
    invoke-virtual {v3, v0}, Lcom/android/systemui/user/data/source/UserRecord;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 41
    xor-int/2addr p0, v4

    .line 42
    return p0

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    .line 47
    if-nez p0, :cond_2

    .line 49
    if-eqz v0, :cond_2

    .line 51
    move v1, v4

    .line 53
    :cond_2
    return v1
    .line 54
.end method

.method public updateKeyguardShowing(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 6
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 8
    if-nez v2, :cond_1

    .line 10
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 19
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    .line 20
    if-ne v0, v1, :cond_2

    .line 22
    if-nez p1, :cond_2

    .line 24
    return-void

    .line 26
    :cond_2
    const-string v0, "KeyguardQsUserSwitchController"

    .line 27
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->DEBUG:Z

    .line 29
    if-eqz v1, :cond_3

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v3, "updateKeyguardShowing: mIsKeyguardShowing="

    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, " forceViewUpdate="

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mIsKeyguardShowing:Z

    .line 61
    if-eqz p1, :cond_4

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updateView$2()V

    .line 65
    goto :goto_2

    .line 68
    :cond_4
    if-eqz v1, :cond_5

    .line 69
    const-string p1, "clearAvatar"

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 76
    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setAvatar(Landroid/graphics/Bitmap;)V

    .line 79
    :goto_2
    return-void
    .line 82
.end method

.method public final updateView$2()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v0, "KeyguardQsUserSwitchController"

    .line 6
    const-string/jumbo v1, "updateView"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    .line 16
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mContext:Landroid/content/Context;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    iget-object v1, v1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    .line 34
    iget-object v1, v1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 36
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 38
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    const v3, 0x7f1300e4    # @string/accessibility_quick_settings_user 'Signed in as %s'

    .line 44
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const v1, 0x7f1300b2    # @string/accessibility_multi_user_switch_switcher 'Switch user'

    .line 52
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    .line 62
    const/16 v1, -0x2710

    .line 64
    if-eqz v0, :cond_3

    .line 66
    iget-boolean v3, v0, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 68
    if-nez v3, :cond_3

    .line 70
    iget-object v3, v0, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 72
    if-nez v3, :cond_2

    .line 74
    goto :goto_1

    .line 76
    :cond_2
    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    .line 77
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarView:Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 79
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mResources:Landroid/content/res/Resources;

    .line 81
    if-eqz v0, :cond_5

    .line 83
    iget-object v5, v0, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    .line 85
    if-nez v5, :cond_4

    .line 87
    goto :goto_2

    .line 89
    :cond_4
    const v0, 0x7f0704bd    # @dimen/kg_framed_avatar_size '32.0dp'

    .line 90
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 93
    move-result v0

    .line 96
    float-to-int v0, v0

    .line 97
    new-instance v4, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mCurrentUser:Lcom/android/systemui/user/data/source/UserRecord;

    .line 100
    iget-object p0, p0, Lcom/android/systemui/user/data/source/UserRecord;->picture:Landroid/graphics/Bitmap;

    .line 102
    invoke-direct {v4, p0, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 104
    goto :goto_4

    .line 107
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 108
    iget-boolean p0, v0, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 110
    if-eqz p0, :cond_6

    .line 112
    const p0, 0x7f080eef    # @drawable/ic_avatar_guest_user 'res/drawable/ic_avatar_guest_user.xml'

    .line 114
    invoke-virtual {v2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 117
    move-result-object p0

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    const p0, 0x7f080ef1    # @drawable/ic_avatar_user 'res/drawable/ic_avatar_user.xml'

    .line 122
    invoke-virtual {v2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object p0

    .line 128
    :goto_3
    const v0, 0x7f060179    # @color/kg_user_switcher_avatar_icon_color '@color/GM2_grey_800'

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 132
    move-result-object v5

    .line 135
    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 136
    move-result v0

    .line 139
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 140
    move-object v4, p0

    .line 143
    :goto_4
    const p0, 0x7f08198c    # @drawable/user_avatar_bg 'res/drawable/user_avatar_bg.xml'

    .line 144
    invoke-virtual {v2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 147
    move-result-object p0

    .line 150
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .line 151
    filled-new-array {p0, v4}, [Landroid/graphics/drawable/Drawable;

    .line 153
    move-result-object p0

    .line 156
    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 160
    move-result-object p0

    .line 163
    invoke-virtual {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawableWithBadge(Landroid/graphics/drawable/Drawable;I)V

    .line 164
    return-void
    .line 167
.end method
