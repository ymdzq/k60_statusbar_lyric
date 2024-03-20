.class public final Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;
.super Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mActivityUtil:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDisableFloatNotification:Z

.field public final mDisplayId:I

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mIsStatusBarHidden:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

.field public final mMiuiBarrageController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

.field public final mMiuiBubbleController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;

.field public final mNotificationSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

.field public final mSettingsManager:Lcom/miui/systemui/SettingsManager;

.field public mSoftInputVisible:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/os/PowerManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/miui/systemui/SettingsManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;Lcom/android/systemui/log/NotificationAlertLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p21

    move-object/from16 v13, p22

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;-><init>(Landroid/content/ContentResolver;Landroid/os/PowerManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V

    move-object/from16 v0, p1

    .line 2
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mDisplayId:I

    .line 4
    iput-object v15, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v0, p13

    .line 5
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v0, p14

    .line 6
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    move-object/from16 v0, p15

    .line 7
    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v0, p16

    .line 8
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v0, p17

    .line 9
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mNotificationSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    move-object/from16 v0, p20

    .line 10
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    move-object/from16 v0, p19

    .line 11
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mMiuiBarrageController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    move-object/from16 v0, p8

    .line 12
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object/from16 v0, p18

    .line 13
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mMiuiBubbleController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;

    move-object/from16 v0, p7

    .line 14
    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 15
    const-class v0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    iput-object v0, v14, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mActivityUtil:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl$1;

    invoke-direct {v0, v14}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;)V

    invoke-interface {v15, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method


# virtual methods
.method public final checkHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 6
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 8
    move-result v2

    .line 11
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 12
    const/4 v10, 0x0

    .line 14
    const/4 v11, 0x1

    .line 15
    const/4 v12, 0x0

    .line 16
    const-string v13, "InterruptionStateProvider"

    .line 17
    if-eqz v2, :cond_c

    .line 19
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 21
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 25
    move-result v1

    .line 28
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 29
    invoke-virtual {v2, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    .line 31
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    if-eqz p2, :cond_37

    .line 37
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 42
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    goto/16 :goto_13

    .line 48
    :cond_0
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 50
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingSettingDisabled$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingSettingDisabled$2;

    .line 52
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 54
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 56
    move-result-object v1

    .line 59
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 60
    goto/16 :goto_13

    .line 63
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 65
    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 67
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    .line 69
    if-eqz v1, :cond_3

    .line 71
    if-eqz p2, :cond_37

    .line 73
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 78
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    goto/16 :goto_13

    .line 84
    :cond_2
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 86
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingBatteryDisabled$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingBatteryDisabled$2;

    .line 88
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 90
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 92
    move-result-object v1

    .line 95
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 96
    goto/16 :goto_13

    .line 99
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 101
    move-result v1

    .line 104
    if-nez v1, :cond_4

    .line 105
    if-eqz p2, :cond_37

    .line 107
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoPulsingNoAlert(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 109
    goto/16 :goto_13

    .line 112
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertHeadsUpCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 114
    move-result v1

    .line 117
    if-nez v1, :cond_5

    .line 118
    if-eqz p2, :cond_37

    .line 120
    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logNoPulsingNoAlert(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 122
    goto/16 :goto_13

    .line 125
    :cond_5
    const/16 v1, 0x80

    .line 127
    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    .line 129
    move-result v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    if-eqz p2, :cond_37

    .line 135
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 140
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingNoAmbientEffect$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingNoAmbientEffect$2;

    .line 142
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 144
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 146
    move-result-object v1

    .line 149
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 150
    goto/16 :goto_13

    .line 153
    :cond_6
    iget-object v1, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 155
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getLockscreenVisibilityOverride()I

    .line 157
    move-result v1

    .line 160
    if-nez v1, :cond_8

    .line 161
    if-eqz p2, :cond_37

    .line 163
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 168
    move-result v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    goto/16 :goto_13

    .line 174
    :cond_7
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 176
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingNotificationHidden$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingNotificationHidden$2;

    .line 178
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 180
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 182
    move-result-object v1

    .line 185
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 186
    goto/16 :goto_13

    .line 189
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 191
    move-result v1

    .line 194
    const/4 v2, 0x3

    .line 195
    if-ge v1, v2, :cond_a

    .line 196
    if-eqz p2, :cond_37

    .line 198
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 203
    move-result v1

    .line 206
    if-eqz v1, :cond_9

    .line 207
    goto/16 :goto_13

    .line 209
    :cond_9
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 211
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingNotImportant$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoPulsingNotImportant$2;

    .line 213
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 215
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 217
    move-result-object v1

    .line 220
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 221
    goto/16 :goto_13

    .line 224
    :cond_a
    if-eqz p2, :cond_3c

    .line 226
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 231
    move-result v1

    .line 234
    if-eqz v1, :cond_b

    .line 235
    goto/16 :goto_14

    .line 237
    :cond_b
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 239
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logPulsing$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logPulsing$2;

    .line 241
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 243
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 245
    move-result-object v1

    .line 248
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 249
    goto/16 :goto_14

    .line 252
    :cond_c
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 254
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUseHeadsUp:Z

    .line 256
    if-nez v3, :cond_d

    .line 258
    if-eqz p2, :cond_37

    .line 260
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 265
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpFeatureDisabled$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpFeatureDisabled$2;

    .line 267
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 269
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 271
    move-result-object v1

    .line 274
    invoke-virtual {v3, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 275
    goto/16 :goto_13

    .line 278
    :cond_d
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 280
    move-result v3

    .line 283
    if-nez v3, :cond_e

    .line 284
    goto/16 :goto_13

    .line 286
    :cond_e
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertHeadsUpCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 288
    move-result v3

    .line 291
    if-nez v3, :cond_f

    .line 292
    goto/16 :goto_13

    .line 294
    :cond_f
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    .line 296
    move-result v3

    .line 299
    if-nez v3, :cond_10

    .line 300
    goto/16 :goto_13

    .line 302
    :cond_10
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 304
    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 306
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 308
    move-result v3

    .line 311
    if-lez v3, :cond_11

    .line 312
    move v3, v11

    .line 314
    goto :goto_0

    .line 315
    :cond_11
    move v3, v12

    .line 316
    :goto_0
    sget-object v4, Lcom/android/systemui/SystemUIApplication;->sContext:Landroid/content/Context;

    .line 317
    sget-object v5, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 319
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 321
    move-result v5

    .line 324
    if-eqz v5, :cond_12

    .line 325
    goto :goto_2

    .line 327
    :cond_12
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 328
    move-result-object v5

    .line 331
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 332
    const-string/jumbo v6, "verify_code"

    .line 334
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 337
    move-result v5

    .line 340
    if-eqz v5, :cond_13

    .line 341
    goto :goto_2

    .line 343
    :cond_13
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 344
    move-result-object v5

    .line 347
    iget-object v5, v5, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 348
    if-eqz v5, :cond_14

    .line 350
    move v5, v11

    .line 352
    goto :goto_1

    .line 353
    :cond_14
    move v5, v12

    .line 354
    :goto_1
    if-eqz v5, :cond_15

    .line 355
    :goto_2
    move v5, v11

    .line 357
    goto :goto_3

    .line 358
    :cond_15
    move v5, v12

    .line 359
    :goto_3
    if-eqz v5, :cond_16

    .line 360
    goto :goto_5

    .line 362
    :cond_16
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 363
    move-result-object v4

    .line 366
    const-string v5, "miui_float_notification_snooze_strategy"

    .line 367
    invoke-static {v4, v5, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 369
    move-result v4

    .line 372
    if-nez v4, :cond_18

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 375
    move-result-wide v3

    .line 378
    sget-wide v5, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector;->sSnoozeUntil:J

    .line 379
    cmp-long v3, v3, v5

    .line 381
    if-gtz v3, :cond_17

    .line 383
    move v3, v11

    .line 385
    goto :goto_4

    .line 386
    :cond_17
    move v3, v12

    .line 387
    goto :goto_4

    .line 388
    :cond_18
    if-ne v4, v11, :cond_19

    .line 389
    :goto_4
    move v14, v3

    .line 391
    goto :goto_6

    .line 392
    :cond_19
    :goto_5
    move v14, v12

    .line 393
    :goto_6
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 394
    move-result-object v2

    .line 397
    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 398
    if-eqz v2, :cond_1a

    .line 400
    move v2, v11

    .line 402
    goto :goto_7

    .line 403
    :cond_1a
    move v2, v12

    .line 404
    :goto_7
    if-eqz v14, :cond_1c

    .line 405
    if-nez v2, :cond_1c

    .line 407
    if-eqz p2, :cond_37

    .line 409
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 414
    move-result v1

    .line 417
    if-eqz v1, :cond_1b

    .line 418
    goto/16 :goto_13

    .line 420
    :cond_1b
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 422
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpPackageSnoozed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpPackageSnoozed$2;

    .line 424
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 426
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 428
    move-result-object v1

    .line 431
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 432
    goto/16 :goto_13

    .line 435
    :cond_1c
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 437
    move-result v2

    .line 440
    if-nez v2, :cond_1d

    .line 441
    move v2, v11

    .line 443
    goto :goto_8

    .line 444
    :cond_1d
    move v2, v12

    .line 445
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    .line 446
    move-result v3

    .line 449
    if-eqz v3, :cond_1e

    .line 450
    if-eqz v2, :cond_1e

    .line 452
    if-eqz p2, :cond_37

    .line 454
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 459
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpAlreadyBubbled$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpAlreadyBubbled$2;

    .line 461
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 463
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 465
    move-result-object v1

    .line 468
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 469
    goto/16 :goto_13

    .line 472
    :cond_1e
    const/16 v2, 0x10

    .line 474
    invoke-virtual {v8, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressVisualEffect(I)Z

    .line 476
    move-result v2

    .line 479
    if-eqz v2, :cond_20

    .line 480
    if-eqz p2, :cond_37

    .line 482
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 487
    move-result v1

    .line 490
    if-eqz v1, :cond_1f

    .line 491
    goto/16 :goto_13

    .line 493
    :cond_1f
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 495
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpSuppressedByDnd$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpSuppressedByDnd$2;

    .line 497
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 499
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 501
    move-result-object v1

    .line 504
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 505
    goto/16 :goto_13

    .line 508
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 510
    move-result v2

    .line 513
    const/4 v3, 0x4

    .line 514
    if-ge v2, v3, :cond_23

    .line 515
    if-eqz p2, :cond_22

    .line 517
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 522
    move-result v2

    .line 525
    if-eqz v2, :cond_21

    .line 526
    goto :goto_9

    .line 528
    :cond_21
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 529
    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpNotImportant$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpNotImportant$2;

    .line 531
    iget-object v4, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 533
    invoke-virtual {v4, v13, v2, v3, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 535
    move-result-object v2

    .line 538
    invoke-static {v8, v2, v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 539
    :cond_22
    :goto_9
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 542
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 544
    move-result v2

    .line 547
    if-nez v2, :cond_23

    .line 548
    goto/16 :goto_13

    .line 550
    :cond_23
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 552
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 554
    move-result v2

    .line 557
    if-eqz v2, :cond_24

    .line 558
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDreaming()Z

    .line 560
    move-result v1

    .line 563
    if-nez v1, :cond_24

    .line 564
    move v1, v11

    .line 566
    goto :goto_a

    .line 567
    :cond_24
    move v1, v12

    .line 568
    :goto_a
    if-nez v1, :cond_26

    .line 569
    if-eqz p2, :cond_37

    .line 571
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 576
    move-result v1

    .line 579
    if-eqz v1, :cond_25

    .line 580
    goto/16 :goto_13

    .line 582
    :cond_25
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 584
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpNotInUse$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpNotInUse$2;

    .line 586
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 588
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 590
    move-result-object v1

    .line 593
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 594
    goto/16 :goto_13

    .line 597
    :cond_26
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mFlags:Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    .line 599
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    sget-object v2, Lcom/android/systemui/flags/Flags;->NO_HUN_FOR_OLD_WHEN:Lcom/android/systemui/flags/ReleasedFlag;

    .line 604
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 606
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 608
    invoke-virtual {v1, v2}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 610
    move-result v1

    .line 613
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 614
    if-nez v1, :cond_27

    .line 616
    goto :goto_b

    .line 618
    :cond_27
    iget-object v1, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 619
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 621
    move-result-object v1

    .line 624
    if-nez v1, :cond_28

    .line 625
    goto :goto_b

    .line 627
    :cond_28
    iget-wide v3, v1, Landroid/app/Notification;->when:J

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 630
    move-result-wide v5

    .line 633
    sub-long/2addr v5, v3

    .line 634
    const-wide/32 v16, 0x5265c00

    .line 635
    cmp-long v2, v5, v16

    .line 638
    if-gez v2, :cond_29

    .line 640
    goto :goto_b

    .line 642
    :cond_29
    const-wide/16 v16, 0x0

    .line 643
    cmp-long v2, v3, v16

    .line 645
    if-gtz v2, :cond_2a

    .line 647
    if-eqz p2, :cond_2d

    .line 649
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 651
    const-string/jumbo v7, "when <= 0"

    .line 653
    move-object/from16 v2, p1

    .line 656
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V

    .line 658
    goto :goto_b

    .line 661
    :cond_2a
    iget-object v2, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 662
    if-eqz v2, :cond_2b

    .line 664
    if-eqz p2, :cond_2d

    .line 666
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 668
    const-string v7, "full-screen intent"

    .line 670
    move-object/from16 v2, p1

    .line 672
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V

    .line 674
    goto :goto_b

    .line 677
    :cond_2b
    invoke-virtual {v1}, Landroid/app/Notification;->isForegroundService()Z

    .line 678
    move-result v2

    .line 681
    if-eqz v2, :cond_2c

    .line 682
    if-eqz p2, :cond_2d

    .line 684
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 686
    const-string v7, "foreground service"

    .line 688
    move-object/from16 v2, p1

    .line 690
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V

    .line 692
    goto :goto_b

    .line 695
    :cond_2c
    invoke-virtual {v1}, Landroid/app/Notification;->isUserInitiatedJob()Z

    .line 696
    move-result v1

    .line 699
    if-eqz v1, :cond_2e

    .line 700
    if-eqz p2, :cond_2d

    .line 702
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;

    .line 704
    const-string/jumbo v7, "user initiated job"

    .line 706
    move-object/from16 v2, p1

    .line 709
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->logMaybeHeadsUpDespiteOldWhen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;JJLjava/lang/String;)V

    .line 711
    :cond_2d
    :goto_b
    move v1, v12

    .line 714
    goto :goto_d

    .line 715
    :cond_2e
    if-eqz p2, :cond_30

    .line 716
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 721
    move-result v1

    .line 724
    if-eqz v1, :cond_2f

    .line 725
    goto :goto_c

    .line 727
    :cond_2f
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 728
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpOldWhen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpOldWhen$2;

    .line 730
    iget-object v7, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 732
    invoke-virtual {v7, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 734
    move-result-object v1

    .line 737
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 738
    move-result-object v2

    .line 741
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 742
    invoke-interface {v1, v3, v4}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 745
    invoke-interface {v1, v5, v6}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 748
    invoke-virtual {v7, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 751
    :cond_30
    :goto_c
    iget-object v1, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 754
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 756
    move-result v1

    .line 759
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 760
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 762
    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->HUN_SUPPRESSED_OLD_WHEN:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    .line 764
    invoke-interface {v15, v3, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 766
    move v1, v11

    .line 769
    :goto_d
    if-eqz v1, :cond_31

    .line 770
    goto/16 :goto_13

    .line 772
    :cond_31
    move v1, v12

    .line 774
    :goto_e
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl;->mSuppressors:Ljava/util/List;

    .line 775
    check-cast v2, Ljava/util/ArrayList;

    .line 777
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 779
    move-result v3

    .line 782
    if-ge v1, v3, :cond_39

    .line 783
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 785
    move-result-object v3

    .line 788
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    .line 789
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 791
    iget-object v4, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 794
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    .line 796
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 798
    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 800
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isOccluded()Z

    .line 802
    move-result v5

    .line 805
    if-eqz v5, :cond_34

    .line 806
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 808
    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 810
    iget v6, v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 812
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 814
    move-result v6

    .line 817
    if-nez v6, :cond_33

    .line 818
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 820
    move-result v4

    .line 823
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->isLockscreenPublicMode(I)Z

    .line 824
    move-result v4

    .line 827
    if-eqz v4, :cond_32

    .line 828
    goto :goto_f

    .line 830
    :cond_32
    move v4, v12

    .line 831
    goto :goto_10

    .line 832
    :cond_33
    :goto_f
    move v4, v11

    .line 833
    :goto_10
    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 834
    move-result v5

    .line 837
    if-eqz v4, :cond_34

    .line 838
    if-eqz v5, :cond_34

    .line 840
    goto :goto_11

    .line 842
    :cond_34
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 843
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 845
    move-result v3

    .line 848
    if-nez v3, :cond_35

    .line 849
    iget-object v3, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 851
    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 853
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 855
    move-result v3

    .line 858
    if-nez v3, :cond_35

    .line 859
    :goto_11
    move v3, v11

    .line 861
    goto :goto_12

    .line 862
    :cond_35
    move v3, v12

    .line 863
    :goto_12
    if-eqz v3, :cond_38

    .line 864
    if-eqz p2, :cond_37

    .line 866
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 868
    move-result-object v1

    .line 871
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$4;

    .line 872
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 874
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 877
    move-result v1

    .line 880
    if-eqz v1, :cond_36

    .line 881
    goto :goto_13

    .line 883
    :cond_36
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 884
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpSuppressedBy$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logNoHeadsUpSuppressedBy$2;

    .line 886
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 888
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 890
    move-result-object v1

    .line 893
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 894
    move-result-object v2

    .line 897
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 898
    const-string v2, "StatusBarNotificationPresenter"

    .line 901
    invoke-interface {v1, v2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v3, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 906
    :cond_37
    :goto_13
    move v1, v12

    .line 909
    goto :goto_15

    .line 910
    :cond_38
    add-int/lit8 v1, v1, 0x1

    .line 911
    goto/16 :goto_e

    .line 913
    :cond_39
    if-eqz v14, :cond_3a

    .line 915
    if-eqz p2, :cond_3c

    .line 917
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 922
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUpPackageSnoozeBypassedHasFsi$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUpPackageSnoozeBypassedHasFsi$2;

    .line 924
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 926
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 928
    move-result-object v1

    .line 931
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 932
    iget-object v1, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 935
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 937
    move-result v1

    .line 940
    iget-object v2, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 941
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 943
    sget-object v3, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;->HUN_SNOOZE_BYPASSED_POTENTIALLY_SUPPRESSED_FSI:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProviderImpl$NotificationInterruptEvent;

    .line 945
    invoke-interface {v15, v3, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 947
    goto :goto_14

    .line 950
    :cond_3a
    if-eqz p2, :cond_3c

    .line 951
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 953
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->skipLog(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 956
    move-result v1

    .line 959
    if-eqz v1, :cond_3b

    .line 960
    goto :goto_14

    .line 962
    :cond_3b
    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 963
    sget-object v2, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUp$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger$logHeadsUp$2;

    .line 965
    iget-object v3, v9, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 967
    invoke-virtual {v3, v13, v1, v2, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 969
    move-result-object v1

    .line 972
    invoke-static {v8, v1, v3, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 973
    :cond_3c
    :goto_14
    move v1, v11

    .line 976
    :goto_15
    if-eqz v1, :cond_60

    .line 977
    iget-object v1, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 979
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 981
    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 983
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 985
    move-result v2

    .line 988
    if-nez v2, :cond_3d

    .line 989
    const-string v1, "f,!Provisioned"

    .line 991
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 993
    goto/16 :goto_24

    .line 996
    :cond_3d
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 998
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 1000
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 1002
    if-eqz v2, :cond_3e

    .line 1004
    const-string v1, "f,Keyguard"

    .line 1006
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1008
    goto/16 :goto_24

    .line 1011
    :cond_3e
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1013
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 1015
    move-result-object v2

    .line 1018
    if-eqz v2, :cond_40

    .line 1019
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1021
    if-nez v3, :cond_3f

    .line 1023
    goto :goto_16

    .line 1025
    :cond_3f
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 1026
    if-eqz v4, :cond_40

    .line 1028
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 1030
    if-eqz v3, :cond_40

    .line 1032
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 1034
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 1036
    move-result v2

    .line 1039
    if-eqz v2, :cond_40

    .line 1040
    move v2, v11

    .line 1042
    goto :goto_17

    .line 1043
    :cond_40
    :goto_16
    move v2, v12

    .line 1044
    :goto_17
    if-eqz v2, :cond_41

    .line 1045
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 1047
    move-result v2

    .line 1050
    if-nez v2, :cond_41

    .line 1051
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isMissedCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 1053
    move-result v2

    .line 1056
    if-nez v2, :cond_41

    .line 1057
    const-string v1, "f,InCallHeadsUping"

    .line 1059
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1061
    goto/16 :goto_24

    .line 1064
    :cond_41
    sget-boolean v2, Lcom/miui/systemui/util/CommonUtil;->OWNER_USER_PROCESS:Z

    .line 1066
    const-class v2, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 1068
    invoke-static {v2}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1070
    move-result-object v2

    .line 1073
    check-cast v2, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 1074
    iget-object v2, v2, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 1076
    if-nez v2, :cond_42

    .line 1078
    goto :goto_18

    .line 1080
    :cond_42
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 1081
    move-result-object v10

    .line 1084
    :goto_18
    const-string v2, "com.android.incallui.InCallActivity"

    .line 1085
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1087
    move-result v2

    .line 1090
    if-eqz v2, :cond_43

    .line 1091
    const-class v2, Lcom/android/systemui/util/CallStateControllerImpl;

    .line 1093
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1095
    move-result-object v2

    .line 1098
    check-cast v2, Lcom/android/systemui/util/CallStateControllerImpl;

    .line 1099
    iget v3, v2, Lcom/android/systemui/util/CallStateControllerImpl;->slot1CallState:I

    .line 1101
    iget v2, v2, Lcom/android/systemui/util/CallStateControllerImpl;->slot2CallState:I

    .line 1103
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 1105
    move-result v2

    .line 1108
    if-ne v2, v11, :cond_43

    .line 1109
    move v2, v11

    .line 1111
    goto :goto_19

    .line 1112
    :cond_43
    move v2, v12

    .line 1113
    :goto_19
    if-eqz v2, :cond_45

    .line 1114
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 1116
    move-result v2

    .line 1119
    if-eqz v2, :cond_44

    .line 1120
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1122
    move-result-object v2

    .line 1125
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1126
    const-string v3, "hasVideoCall"

    .line 1128
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 1130
    move-result v2

    .line 1133
    if-eqz v2, :cond_44

    .line 1134
    move v2, v11

    .line 1136
    goto :goto_1a

    .line 1137
    :cond_44
    move v2, v12

    .line 1138
    :goto_1a
    if-nez v2, :cond_45

    .line 1139
    const-string v1, "f,InCallShowing"

    .line 1141
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1143
    goto/16 :goto_24

    .line 1146
    :cond_45
    const-class v2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 1148
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1150
    move-result-object v2

    .line 1153
    check-cast v2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 1154
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isCollapsed()Z

    .line 1156
    move-result v2

    .line 1159
    if-nez v2, :cond_46

    .line 1160
    const-string v1, "f,control center expanded"

    .line 1162
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1164
    goto/16 :goto_24

    .line 1167
    :cond_46
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1169
    move-result-object v2

    .line 1172
    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1173
    const-class v3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1175
    if-eqz v2, :cond_50

    .line 1177
    const-class v2, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 1179
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1181
    move-result-object v2

    .line 1184
    check-cast v2, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 1185
    iget-boolean v2, v2, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 1187
    if-eqz v2, :cond_47

    .line 1189
    const-string v1, "f, SuperSaveMode fullScreenIntent"

    .line 1191
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1193
    goto/16 :goto_24

    .line 1196
    :cond_47
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 1198
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 1200
    move-result v2

    .line 1203
    if-nez v2, :cond_4d

    .line 1204
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mContext:Landroid/content/Context;

    .line 1206
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 1208
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1210
    move-result-object v5

    .line 1213
    invoke-static {v2, v4, v5}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isGlobalInCallNotification(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)Z

    .line 1214
    move-result v2

    .line 1217
    if-eqz v2, :cond_48

    .line 1218
    goto :goto_1c

    .line 1220
    :cond_48
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 1221
    if-eqz v2, :cond_49

    .line 1223
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1225
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 1227
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 1229
    if-eqz v1, :cond_5f

    .line 1231
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 1233
    if-eqz v0, :cond_5e

    .line 1235
    goto/16 :goto_25

    .line 1237
    :cond_49
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mIsStatusBarHidden:Z

    .line 1239
    if-nez v2, :cond_4b

    .line 1241
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mSoftInputVisible:Z

    .line 1243
    if-nez v2, :cond_4b

    .line 1245
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mDisableFloatNotification:Z

    .line 1247
    if-nez v2, :cond_4b

    .line 1249
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1251
    check-cast v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 1253
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenModeOn()Z

    .line 1255
    move-result v2

    .line 1258
    if-nez v2, :cond_4b

    .line 1259
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mNotificationSettingsManager:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 1261
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mContext:Landroid/content/Context;

    .line 1263
    invoke-static {v3, v11}, Lcom/miui/systemui/util/CommonUtil;->getTopActivityPkg(Landroid/content/Context;Z)Ljava/lang/String;

    .line 1265
    move-result-object v3

    .line 1268
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mAvoidDisturbPackages:Ljava/util/List;

    .line 1269
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1271
    move-result v2

    .line 1274
    if-eqz v2, :cond_4a

    .line 1275
    goto :goto_1b

    .line 1277
    :cond_4a
    const-string/jumbo v1, "t,has fullscreen intent"

    .line 1278
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1281
    goto/16 :goto_25

    .line 1284
    :cond_4b
    :goto_1b
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 1286
    move-result v2

    .line 1289
    if-nez v2, :cond_4c

    .line 1290
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1292
    move-result-object v1

    .line 1295
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1296
    const-string v2, "miui.floatTime"

    .line 1298
    const v3, 0x7fffffff

    .line 1300
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1303
    :cond_4c
    const-string/jumbo v1, "t,miui smart suspension"

    .line 1306
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1309
    goto/16 :goto_25

    .line 1312
    :cond_4d
    :goto_1c
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1314
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 1316
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 1318
    if-nez v1, :cond_4e

    .line 1320
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1322
    move-result-object v1

    .line 1325
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1326
    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1328
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 1330
    if-nez v1, :cond_4e

    .line 1332
    goto :goto_1d

    .line 1334
    :cond_4e
    move v11, v12

    .line 1335
    :goto_1d
    if-eqz v11, :cond_4f

    .line 1336
    const-string/jumbo v1, "t"

    .line 1338
    goto :goto_1e

    .line 1341
    :cond_4f
    const-string v1, "f"

    .line 1342
    :goto_1e
    const-string v2, ",in call notification"

    .line 1344
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1346
    move-result-object v1

    .line 1349
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1350
    goto/16 :goto_25

    .line 1353
    :cond_50
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mDisableFloatNotification:Z

    .line 1355
    if-eqz v2, :cond_51

    .line 1357
    const-string v1, "f,disable float notification"

    .line 1359
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1361
    goto/16 :goto_24

    .line 1364
    :cond_51
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1366
    check-cast v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 1368
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenModeOn()Z

    .line 1370
    move-result v2

    .line 1373
    if-eqz v2, :cond_53

    .line 1374
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsSystemApp:Z

    .line 1376
    if-eqz v2, :cond_52

    .line 1378
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1380
    move-result-object v2

    .line 1383
    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1384
    const-string v4, "miui.floatWhenDnd"

    .line 1386
    invoke-virtual {v2, v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1388
    move-result v2

    .line 1391
    if-eqz v2, :cond_52

    .line 1392
    move v2, v11

    .line 1394
    goto :goto_1f

    .line 1395
    :cond_52
    move v2, v12

    .line 1396
    :goto_1f
    if-nez v2, :cond_53

    .line 1397
    const-string v1, "f,dnd mode"

    .line 1399
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1401
    goto/16 :goto_24

    .line 1404
    :cond_53
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    .line 1406
    iget-boolean v2, v2, Lcom/miui/systemui/SettingsManager;->miuiMirrorDndModeEnabled:Z

    .line 1408
    if-eqz v2, :cond_54

    .line 1410
    const-string v1, "f,mirror dnd mode"

    .line 1412
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1414
    goto/16 :goto_24

    .line 1417
    :cond_54
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isFocusNotification()Z

    .line 1419
    move-result v2

    .line 1422
    if-eqz v2, :cond_55

    .line 1423
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isEnableFloat()Z

    .line 1425
    move-result v2

    .line 1428
    if-eqz v2, :cond_55

    .line 1429
    goto :goto_20

    .line 1431
    :cond_55
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mCanFloat:Z

    .line 1432
    if-eqz v2, :cond_56

    .line 1434
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->isEnableFloat()Z

    .line 1436
    move-result v2

    .line 1439
    if-eqz v2, :cond_56

    .line 1440
    :goto_20
    move v2, v11

    .line 1442
    goto :goto_21

    .line 1443
    :cond_56
    move v2, v12

    .line 1444
    :goto_21
    if-nez v2, :cond_57

    .line 1445
    const-string v1, "f,require miui permission"

    .line 1447
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1449
    goto/16 :goto_24

    .line 1452
    :cond_57
    sget-object v2, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 1454
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1456
    move-result-object v2

    .line 1459
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->hasProgressbar(Landroid/app/Notification;)Z

    .line 1460
    move-result v2

    .line 1463
    if-eqz v2, :cond_58

    .line 1464
    const-string v1, "f,has progress"

    .line 1466
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1468
    goto/16 :goto_24

    .line 1471
    :cond_58
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1473
    move-result-object v2

    .line 1476
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1477
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1479
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPanelExpanded:Z

    .line 1481
    if-eqz v2, :cond_59

    .line 1483
    const-string v1, "f,status bar panel expanded"

    .line 1485
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1487
    goto/16 :goto_24

    .line 1490
    :cond_59
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1492
    move-result-object v2

    .line 1495
    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1496
    if-nez v2, :cond_5a

    .line 1498
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mMiuiBarrageController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;

    .line 1500
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/interruption/MiuiBarrageController;->isShowBarrageInGameScene()Z

    .line 1502
    move-result v2

    .line 1505
    if-eqz v2, :cond_5a

    .line 1506
    const-string v1, "f,miui barrage in game scene"

    .line 1508
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1510
    goto :goto_24

    .line 1513
    :cond_5a
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mMiuiBubbleController:Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;

    .line 1514
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;->mBubbleSupport:Z

    .line 1516
    if-eqz v3, :cond_5b

    .line 1518
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;->mBubbleSwitch:Z

    .line 1520
    if-eqz v4, :cond_5b

    .line 1522
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1524
    move-result-object v4

    .line 1527
    iget-object v4, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1528
    if-nez v4, :cond_5b

    .line 1530
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 1532
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 1534
    move-result v5

    .line 1537
    invoke-static {v5, v4}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isAppEnableBubbleNotification(ILjava/lang/String;)Z

    .line 1538
    move-result v4

    .line 1541
    if-eqz v4, :cond_5b

    .line 1542
    move v2, v11

    .line 1544
    goto :goto_22

    .line 1545
    :cond_5b
    const-string v4, "mBubbleSupport:"

    .line 1546
    const-string v5, " bSwitch:"

    .line 1548
    invoke-static {v4, v3, v5}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    move-result-object v3

    .line 1553
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/interruption/MiuiBubbleController;->mBubbleSwitch:Z

    .line 1554
    const-string v4, "MiuiBarrageController"

    .line 1556
    invoke-static {v3, v2, v4}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 1558
    move v2, v12

    .line 1561
    :goto_22
    if-eqz v2, :cond_5c

    .line 1562
    const-string v1, "f,miui bubble up"

    .line 1564
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1566
    goto :goto_24

    .line 1569
    :cond_5c
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mActivityUtil:Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 1570
    iget-object v2, v2, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->mTopActivity:Landroid/content/ComponentName;

    .line 1572
    if-nez v2, :cond_5d

    .line 1574
    const-string v2, ""

    .line 1576
    goto :goto_23

    .line 1578
    :cond_5d
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 1579
    move-result-object v2

    .line 1582
    :goto_23
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 1583
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1585
    move-result v2

    .line 1588
    if-eqz v2, :cond_5f

    .line 1589
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 1591
    move-result-object v1

    .line 1594
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isUpdatableFocusNotification(Landroid/app/Notification;)Z

    .line 1595
    move-result v1

    .line 1598
    if-eqz v1, :cond_5f

    .line 1599
    const-string v1, "f,focus in activity"

    .line 1601
    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 1603
    :cond_5e
    :goto_24
    move v11, v12

    .line 1606
    :cond_5f
    :goto_25
    return v11

    .line 1607
    :cond_60
    return v12
    .line 1608
.end method

.method public final disable(IIIZ)V
    .locals 0

    .line 1
    and-int/lit16 p1, p2, 0x400

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mDisableFloatNotification:Z

    .line 9
    return-void
    .line 11
.end method

.method public final logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/log/NotificationAlertLogger;->logHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .locals 0

    .line 1
    and-int/lit8 p1, p3, 0x2

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mSoftInputVisible:Z

    .line 9
    return-void
    .line 11
.end method

.method public final setWindowState(III)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mDisplayId:I

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    if-ne p2, p1, :cond_2

    .line 8
    if-eqz p3, :cond_1

    .line 10
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/interruption/MiuiNotificationInterruptStateProviderImpl;->mIsStatusBarHidden:Z

    .line 14
    :cond_2
    return-void
    .line 16
.end method
