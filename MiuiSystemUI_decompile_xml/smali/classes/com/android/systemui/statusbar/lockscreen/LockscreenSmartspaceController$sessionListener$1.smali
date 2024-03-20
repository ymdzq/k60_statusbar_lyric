.class public final Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->onTargetsAvailable(Ljava/util/List;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 20
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v0

    .line 30
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 31
    move-result-object v0

    .line 34
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v1

    .line 38
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v2, :cond_3

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 50
    move-object v5, v2

    .line 51
    check-cast v5, Landroid/app/smartspace/SmartspaceTarget;

    .line 52
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 54
    move-result v6

    .line 57
    if-ne v6, v4, :cond_2

    .line 58
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    .line 60
    move-result-wide v6

    .line 63
    invoke-static {v6, v7}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 64
    move-result-object v6

    .line 67
    invoke-virtual {v0, v6}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    .line 68
    move-result v6

    .line 71
    if-eqz v6, :cond_2

    .line 72
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getExpiryTimeMillis()J

    .line 74
    move-result-wide v5

    .line 77
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 78
    move-result-object v5

    .line 81
    invoke-virtual {v0, v5}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    .line 82
    move-result v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    move v5, v4

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move v5, v3

    .line 90
    :goto_0
    if-eqz v5, :cond_1

    .line 91
    goto :goto_1

    .line 93
    :cond_3
    const/4 v2, 0x0

    .line 94
    :goto_1
    check-cast v2, Landroid/app/smartspace/SmartspaceTarget;

    .line 95
    if-eqz v2, :cond_4

    .line 97
    sget-object v0, Lcom/android/systemui/plugins/WeatherData;->Companion:Lcom/android/systemui/plugins/WeatherData$Companion;

    .line 99
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    .line 101
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    .line 105
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/WeatherData$Companion;->fromBundle(Landroid/os/Bundle;)Lcom/android/systemui/plugins/WeatherData;

    .line 109
    move-result-object v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 115
    iget-object v1, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 117
    iget-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 119
    new-instance v5, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;

    .line 121
    invoke-direct {v5, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/WeatherData;)V

    .line 123
    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object p1

    .line 139
    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v2

    .line 143
    if-eqz v2, :cond_b

    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v2

    .line 149
    move-object v5, v2

    .line 150
    check-cast v5, Landroid/app/smartspace/SmartspaceTarget;

    .line 151
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    .line 153
    move-result v6

    .line 156
    if-eqz v6, :cond_6

    .line 157
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 159
    move-result v5

    .line 162
    if-eq v5, v4, :cond_a

    .line 163
    goto :goto_3

    .line 165
    :cond_6
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showNotifications:Z

    .line 166
    if-nez v6, :cond_7

    .line 168
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    .line 170
    move-result v5

    .line 173
    if-ne v5, v4, :cond_a

    .line 174
    goto :goto_3

    .line 176
    :cond_7
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getUserHandle()Landroid/os/UserHandle;

    .line 177
    move-result-object v6

    .line 180
    iget-object v7, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 181
    check-cast v7, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 183
    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 185
    move-result-object v8

    .line 188
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    move-result v8

    .line 192
    if-eqz v8, :cond_8

    .line 193
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->isSensitive()Z

    .line 195
    move-result v5

    .line 198
    if-eqz v5, :cond_9

    .line 199
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showSensitiveContentForCurrentUser:Z

    .line 201
    if-eqz v5, :cond_a

    .line 203
    goto :goto_3

    .line 205
    :cond_8
    iget-object v8, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->managedUserHandle:Landroid/os/UserHandle;

    .line 206
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    move-result v6

    .line 211
    if-eqz v6, :cond_a

    .line 212
    invoke-virtual {v7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 214
    move-result-object v6

    .line 217
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 218
    move-result v6

    .line 221
    if-nez v6, :cond_a

    .line 222
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->isSensitive()Z

    .line 224
    move-result v5

    .line 227
    if-eqz v5, :cond_9

    .line 228
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->showSensitiveContentForManagedUser:Z

    .line 230
    if-eqz v5, :cond_a

    .line 232
    :cond_9
    :goto_3
    move v5, v4

    .line 234
    goto :goto_4

    .line 235
    :cond_a
    move v5, v3

    .line 236
    :goto_4
    if-eqz v5, :cond_5

    .line 237
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    goto :goto_2

    .line 242
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 243
    iget-object p1, p1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 245
    if-eqz p1, :cond_c

    .line 247
    invoke-interface {p1, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->onTargetsAvailable(Ljava/util/List;)V

    .line 249
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 252
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isRegionSamplersCreated:Z

    .line 254
    if-nez v0, :cond_e

    .line 256
    iget-object p1, p1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->smartspaceViews:Ljava/util/Set;

    .line 258
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 260
    move-result-object p1

    .line 263
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    move-result v0

    .line 267
    if-eqz v0, :cond_d

    .line 268
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    move-result-object v0

    .line 273
    check-cast v0, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 276
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    goto :goto_5

    .line 281
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 282
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isRegionSamplersCreated:Z

    .line 284
    :cond_e
    return-void
    .line 286
.end method
