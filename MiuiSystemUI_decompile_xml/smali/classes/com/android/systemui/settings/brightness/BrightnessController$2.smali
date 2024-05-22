.class public final Lcom/android/systemui/settings/brightness/BrightnessController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_4

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 11
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v0

    .line 18
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 19
    iget-object v3, v3, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 21
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 23
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 25
    move-result v3

    .line 28
    const-string/jumbo v4, "screen_brightness_mode"

    .line 29
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 32
    move-result v0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 36
    if-eqz v0, :cond_0

    .line 38
    move v1, v2

    .line 40
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mAutomatic:Z

    .line 41
    return-void

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 44
    iget-boolean v3, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    .line 46
    if-nez v3, :cond_1

    .line 48
    goto/16 :goto_1

    .line 50
    :cond_1
    iput-boolean v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    .line 52
    iget-object v3, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 54
    if-eqz v3, :cond_2

    .line 56
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;

    .line 58
    invoke-interface {v3, v0}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v3, "CentralSurfaces.BrightnessController"

    .line 65
    const-string v4, "Failed to unregister VR mode state listener: "

    .line 67
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 72
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 74
    iget-object v3, v0, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 76
    iget-object v3, v3, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    move-result-object v3

    .line 83
    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 84
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 87
    iget-object v3, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 89
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

    .line 91
    check-cast v3, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 93
    iget-object v4, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 95
    monitor-enter v4

    .line 97
    :try_start_1
    iget-object v5, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 98
    new-instance v6, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;

    .line 100
    invoke-direct {v6, v0, v1}, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController$1;I)V

    .line 102
    check-cast v5, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 107
    move-result v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    iget-object v1, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayCallbacks:Ljava/util/List;

    .line 113
    check-cast v1, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    iget-object v1, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 123
    iget-object v5, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;

    .line 125
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    :cond_3
    monitor-exit v4

    .line 130
    iget-object v1, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    .line 131
    monitor-enter v1

    .line 133
    :try_start_2
    iget-object v4, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    .line 134
    new-instance v5, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;

    .line 136
    invoke-direct {v5, v0, v2}, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$1$changed$1;-><init>(Lcom/android/systemui/settings/brightness/BrightnessController$1;I)V

    .line 138
    check-cast v4, Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 143
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    iget-object v0, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    .line 149
    check-cast v0, Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 153
    move-result v0

    .line 156
    if-eqz v0, :cond_4

    .line 157
    iget-object v0, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 159
    iget-object v2, v3, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayBrightnessChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;

    .line 161
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :cond_4
    monitor-exit v1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 167
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 169
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 171
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 173
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 178
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 180
    const/4 v0, 0x3

    .line 182
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    :goto_1
    return-void

    .line 186
    :catchall_0
    move-exception p0

    .line 187
    monitor-exit v1

    .line 188
    throw p0

    .line 189
    :catchall_1
    move-exception p0

    .line 190
    monitor-exit v4

    .line 191
    throw p0

    .line 192
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mControl:Lcom/android/systemui/settings/brightness/ToggleSlider;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 197
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 199
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 203
    move-result p0

    .line 206
    const-string v2, "no_config_brightness"

    .line 207
    invoke-static {v1, v2, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 209
    move-result-object p0

    .line 212
    invoke-interface {v0, p0}, Lcom/android/systemui/settings/brightness/ToggleSlider;->setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 213
    return-void

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 217
    iget-boolean v3, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    .line 219
    if-eqz v3, :cond_5

    .line 221
    goto/16 :goto_3

    .line 223
    :cond_5
    iput-boolean v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mListening:Z

    .line 225
    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 227
    if-eqz v2, :cond_6

    .line 229
    :try_start_3
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrStateCallbacks:Lcom/android/systemui/settings/brightness/BrightnessController$6;

    .line 231
    invoke-interface {v2, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 236
    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 238
    invoke-interface {v2}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    .line 240
    move-result v2

    .line 243
    iput-boolean v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 244
    goto :goto_2

    .line 246
    :catch_1
    move-exception v0

    .line 247
    const-string v2, "CentralSurfaces.BrightnessController"

    .line 248
    const-string v3, "Failed to register VR mode state listener: "

    .line 250
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 255
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;

    .line 257
    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 259
    iget-object v2, v2, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 263
    move-result-object v2

    .line 266
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    sget-object v3, Lcom/android/systemui/settings/brightness/BrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 270
    const/4 v4, -0x1

    .line 272
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 273
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 276
    iget-object v2, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 278
    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessListener:Lcom/android/systemui/settings/brightness/BrightnessController$1;

    .line 280
    new-instance v3, Landroid/os/HandlerExecutor;

    .line 282
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 284
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 286
    invoke-direct {v3, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 288
    check-cast v2, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 291
    iget-object v0, v2, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    .line 293
    monitor-enter v0

    .line 295
    :try_start_4
    iget-object v4, v2, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    .line 296
    check-cast v4, Ljava/util/ArrayList;

    .line 298
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 300
    move-result v4

    .line 303
    if-eqz v4, :cond_7

    .line 304
    iget-object v4, v2, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 306
    iget-object v5, v2, Lcom/android/systemui/settings/DisplayTrackerImpl;->displayBrightnessChangedListener:Lcom/android/systemui/settings/DisplayTrackerImpl$displayChangedListener$1;

    .line 308
    iget-object v6, v2, Lcom/android/systemui/settings/DisplayTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    .line 310
    const-wide/16 v7, 0x8

    .line 312
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 314
    :cond_7
    iget-object v2, v2, Lcom/android/systemui/settings/DisplayTrackerImpl;->brightnessCallbacks:Ljava/util/List;

    .line 317
    new-instance v4, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 319
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 321
    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 323
    invoke-direct {v4, v5, v3}, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;)V

    .line 326
    check-cast v2, Ljava/util/ArrayList;

    .line 329
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 331
    monitor-exit v0

    .line 334
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 335
    iget-object v1, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 337
    iget-object v2, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 339
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 341
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 343
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 348
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateModeRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 350
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController$2;->run()V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 355
    iget-object v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/settings/brightness/BrightnessController$2;

    .line 357
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController$2;->run()V

    .line 359
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 362
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 364
    const/4 v0, 0x2

    .line 366
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    :goto_3
    return-void

    .line 370
    :catchall_2
    move-exception p0

    .line 371
    monitor-exit v0

    .line 372
    throw p0

    .line 373
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 374
    iget-boolean v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    .line 376
    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 378
    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    .line 380
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 382
    move-result-object v1

    .line 385
    invoke-virtual {v1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 386
    move-result-object v1

    .line 389
    if-nez v1, :cond_8

    .line 390
    goto :goto_5

    .line 392
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 393
    iget v4, v1, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    .line 395
    iput v4, v3, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    .line 397
    iget v4, v1, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    .line 399
    iput v4, v3, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    .line 401
    iget v1, v1, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 403
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 405
    move-result v1

    .line 408
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$2;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    .line 409
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mHandler:Lcom/android/systemui/settings/brightness/BrightnessController$7;

    .line 411
    invoke-virtual {p0, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 413
    move-result-object p0

    .line 416
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 417
    :goto_5
    return-void

    .line 420
    nop

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 422
.end method
