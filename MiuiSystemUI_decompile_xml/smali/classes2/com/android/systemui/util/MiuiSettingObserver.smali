.class public abstract Lcom/android/systemui/util/MiuiSettingObserver;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mDefaultValue:I

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mListening:Z

.field public mObservedValue:I

.field public final mSettingName:Ljava/lang/String;

.field public final mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public mUserId:I

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/MiuiSettingObserver;-><init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p4}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    new-instance p4, Lcom/android/systemui/util/MiuiSettingObserver$1;

    invoke-direct {p4, p0}, Lcom/android/systemui/util/MiuiSettingObserver$1;-><init>(Lcom/android/systemui/util/MiuiSettingObserver;)V

    iput-object p4, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 5
    iput-object p5, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mSettingName:Ljava/lang/String;

    .line 6
    iput p7, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mDefaultValue:I

    iput p7, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mObservedValue:I

    .line 7
    iput-object p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 8
    iput-object p2, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput p6, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserId:I

    return-void
.end method


# virtual methods
.method public abstract handleValueChanged(IZ)V
.end method

.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mSettingName:Ljava/lang/String;

    .line 4
    iget v1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mDefaultValue:I

    .line 6
    iget v2, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserId:I

    .line 8
    invoke-interface {p1, v1, v2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 10
    move-result p1

    .line 13
    iget v0, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mObservedValue:I

    .line 14
    if-eq p1, v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mObservedValue:I

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->handleValueChanged(IZ)V

    .line 23
    return-void
    .line 26
.end method

.method public final setListening(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mListening:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mListening:Z

    .line 7
    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 15
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 19
    iget-object p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 22
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 26
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserId:I

    .line 30
    iget-object p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mSettingName:Ljava/lang/String;

    .line 34
    invoke-interface {p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    move-result-object v0

    .line 39
    iget v1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserId:I

    .line 40
    const/4 v2, 0x0

    .line 42
    invoke-interface {p1, v0, v2, p0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/android/systemui/util/MiuiSettingObserver;->onChange(Z)V

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 52
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 54
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mSettingsProxy:Lcom/android/systemui/util/settings/SettingsProxy;

    .line 59
    invoke-interface {p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 61
    :goto_0
    return-void
    .line 64
.end method
