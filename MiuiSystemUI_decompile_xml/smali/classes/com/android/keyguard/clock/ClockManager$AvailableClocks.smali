.class public final Lcom/android/keyguard/clock/ClockManager$AvailableClocks;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public final mClockInfo:Ljava/util/List;

.field public final mClocks:Ljava/util/Map;

.field public mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

.field public final synthetic this$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v4

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    check-cast v0, Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    .line 25
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 30
    new-instance v3, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;

    .line 31
    const/4 v1, 0x0

    .line 33
    invoke-direct {v3, p1, v1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/ClockPlugin;I)V

    .line 34
    new-instance v5, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;

    .line 37
    const/4 v1, 0x1

    .line 39
    invoke-direct {v5, p1, v1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/ClockPlugin;I)V

    .line 40
    new-instance v6, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;

    .line 43
    invoke-direct {v6, p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/clock/ClockManager$AvailableClocks;Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 45
    new-instance p0, Lcom/android/keyguard/clock/ClockInfo;

    .line 48
    move-object v1, p0

    .line 50
    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/clock/ClockInfo;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
    .line 59
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/ClockPlugin;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    .line 4
    iget-object p2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 7
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    move p2, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p2, v1

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    .line 16
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 19
    if-ne p1, v2, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_1
    if-nez p2, :cond_2

    .line 25
    if-eqz v0, :cond_3

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 29
    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->-$$Nest$mreload(Lcom/android/keyguard/clock/ClockManager;)V

    .line 31
    :cond_3
    return-void
    .line 34
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/ClockPlugin;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    .line 12
    check-cast v1, Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v4

    .line 28
    if-ge v2, v4, :cond_1

    .line 29
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/keyguard/clock/ClockInfo;

    .line 35
    iget-object v4, v4, Lcom/android/keyguard/clock/ClockInfo;->mId:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 52
    const/4 v2, 0x1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    move v0, v2

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v0, v1

    .line 59
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reloadCurrentClock()V

    .line 60
    iget-object v3, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 63
    if-ne p1, v3, :cond_3

    .line 65
    move v1, v2

    .line 67
    :cond_3
    if-nez v0, :cond_4

    .line 68
    if-eqz v1, :cond_5

    .line 70
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 72
    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->-$$Nest$mreload(Lcom/android/keyguard/clock/ClockManager;)V

    .line 74
    :cond_5
    return-void
    .line 77
.end method

.method public final reloadCurrentClock()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 2
    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager;->isDocked()Z

    .line 4
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    .line 8
    iget-object v3, v0, Lcom/android/keyguard/clock/ClockManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 10
    iget-object v0, v0, Lcom/android/keyguard/clock/ClockManager;->mSettingsWrapper:Lcom/android/keyguard/clock/SettingsWrapper;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    move-object v1, v3

    .line 16
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 17
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 19
    move-result v1

    .line 22
    iget-object v4, v0, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 23
    const-string v5, "docked_clock_face"

    .line 25
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    move-object v4, v2

    .line 33
    check-cast v4, Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/systemui/plugins/ClockPlugin;

    .line 40
    if-eqz v1, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :cond_1
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 46
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 48
    move-result v3

    .line 51
    iget-object v4, v0, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    const-string v5, "lock_screen_custom_clock_face"

    .line 54
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 59
    invoke-virtual {v0, v4, v3}, Lcom/android/keyguard/clock/SettingsWrapper;->decode(Ljava/lang/String;I)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    check-cast v2, Landroid/util/ArrayMap;

    .line 66
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    .line 72
    move-object v1, v0

    .line 74
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    .line 75
    return-void
    .line 77
.end method
