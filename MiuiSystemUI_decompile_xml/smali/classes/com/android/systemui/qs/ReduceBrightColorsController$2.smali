.class public final Lcom/android/systemui/qs/ReduceBrightColorsController$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/ReduceBrightColorsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 2
    iget-object p2, p2, Lcom/android/systemui/qs/ReduceBrightColorsController;->mListeners:Ljava/util/ArrayList;

    .line 4
    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/qs/ReduceBrightColorsController;->mListeners:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 17
    iget-object v1, v0, Lcom/android/systemui/qs/ReduceBrightColorsController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/qs/ReduceBrightColorsController;->mContentObserver:Lcom/android/systemui/qs/ReduceBrightColorsController$1;

    .line 21
    invoke-interface {v1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/ReduceBrightColorsController$2;->this$0:Lcom/android/systemui/qs/ReduceBrightColorsController;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/qs/ReduceBrightColorsController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 28
    const-string v1, "reduce_bright_colors_activated"

    .line 30
    iget-object p0, p0, Lcom/android/systemui/qs/ReduceBrightColorsController;->mContentObserver:Lcom/android/systemui/qs/ReduceBrightColorsController$1;

    .line 32
    const/4 v2, 0x0

    .line 34
    invoke-interface {v0, v1, v2, p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    .line 35
    :cond_0
    monitor-exit p2

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
    .line 42
.end method
