.class public final Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->$r8$classId:I

    .line 2
    const-string v1, "BrightnessController"

    .line 4
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_2

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 12
    iget-boolean v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mAutomaticAvailable:Z

    .line 14
    if-eqz v1, :cond_1

    .line 16
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object v0

    .line 23
    const-string/jumbo v1, "screen_brightness_mode"

    .line 24
    const/4 v3, -0x2

    .line 27
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 28
    move-result v0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    const/4 v2, 0x1

    .line 36
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mAutomatic:Z

    .line 37
    :cond_1
    return-void

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 40
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 42
    if-eqz v2, :cond_2

    .line 44
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mVrStateCallbacks:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$6;

    .line 46
    invoke-interface {v2, v0}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v2, "Failed to unregister VR mode state listener: "

    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 58
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBrightnessObserver:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    const-string v2, "BrightnessObserver: stopObserving."

    .line 65
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 70
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 78
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 81
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 83
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayListener:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$1;

    .line 85
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 92
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 94
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 96
    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 98
    return-void

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 102
    iput-boolean v2, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mControlValueInitialized:Z

    .line 104
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 106
    if-eqz v3, :cond_3

    .line 108
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mVrStateCallbacks:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$6;

    .line 110
    invoke-interface {v3, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 115
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 117
    invoke-interface {v3}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    .line 119
    move-result v3

    .line 122
    iput-boolean v3, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mIsVrModeEnabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    .line 126
    const-string v3, "Failed to register VR mode state listener: "

    .line 127
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 132
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBrightnessObserver:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    const-string v3, "BrightnessObserver: startObserving."

    .line 139
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 144
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 148
    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    sget-object v3, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 155
    const/4 v4, -0x1

    .line 157
    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 158
    sget-object v3, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->DURATION_SLIDE_BAR_ANIMATION:Landroid/net/Uri;

    .line 161
    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 166
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 168
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayListener:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$1;

    .line 170
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mHandler:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;

    .line 172
    const-wide/16 v3, 0x8

    .line 174
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 179
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 181
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUserTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 183
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 187
    move-result-object v0

    .line 190
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 191
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 196
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateModeRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    .line 198
    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->run()V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 203
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->isUserChanged:Z

    .line 205
    if-nez v0, :cond_4

    .line 207
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 209
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->run()V

    .line 213
    :cond_4
    return-void

    .line 216
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 217
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mIsVrModeEnabled:Z

    .line 219
    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 221
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 225
    move-result-object v1

    .line 228
    invoke-virtual {v1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 229
    move-result-object v1

    .line 232
    if-nez v1, :cond_5

    .line 233
    goto :goto_3

    .line 235
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 236
    iget v4, v1, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    .line 238
    iput v4, v3, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mMaximumBacklight:F

    .line 240
    iget v4, v1, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    .line 242
    iput v4, v3, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mMinimumBacklight:F

    .line 244
    iget v1, v1, Landroid/hardware/display/BrightnessInfo;->brightness:F

    .line 246
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 248
    move-result v1

    .line 251
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$2;->this$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 252
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mHandler:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$7;

    .line 254
    invoke-virtual {p0, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 256
    move-result-object p0

    .line 259
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 260
    :goto_3
    return-void

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 264
.end method
