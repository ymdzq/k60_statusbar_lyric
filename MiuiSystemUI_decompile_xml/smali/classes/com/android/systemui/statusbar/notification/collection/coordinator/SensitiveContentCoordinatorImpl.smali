.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public final appLock:Lcom/miui/systemui/statusbar/phone/AppLockHelper;

.field public final context:Landroid/content/Context;

.field public final dynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/systemui/statusbar/phone/AppLockHelper;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 1

    .line 1
    const-string v0, "SensitiveContentInvalidator"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Invalidator;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->context:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->appLock:Lcom/miui/systemui/statusbar/phone/AppLockHelper;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->dynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 11
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 13
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 15
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 17
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 19
    return-void
    .line 21
.end method

.method public static onBeforeSort(Ljava/util/List;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 8
    invoke-direct {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 10
    sget-object p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;

    .line 13
    invoke-static {v0, p0}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 15
    move-result-object p0

    .line 18
    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$onBeforeSort$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$onBeforeSort$1;

    .line 19
    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 21
    move-result-object p0

    .line 24
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 25
    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 27
    :goto_0
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 40
    const-class v1, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 42
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 48
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;->showSensitiveByAppLock(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 50
    move-result v1

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hideSensitiveByAppLock:Z

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    return-void
    .line 57
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->appLock:Lcom/miui/systemui/statusbar/phone/AppLockHelper;

    .line 2
    iput-object p0, v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->mListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    .line 4
    sget-object v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->ACCESS_CONTROL_LOCK_ENABLED:Landroid/net/Uri;

    .line 6
    sget-object v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$attach$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$attach$1;

    .line 8
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->context:Landroid/content/Context;

    .line 10
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v3

    .line 15
    sget-object v4, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 16
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 21
    check-cast v5, Landroid/os/Handler;

    .line 22
    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$registerObserver$1;

    .line 24
    invoke-direct {v6, v5, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$registerObserver$1;-><init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 26
    const/4 v1, 0x0

    .line 29
    const/4 v5, -0x1

    .line 30
    invoke-virtual {v3, v0, v1, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 31
    sget-object v0, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->APP_LOCK_STATE_CHANGED:Landroid/net/Uri;

    .line 34
    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$attach$2;

    .line 36
    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$attach$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;)V

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object v2

    .line 44
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 48
    check-cast v4, Landroid/os/Handler;

    .line 49
    new-instance v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$registerObserver$1;

    .line 51
    invoke-direct {v6, v4, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$registerObserver$1;-><init>(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 53
    invoke-virtual {v2, v0, v1, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 64
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 67
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    .line 69
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mOnBeforeSortListeners:Ljava/util/List;

    .line 72
    check-cast v0, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->dynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 79
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->mListeners:Landroid/util/ArraySet;

    .line 81
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    .line 86
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 94
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 97
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    .line 102
    const/4 v1, 0x5

    .line 104
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    .line 105
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mListener:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;

    .line 108
    return-void
    .line 110
.end method

.method public final onBeforeRenderList(Ljava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    .line 6
    if-nez v0, :cond_c

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 10
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 21
    move-result v2

    .line 24
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometricAndIsBypassing(I)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    goto/16 :goto_8

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->lockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 33
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 35
    iget v2, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 37
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 39
    move-result v3

    .line 42
    const/4 v4, 0x0

    .line 43
    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->userAllowsPrivateNotificationsInPublic(I)Z

    .line 46
    move-result v5

    .line 49
    if-nez v5, :cond_1

    .line 50
    move v5, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v5, v4

    .line 54
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;->dynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    .line 57
    move-result p0

    .line 60
    new-instance v6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 61
    invoke-direct {v6, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 63
    sget-object p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorKt$extractAllRepresentativeEntries$1;

    .line 66
    invoke-static {v6, p1}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 68
    move-result-object p1

    .line 71
    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$onBeforeRenderList$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl$onBeforeRenderList$1;

    .line 72
    invoke-static {p1, v6}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 74
    move-result-object p1

    .line 77
    new-instance v6, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 78
    invoke-direct {v6, p1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 80
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 83
    move-result p1

    .line 86
    if-eqz p1, :cond_c

    .line 87
    invoke-virtual {v6}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 92
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 93
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 95
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 97
    move-result-object v7

    .line 100
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 101
    move-result v7

    .line 104
    if-nez v3, :cond_4

    .line 105
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 107
    move-result v8

    .line 110
    if-eqz v8, :cond_3

    .line 111
    goto :goto_2

    .line 113
    :cond_3
    move v8, v4

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    :goto_2
    move v8, v1

    .line 116
    :goto_3
    if-nez v8, :cond_5

    .line 117
    goto :goto_4

    .line 119
    :cond_5
    if-nez p0, :cond_6

    .line 120
    move v7, v1

    .line 122
    goto :goto_5

    .line 123
    :cond_6
    if-ne v7, v2, :cond_7

    .line 124
    goto :goto_4

    .line 126
    :cond_7
    const/4 v8, -0x1

    .line 127
    if-ne v7, v8, :cond_8

    .line 128
    :goto_4
    move v7, v4

    .line 130
    goto :goto_5

    .line 131
    :cond_8
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    .line 132
    invoke-virtual {v8, v7, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 134
    move-result v7

    .line 137
    :goto_5
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 138
    move-result v8

    .line 141
    if-eqz v7, :cond_9

    .line 142
    if-eqz v8, :cond_9

    .line 144
    move v7, v1

    .line 146
    goto :goto_6

    .line 147
    :cond_9
    move v7, v4

    .line 148
    :goto_6
    const-class v8, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 149
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    move-result-object v8

    .line 154
    check-cast v8, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;

    .line 155
    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/notification/policy/NotificationSensitiveController;->showSensitiveByAppLock(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 157
    move-result v8

    .line 160
    if-eqz v8, :cond_a

    .line 161
    move v7, v1

    .line 163
    :cond_a
    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 164
    invoke-virtual {v8, v7, v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSensitive(ZZ)V

    .line 166
    iget-boolean v8, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 169
    if-eq v7, v8, :cond_b

    .line 171
    iput-boolean v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 173
    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Lcom/android/systemui/util/ListenerSet;

    .line 175
    invoke-virtual {v7}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v7

    .line 180
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v8

    .line 184
    if-eqz v8, :cond_b

    .line 185
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v8

    .line 190
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;

    .line 191
    invoke-interface {v8, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$OnSensitivityChangedListener;->onSensitivityChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 193
    goto :goto_7

    .line 196
    :cond_b
    if-eqz p0, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isAnyProfilePublicMode()Z

    .line 199
    move-result v7

    .line 202
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 203
    invoke-virtual {p1, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHideSensitiveAnimIfInitialized(Z)V

    .line 205
    goto :goto_1

    .line 208
    :cond_c
    :goto_8
    return-void
    .line 209
.end method

.method public final onDynamicPrivacyChanged()V
    .locals 1

    .line 1
    const-string v0, "onDynamicPrivacyChanged"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->invalidateList(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method
