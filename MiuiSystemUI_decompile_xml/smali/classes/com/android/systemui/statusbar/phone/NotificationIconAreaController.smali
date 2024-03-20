.class public final Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
.implements Lcom/android/systemui/demomode/DemoMode;
.implements Lcom/miui/systemui/modulesettings/NotificationSettings$StyleListener;
.implements Lcom/android/systemui/statusbar/policy/NotificationIconObserver$Callback;


# instance fields
.field public mAnimationsEnabled:Z

.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mContext:Landroid/content/Context;

.field public final mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field public mIconHPadding:I

.field public mIconSize:I

.field public mIconTint:I

.field public mNotificationEntries:Ljava/util/List;

.field public mNotificationIconArea:Landroid/view/View;

.field public mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public final mSectionStyleProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

.field final mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

.field public mShowLowPriority:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mTintAreas:Ljava/util/ArrayList;

.field public final mUpdateStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$$ExternalSyntheticLambda0;

.field public final toShowPkg:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;Ljava/util/Optional;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p4, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 7
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$$ExternalSyntheticLambda0;

    .line 10
    const/4 p4, -0x1

    .line 12
    iput p4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 13
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 15
    move-result-object p10

    .line 18
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    .line 19
    new-instance p10, Ljava/util/ArrayList;

    .line 21
    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintAreas:Ljava/util/ArrayList;

    .line 26
    const/4 p10, 0x1

    .line 28
    iput-boolean p10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 29
    new-instance p10, Landroid/util/ArraySet;

    .line 31
    const/16 v0, 0x64

    .line 33
    invoke-direct {p10, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 35
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->toShowPkg:Landroid/util/ArraySet;

    .line 38
    new-instance p10, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;

    .line 40
    invoke-direct {p10, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 42
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSettingsListener:Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    .line 45
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    .line 47
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 55
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 57
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSectionStyleProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    .line 60
    iget-object p2, p3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubblesOptional:Ljava/util/Optional;

    .line 67
    invoke-virtual {p8, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 69
    iget-object p2, p5, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p2, p10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->reloadDimens(Landroid/content/Context;)V

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 80
    move-result-object p2

    .line 83
    const p3, 0x7f0d0287    # @layout/notification_icon_area 'res/layout/notification_icon_area.xml'

    .line 84
    const/4 p5, 0x0

    .line 87
    invoke-virtual {p2, p3, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 88
    move-result-object p2

    .line 91
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 92
    const p3, 0x7f0a06a2    # @id/notificationIcons

    .line 94
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object p2

    .line 100
    check-cast p2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 101
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 103
    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p2, p11}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setMultiTaskStatusBarDotsAreaControllerFactory(Lcom/android/systemui/statusbar/policy/MultiTaskStatusBarDotsAreaControllerFactory;)V

    .line 107
    :cond_0
    const-class p2, Lcom/miui/systemui/SettingsManager;

    .line 110
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    move-result-object p2

    .line 115
    check-cast p2, Lcom/miui/systemui/SettingsManager;

    .line 116
    iget-object p2, p2, Lcom/miui/systemui/SettingsManager;->notifStyleListeners:Ljava/util/List;

    .line 118
    check-cast p2, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 122
    move-result p3

    .line 125
    if-nez p3, :cond_1

    .line 126
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    const p2, 0x7f0408ae    # @attr/wallpaperTextColor

    .line 131
    invoke-static {p1, p2, p4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 134
    invoke-interface {p9, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 137
    const-class p1, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;

    .line 140
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    move-result-object p1

    .line 145
    check-cast p1, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;

    .line 146
    const/4 p2, 0x0

    .line 148
    :goto_0
    iget-object p3, p1, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 151
    move-result p3

    .line 154
    if-ge p2, p3, :cond_3

    .line 155
    iget-object p3, p1, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    move-result-object p3

    .line 162
    check-cast p3, Ljava/lang/ref/WeakReference;

    .line 163
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 165
    move-result-object p3

    .line 168
    if-ne p3, p0, :cond_2

    .line 169
    goto :goto_1

    .line 171
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 172
    goto :goto_0

    .line 174
    :cond_3
    iget-object p2, p1, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 175
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 177
    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget p1, p1, Lcom/android/systemui/statusbar/policy/NotificationIconObserver;->mShowNotificationIcons:I

    .line 185
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 187
    if-eqz p0, :cond_4

    .line 189
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxStaticIcons:I

    .line 191
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mMaxIconsOnLockscreen:I

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconXTranslations()V

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 201
    :cond_4
    :goto_1
    return-void
    .line 204
.end method


# virtual methods
.method public final applyNotificationIconsTint()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 17
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 25
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    .line 27
    goto :goto_1

    .line 30
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 33
    iput-object v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    return-void
    .line 41
.end method

.method public final demoCommands()Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onChanged$1()V
    .locals 1

    .line 1
    const-string v0, "NotificationIconAreaController.updateNotificationIcons"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 13
    return-void
    .line 16
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintAreas:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIconArea:Landroid/view/View;

    .line 10
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconTint:I

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->applyNotificationIconsTint()V

    .line 20
    return-void
    .line 23
.end method

.method public final onDemoModeFinished()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDozingChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onFullyHiddenChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPulseExpansionChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onStateChanged(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    move p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mAnimationsEnabled:Z

    .line 17
    if-eqz p0, :cond_1

    .line 19
    if-eqz p1, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 25
    return-void
    .line 28
.end method

.method public final reloadDimens(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p1

    .line 5
    const v0, 0x7f0710e2    # @dimen/status_bar_icon_size '13.0dp'

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 13
    const v0, 0x7f0710ed    # @dimen/status_bar_notification_icon_padding '2.5dp'

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 22
    const p0, 0x7f07109a    # @dimen/shelf_appear_translation '42.0dp'

    .line 24
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    return-void
    .line 30
.end method

.method public shouldShouldLowPriorityIcons()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 2
    return p0
    .line 4
.end method

.method public final updateStatusBarIcons()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 10
    move-result v3

    .line 13
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 17
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-ne v0, v3, :cond_0

    .line 21
    move v3, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, v5

    .line 25
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->toShowPkg:Landroid/util/ArraySet;

    .line 26
    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 28
    move v6, v5

    .line 31
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    .line 32
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 34
    move-result v7

    .line 37
    const/4 v8, 0x0

    .line 38
    if-ge v6, v7, :cond_14

    .line 39
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationEntries:Ljava/util/List;

    .line 41
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v7

    .line 46
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 47
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 49
    move-result-object v7

    .line 52
    if-eqz v7, :cond_13

    .line 53
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 55
    if-eqz v9, :cond_13

    .line 57
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSectionStyleProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    .line 59
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 64
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 66
    if-nez v10, :cond_1

    .line 68
    move v9, v4

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;->lowPrioritySections:Ljava/util/Set;

    .line 72
    if-nez v9, :cond_2

    .line 74
    move-object v9, v8

    .line 76
    :cond_2
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    .line 77
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 79
    move-result v9

    .line 82
    :goto_2
    if-eqz v9, :cond_3

    .line 83
    goto/16 :goto_a

    .line 85
    :cond_3
    if-nez v1, :cond_6

    .line 87
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mSectionStyleProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    .line 89
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mAttachState:Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    .line 94
    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    .line 96
    if-nez v10, :cond_4

    .line 98
    move v8, v4

    .line 100
    goto :goto_4

    .line 101
    :cond_4
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;->silentSections:Ljava/util/Set;

    .line 102
    if-nez v9, :cond_5

    .line 104
    goto :goto_3

    .line 106
    :cond_5
    move-object v8, v9

    .line 107
    :goto_3
    iget-object v9, v10, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->sectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    .line 108
    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 110
    move-result v8

    .line 113
    :goto_4
    if-eqz v8, :cond_6

    .line 114
    goto/16 :goto_a

    .line 116
    :cond_6
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 118
    if-eqz v8, :cond_7

    .line 120
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mDismissed:Z

    .line 122
    if-eqz v8, :cond_7

    .line 124
    move v8, v4

    .line 126
    goto :goto_5

    .line 127
    :cond_7
    move v8, v5

    .line 128
    :goto_5
    if-eqz v8, :cond_8

    .line 129
    goto/16 :goto_a

    .line 131
    :cond_8
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasSentReply:Z

    .line 133
    if-nez v8, :cond_9

    .line 135
    goto :goto_7

    .line 137
    :cond_9
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 138
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 140
    move-result-object v8

    .line 143
    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 144
    const-string v9, "android.remoteInputHistoryItems"

    .line 146
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 148
    move-result-object v9

    .line 151
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 152
    move-result v9

    .line 155
    if-nez v9, :cond_a

    .line 156
    goto :goto_6

    .line 158
    :cond_a
    const-string v9, "android.messages"

    .line 159
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 161
    move-result-object v9

    .line 164
    invoke-static {v9}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    .line 165
    move-result-object v9

    .line 168
    if-eqz v9, :cond_c

    .line 169
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 171
    move-result v10

    .line 174
    if-nez v10, :cond_c

    .line 175
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 177
    move-result v10

    .line 180
    sub-int/2addr v10, v4

    .line 181
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v9

    .line 185
    check-cast v9, Landroid/app/Notification$MessagingStyle$Message;

    .line 186
    if-eqz v9, :cond_c

    .line 188
    invoke-virtual {v9}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    .line 190
    move-result-object v9

    .line 193
    if-nez v9, :cond_b

    .line 194
    :goto_6
    move v8, v4

    .line 196
    goto :goto_8

    .line 197
    :cond_b
    const-string v10, "android.messagingUser"

    .line 198
    const-class v11, Landroid/app/Person;

    .line 200
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 202
    move-result-object v8

    .line 205
    check-cast v8, Landroid/app/Person;

    .line 206
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    move-result v8

    .line 211
    goto :goto_8

    .line 212
    :cond_c
    :goto_7
    move v8, v5

    .line 213
    :goto_8
    if-eqz v8, :cond_d

    .line 214
    goto :goto_a

    .line 216
    :cond_d
    const/16 v8, 0x20

    .line 217
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    .line 219
    move-result v8

    .line 222
    if-eqz v8, :cond_e

    .line 223
    goto :goto_a

    .line 225
    :cond_e
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubblesOptional:Ljava/util/Optional;

    .line 226
    invoke-virtual {v8}, Ljava/util/Optional;->isPresent()Z

    .line 228
    move-result v8

    .line 231
    if-eqz v8, :cond_10

    .line 232
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mBubblesOptional:Ljava/util/Optional;

    .line 234
    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 236
    move-result-object v8

    .line 239
    check-cast v8, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 240
    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 242
    check-cast v8, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 244
    iget-object v8, v8, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 246
    monitor-enter v8

    .line 248
    :try_start_0
    iget-boolean v10, v8, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mIsStackExpanded:Z

    .line 249
    if-eqz v10, :cond_f

    .line 251
    iget-object v10, v8, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSelectedBubbleKey:Ljava/lang/String;

    .line 253
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    if-eqz v9, :cond_f

    .line 259
    move v9, v4

    .line 261
    goto :goto_9

    .line 262
    :cond_f
    move v9, v5

    .line 263
    :goto_9
    monitor-exit v8

    .line 264
    if-eqz v9, :cond_10

    .line 265
    goto :goto_a

    .line 267
    :catchall_0
    move-exception p0

    .line 268
    monitor-exit v8

    .line 269
    throw p0

    .line 270
    :cond_10
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 271
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isPersistent()Z

    .line 273
    move-result v8

    .line 276
    if-eqz v8, :cond_11

    .line 277
    :goto_a
    move v8, v5

    .line 279
    goto :goto_b

    .line 280
    :cond_11
    move v8, v4

    .line 281
    :goto_b
    if-eqz v8, :cond_13

    .line 282
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 284
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/icon/IconPack;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 286
    if-eqz v8, :cond_13

    .line 288
    sget-boolean v9, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 290
    if-eqz v9, :cond_12

    .line 292
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    goto :goto_c

    .line 297
    :cond_12
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->toShowPkg:Landroid/util/ArraySet;

    .line 298
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 300
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 302
    move-result-object v10

    .line 305
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 306
    move-result v9

    .line 309
    if-nez v9, :cond_13

    .line 310
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    if-eqz v3, :cond_13

    .line 315
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->toShowPkg:Landroid/util/ArraySet;

    .line 317
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 319
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getTargetPackageName()Ljava/lang/String;

    .line 321
    move-result-object v7

    .line 324
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_13
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 328
    goto/16 :goto_1

    .line 330
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->toShowPkg:Landroid/util/ArraySet;

    .line 332
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 334
    new-instance v1, Landroidx/collection/ArrayMap;

    .line 337
    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 339
    new-instance v3, Ljava/util/ArrayList;

    .line 342
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 344
    move v6, v5

    .line 347
    :goto_d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 348
    move-result v7

    .line 351
    if-ge v6, v7, :cond_1c

    .line 352
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 354
    move-result-object v7

    .line 357
    instance-of v9, v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 358
    if-nez v9, :cond_15

    .line 360
    goto :goto_11

    .line 362
    :cond_15
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 363
    move-result v9

    .line 366
    if-nez v9, :cond_1b

    .line 367
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 369
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    .line 371
    move-result-object v9

    .line 374
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 375
    move-result-object v9

    .line 378
    move v10, v5

    .line 379
    move v11, v10

    .line 380
    :goto_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 381
    move-result v12

    .line 384
    if-ge v10, v12, :cond_18

    .line 385
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    move-result-object v12

    .line 390
    check-cast v12, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 391
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    .line 393
    move-result-object v13

    .line 396
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    .line 397
    move-result-object v14

    .line 400
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 401
    move-result v13

    .line 404
    if-eqz v13, :cond_17

    .line 405
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    .line 407
    move-result-object v12

    .line 410
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 411
    move-result-object v12

    .line 414
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v12

    .line 418
    if-eqz v12, :cond_17

    .line 419
    if-nez v11, :cond_16

    .line 421
    move v11, v4

    .line 423
    goto :goto_f

    .line 424
    :cond_16
    move v11, v5

    .line 425
    goto :goto_10

    .line 426
    :cond_17
    :goto_f
    add-int/lit8 v10, v10, 0x1

    .line 427
    goto :goto_e

    .line 429
    :cond_18
    :goto_10
    if-eqz v11, :cond_1a

    .line 430
    invoke-virtual {v1, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    move-result-object v10

    .line 435
    check-cast v10, Ljava/util/ArrayList;

    .line 436
    if-nez v10, :cond_19

    .line 438
    new-instance v10, Ljava/util/ArrayList;

    .line 440
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual {v1, v9, v10}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_19
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    .line 448
    move-result-object v9

    .line 451
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_1a
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_1b
    :goto_11
    add-int/lit8 v6, v6, 0x1

    .line 458
    goto :goto_d

    .line 460
    :cond_1c
    new-instance v6, Ljava/util/ArrayList;

    .line 461
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 463
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 466
    move-result-object v7

    .line 469
    check-cast v7, Landroidx/collection/ArrayMap$KeySet;

    .line 470
    invoke-virtual {v7}, Landroidx/collection/ArrayMap$KeySet;->iterator()Ljava/util/Iterator;

    .line 472
    move-result-object v7

    .line 475
    :cond_1d
    :goto_12
    move-object v9, v7

    .line 476
    check-cast v9, Landroidx/collection/IndexBasedArrayIterator;

    .line 477
    invoke-virtual {v9}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    .line 479
    move-result v10

    .line 482
    if-eqz v10, :cond_1e

    .line 483
    invoke-virtual {v9}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    .line 485
    move-result-object v9

    .line 488
    check-cast v9, Ljava/lang/String;

    .line 489
    invoke-virtual {v1, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    move-result-object v10

    .line 494
    check-cast v10, Ljava/util/ArrayList;

    .line 495
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 497
    move-result v10

    .line 500
    if-eq v10, v4, :cond_1d

    .line 501
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    goto :goto_12

    .line 506
    :cond_1e
    invoke-virtual {v1, v6}, Landroidx/collection/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 507
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    .line 510
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 513
    move-result v1

    .line 516
    move v6, v5

    .line 517
    :goto_13
    if-ge v6, v1, :cond_1f

    .line 518
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 520
    move-result-object v7

    .line 523
    check-cast v7, Landroid/view/View;

    .line 524
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 526
    add-int/lit8 v6, v6, 0x1

    .line 529
    goto :goto_13

    .line 531
    :cond_1f
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 532
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconSize:I

    .line 534
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mIconHPadding:I

    .line 536
    mul-int/lit8 v6, v6, 0x2

    .line 538
    add-int/2addr v6, v3

    .line 540
    invoke-direct {v1, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 541
    move v3, v5

    .line 544
    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 545
    move-result v6

    .line 548
    if-ge v3, v6, :cond_21

    .line 549
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 551
    move-result-object v6

    .line 554
    check-cast v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 555
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 557
    invoke-virtual {v6}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    .line 560
    move-result-object v7

    .line 563
    if-nez v7, :cond_20

    .line 564
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mUpdateStatusBarIcons:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$$ExternalSyntheticLambda0;

    .line 566
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->setOnDismissListener(Ljava/lang/Runnable;)V

    .line 568
    invoke-virtual {v0, v6, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 571
    :cond_20
    add-int/lit8 v3, v3, 0x1

    .line 574
    goto :goto_14

    .line 576
    :cond_21
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 577
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 580
    move-result p0

    .line 583
    move v1, v5

    .line 584
    :goto_15
    if-ge v1, p0, :cond_23

    .line 585
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 587
    move-result-object v3

    .line 590
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 591
    move-result-object v4

    .line 594
    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 595
    if-ne v3, v4, :cond_22

    .line 597
    goto :goto_16

    .line 599
    :cond_22
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 600
    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 603
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 606
    goto :goto_15

    .line 608
    :cond_23
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setChangingViewPositions(Z)V

    .line 609
    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setReplacingIcons(Landroidx/collection/ArrayMap;)V

    .line 612
    return-void
    .line 615
.end method

.method public final updateTintForIcon(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    const v1, 0x7f0a0420    # @id/icon_is_pre_L

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    const v1, 0x7f0a041f    # @id/icon_is_grayscale

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 35
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mContrastColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 36
    invoke-virtual {v3, v0}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    .line 38
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v3

    .line 45
    invoke-virtual {p1, v1, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 46
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    move v0, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 54
    :goto_2
    if-eqz v0, :cond_3

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mTintAreas:Ljava/util/ArrayList;

    .line 57
    invoke-static {p0, p1, p2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 59
    move-result v2

    .line 62
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    .line 66
    return-void
    .line 69
.end method
