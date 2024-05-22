.class public abstract Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;
.super Landroid/widget/BaseAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final disabledUserAvatarColorFilter$delegate:Lkotlin/Lazy;


# instance fields
.field public final controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion$disabledUserAvatarColorFilter$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter$Companion$disabledUserAvatarColorFilter$2;

    .line 2
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->disabledUserAvatarColorFilter$delegate:Lkotlin/Lazy;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 12
    move-result-object p0

    .line 15
    new-instance p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-direct {p1, v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;-><init>(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->addCallback(Lcom/android/systemui/statusbar/policy/UserSwitcherController$addAdapter$1;)V

    .line 22
    return-void
    .line 25
.end method

.method public static final getIconDrawable(Landroid/content/Context;Lcom/android/systemui/user/data/source/UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddUser:Z

    .line 2
    iget-boolean v1, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 4
    iget-boolean v2, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddSupervisedUser:Z

    .line 6
    const/4 v3, 0x0

    .line 8
    iget-boolean p1, p1, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserSwitcherActionIconResourceId(ZZZZZ)I

    .line 11
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    const-string p1, "Required value was null."

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
    .line 33
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getUsers()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getUsers()Ljava/util/List;

    .line 2
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/data/source/UserRecord;

    .line 10
    return-object p0
    .line 12
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
    .line 3
.end method

.method public getUsers()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->userRecords:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 8
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_4

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 34
    move-object v3, v2

    .line 35
    check-cast v3, Lcom/android/systemui/user/data/source/UserRecord;

    .line 36
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 38
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->keyguardInteractor$delegate:Lkotlin/Lazy;

    .line 40
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 45
    check-cast v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 46
    iget-object v4, v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 48
    check-cast v4, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 50
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->isKeyguardShowing()Z

    .line 52
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    iget-boolean v4, v3, Lcom/android/systemui/user/data/source/UserRecord;->isRestricted:Z

    .line 58
    if-nez v4, :cond_2

    .line 60
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 62
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 64
    move-result-object v4

    .line 67
    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 68
    check-cast v4, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 70
    iget-object v4, v4, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 72
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    .line 78
    iget-boolean v4, v4, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    .line 80
    if-nez v4, :cond_3

    .line 82
    iget-boolean v3, v3, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 84
    if-eqz v3, :cond_2

    .line 86
    goto :goto_1

    .line 88
    :cond_2
    const/4 v3, 0x0

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 91
    :goto_2
    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 97
    :cond_4
    return-object v1
    .line 98
.end method

.method public final onUserListItemClicked(Lcom/android/systemui/user/data/source/UserRecord;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->controller:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    iget-object v2, p1, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 10
    if-eqz v2, :cond_0

    .line 12
    move v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v0

    .line 16
    :goto_0
    if-eqz v3, :cond_4

    .line 17
    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->SWITCH_TO_GUEST_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->SWITCH_TO_RESTRICTED_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 36
    goto :goto_1

    .line 38
    :cond_2
    sget-object p1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->SWITCH_TO_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    .line 39
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 41
    invoke-interface {v0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 43
    iget p1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->selectUser(ILcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 48
    goto :goto_3

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    const-string p1, "Required value was null."

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 63
    :cond_4
    if-eqz v2, :cond_5

    .line 64
    move v0, v1

    .line 66
    :cond_5
    xor-int/2addr v0, v1

    .line 67
    if-eqz v0, :cond_a

    .line 68
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddUser:Z

    .line 70
    if-eqz v0, :cond_6

    .line 72
    sget-object p1, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 74
    goto :goto_2

    .line 76
    :cond_6
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isAddSupervisedUser:Z

    .line 77
    if-eqz v0, :cond_7

    .line 79
    sget-object p1, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 81
    goto :goto_2

    .line 83
    :cond_7
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isGuest:Z

    .line 84
    if-eqz v0, :cond_8

    .line 86
    sget-object p1, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 88
    goto :goto_2

    .line 90
    :cond_8
    iget-boolean v0, p1, Lcom/android/systemui/user/data/source/UserRecord;->isManageUsers:Z

    .line 91
    if-eqz v0, :cond_9

    .line 93
    sget-object p1, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    .line 95
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->executeAction(Lcom/android/systemui/user/shared/model/UserActionModel;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    .line 97
    :goto_3
    return-void

    .line 100
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    const-string v0, "Not a known action: "

    .line 105
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 120
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p0

    .line 124
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 125
    const-string p1, "Check failed."

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0
    .line 136
.end method
