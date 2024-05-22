.class public final Lcom/android/keyguard/clock/ClockManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBuiltinClocks:Ljava/util/List;

.field public final mContentObserver:Lcom/android/keyguard/clock/ClockManager$1;

.field public final mHeight:I

.field public final mListeners:Ljava/util/Map;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

.field public final mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWidth:I


# direct methods
.method public static -$$Nest$mreload(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 2
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    .line 7
    new-instance v1, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda1;

    .line 9
    invoke-direct {v1, p0}, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    .line 11
    check-cast v0, Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    return-void
    .line 19
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    .line 7
    new-instance p5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p5, p7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager;->mMainHandler:Landroid/os/Handler;

    .line 8
    new-instance p7, Lcom/android/keyguard/clock/ClockManager$1;

    invoke-direct {p7, p0, p5}, Lcom/android/keyguard/clock/ClockManager$1;-><init>(Lcom/android/keyguard/clock/ClockManager;Landroid/os/Handler;)V

    iput-object p7, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Lcom/android/keyguard/clock/ClockManager$1;

    .line 9
    new-instance p5, Lcom/android/keyguard/clock/ClockManager$2;

    invoke-direct {p5, p0}, Lcom/android/keyguard/clock/ClockManager$2;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 10
    new-instance p5, Landroid/util/ArrayMap;

    invoke-direct {p5}, Landroid/util/ArrayMap;-><init>()V

    iput-object p5, p0, Lcom/android/keyguard/clock/ClockManager;->mListeners:Ljava/util/Map;

    .line 11
    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 12
    iput-object p8, p0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    .line 13
    iput-object p6, p0, Lcom/android/keyguard/clock/ClockManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 14
    new-instance p3, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    invoke-direct {p3, p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    iput-object p3, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 16
    new-instance p3, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/keyguard/clock/ClockManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;)V

    invoke-virtual {p0, p3}, Lcom/android/keyguard/clock/ClockManager;->addBuiltinClock(Ljava/util/function/Supplier;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 18
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/keyguard/clock/ClockManager;->mWidth:I

    .line 19
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/keyguard/clock/ClockManager;->mHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v8, Lcom/android/keyguard/clock/SettingsWrapper;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/keyguard/clock/SettingsWrapper$Migrator;

    invoke-direct {v1, v0}, Lcom/android/keyguard/clock/SettingsWrapper$Migrator;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v8, v0, v1}, Lcom/android/keyguard/clock/SettingsWrapper;-><init>(Landroid/content/ContentResolver;Lcom/android/keyguard/clock/SettingsWrapper$Migration;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, p5

    .line 4
    invoke-direct/range {v0 .. v9}, Lcom/android/keyguard/clock/ClockManager;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/ContentResolver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/keyguard/clock/SettingsWrapper;Lcom/android/systemui/dock/DockManager;)V

    return-void
.end method


# virtual methods
.method public addBuiltinClock(Ljava/util/function/Supplier;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager;->mPreviewClocks:Lcom/android/keyguard/clock/ClockManager$AvailableClocks;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mBuiltinClocks:Ljava/util/List;

    .line 13
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
    .line 20
.end method

.method public getContentObserver()Landroid/database/ContentObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager;->mContentObserver:Lcom/android/keyguard/clock/ClockManager$1;

    .line 2
    return-object p0
    .line 4
.end method

.method public isDocked()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
