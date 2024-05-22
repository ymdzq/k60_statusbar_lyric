.class public final Lcom/android/keyguard/KeyguardCommonSettingObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public volatile animationRate:I

.field public volatile aodEnable:Z

.field public volatile aodUsingSuperWallpaperStyle:Z

.field public volatile depthEffectEnable:Z

.field public volatile doubleTapToSleep:Z

.field public volatile expandableStatusbarUnderKeyguard:Z

.field public volatile faceUnlockApplyForKeyguard:Z

.field public volatile faceUnlockStartByNotificationScreenOn:Z

.field public volatile faceUnlockSuccessShowMessage:Z

.field public volatile faceUnlockSuccessStayScreen:Z

.field public volatile fingerApplyForKeyguard:Z

.field public volatile invertColorsEnable:Z

.field public volatile isLinkageState:Z

.field public volatile isSupportLockScreenTextClick:Z

.field public final mAnimationObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$13;

.field public final mAodEnableSetting:Lcom/android/keyguard/KeyguardCommonSettingObserver$2;

.field public final mAodStyleStateSettings:Lcom/android/keyguard/KeyguardCommonSettingObserver$4;

.field public final mColorInversionSetting:Lcom/android/keyguard/KeyguardCommonSettingObserver$1;

.field public volatile mColorScheme:I

.field public final mContext:Landroid/content/Context;

.field public final mDoubleTapToSleepObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$11;

.field public final mExpandableStatusBarUnderKeyguardObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$10;

.field public volatile mExtremeBatteryZeroMode:Z

.field public final mExtremeBatteryZeroModeObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$20;

.field public volatile mExtremeMode:Z

.field public final mExtremeModeObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$20;

.field public final mFaceUnlockApplyForKeyguardSetting:Lcom/android/keyguard/KeyguardCommonSettingObserver$5;

.field public final mFaceUnlockStartByNotificationScreenOnObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$8;

.field public final mFaceUnlockSuccessShowMessageObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$7;

.field public final mFaceUnlockSuccessStayScreenObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$6;

.field public final mFingerApplyForKeyguardObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$9;

.field public final mKeyguardColorSchemeObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$18;

.field public final mKeyguardLinkageStateObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$19;

.field public final mMiuiWallpaperContentObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$17;

.field public volatile mMiuiWallpaperContentState:I

.field public volatile mMiuiWallpaperEffect:I

.field public final mPickupSensorSettingsObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$15;

.field public volatile mPickupSensorSettingsOpened:Z

.field public final mStartDisableObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$12;

.field public final mSuperWallpaperSetting:Lcom/android/keyguard/KeyguardCommonSettingObserver$3;

.field public final mSupportLockScreenTextClickObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$14;

.field public final mWallpaperEffectTypeObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$16;

.field public volatile startDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/settings/SystemSettingsImpl;)V
    .locals 26

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p3

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    move-object/from16 v9, p1

    .line 9
    iput-object v9, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mContext:Landroid/content/Context;

    .line 11
    const/4 v10, 0x1

    .line 13
    iput-boolean v10, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->expandableStatusbarUnderKeyguard:Z

    .line 14
    const/4 v0, 0x3

    .line 16
    iput v0, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mColorScheme:I

    .line 17
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 19
    move-result v11

    .line 22
    new-instance v12, Lcom/android/keyguard/KeyguardCommonSettingObserver$1;

    .line 23
    move-object v0, v12

    .line 25
    move v1, v11

    .line 26
    move-object/from16 v2, p0

    .line 27
    move-object/from16 v3, p2

    .line 29
    move-object/from16 v4, p4

    .line 31
    move-object/from16 v5, p5

    .line 33
    move-object/from16 v6, p3

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$1;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 37
    iput-object v12, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mColorInversionSetting:Lcom/android/keyguard/KeyguardCommonSettingObserver$1;

    .line 40
    new-instance v13, Lcom/android/keyguard/KeyguardCommonSettingObserver$2;

    .line 42
    move-object v0, v13

    .line 44
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$2;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 45
    iput-object v13, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mAodEnableSetting:Lcom/android/keyguard/KeyguardCommonSettingObserver$2;

    .line 48
    new-instance v14, Lcom/android/keyguard/KeyguardCommonSettingObserver$3;

    .line 50
    move-object v0, v14

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$3;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 53
    iput-object v14, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mSuperWallpaperSetting:Lcom/android/keyguard/KeyguardCommonSettingObserver$3;

    .line 56
    new-instance v15, Lcom/android/keyguard/KeyguardCommonSettingObserver$4;

    .line 58
    move-object v0, v15

    .line 60
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$4;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 61
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mAodStyleStateSettings:Lcom/android/keyguard/KeyguardCommonSettingObserver$4;

    .line 64
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$5;

    .line 66
    move-object v0, v6

    .line 68
    move-object v10, v6

    .line 69
    move-object/from16 v6, p3

    .line 70
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$5;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 72
    iput-object v10, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mFaceUnlockApplyForKeyguardSetting:Lcom/android/keyguard/KeyguardCommonSettingObserver$5;

    .line 75
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$6;

    .line 77
    move-object v0, v6

    .line 79
    move-object v9, v6

    .line 80
    move-object/from16 v6, p3

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$6;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 83
    iput-object v9, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mFaceUnlockSuccessStayScreenObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$6;

    .line 86
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$7;

    .line 88
    move-object v0, v6

    .line 90
    move-object v8, v6

    .line 91
    move-object/from16 v6, p3

    .line 92
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$7;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 94
    iput-object v8, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mFaceUnlockSuccessShowMessageObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$7;

    .line 97
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$8;

    .line 99
    move-object v0, v6

    .line 101
    move-object/from16 v16, v15

    .line 102
    move-object v15, v6

    .line 104
    move-object/from16 v6, p3

    .line 105
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$8;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 107
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mFaceUnlockStartByNotificationScreenOnObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$8;

    .line 110
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$9;

    .line 112
    move-object v0, v6

    .line 114
    move-object/from16 v17, v15

    .line 115
    move-object v15, v6

    .line 117
    move-object/from16 v6, p3

    .line 118
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$9;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 120
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mFingerApplyForKeyguardObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$9;

    .line 123
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$10;

    .line 125
    move-object v0, v6

    .line 127
    move-object/from16 v5, p6

    .line 128
    move-object/from16 v18, v15

    .line 130
    move-object v15, v6

    .line 132
    move-object/from16 v6, p3

    .line 133
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$10;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SystemSettingsImpl;Landroid/os/Handler;)V

    .line 135
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mExpandableStatusBarUnderKeyguardObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$10;

    .line 138
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$11;

    .line 140
    move-object v0, v6

    .line 142
    move-object/from16 v19, v15

    .line 143
    move-object v15, v6

    .line 145
    move-object/from16 v6, p3

    .line 146
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$11;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SystemSettingsImpl;Landroid/os/Handler;)V

    .line 148
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mDoubleTapToSleepObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$11;

    .line 151
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$12;

    .line 153
    move-object v0, v6

    .line 155
    move-object/from16 v5, p5

    .line 156
    move-object/from16 v20, v15

    .line 158
    move-object v15, v6

    .line 160
    move-object/from16 v6, p3

    .line 161
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$12;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 163
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mStartDisableObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$12;

    .line 166
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$13;

    .line 168
    move-object v0, v6

    .line 170
    move-object/from16 v5, p6

    .line 171
    move-object/from16 v21, v15

    .line 173
    move-object v15, v6

    .line 175
    move-object/from16 v6, p3

    .line 176
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$13;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SystemSettingsImpl;Landroid/os/Handler;)V

    .line 178
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mAnimationObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$13;

    .line 181
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$14;

    .line 183
    move-object v0, v6

    .line 185
    move-object/from16 v5, p5

    .line 186
    move-object/from16 v22, v15

    .line 188
    move-object v15, v6

    .line 190
    move-object/from16 v6, p3

    .line 191
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$14;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 193
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mSupportLockScreenTextClickObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$14;

    .line 196
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$15;

    .line 198
    move-object v0, v6

    .line 200
    move-object/from16 v5, p6

    .line 201
    move-object/from16 v23, v15

    .line 203
    move-object v15, v6

    .line 205
    move-object/from16 v6, p3

    .line 206
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$15;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SystemSettingsImpl;Landroid/os/Handler;)V

    .line 208
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mPickupSensorSettingsObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$15;

    .line 211
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$16;

    .line 213
    move-object v0, v6

    .line 215
    move-object/from16 v5, p5

    .line 216
    move-object/from16 p6, v15

    .line 218
    move-object v15, v6

    .line 220
    move-object/from16 v6, p3

    .line 221
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$16;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 223
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mWallpaperEffectTypeObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$16;

    .line 226
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$17;

    .line 228
    move-object v0, v6

    .line 230
    move-object/from16 v24, v15

    .line 231
    move-object v15, v6

    .line 233
    move-object/from16 v6, p3

    .line 234
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$17;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 236
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mMiuiWallpaperContentObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$17;

    .line 239
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$18;

    .line 241
    move-object v0, v6

    .line 243
    move-object/from16 v25, v15

    .line 244
    move-object v15, v6

    .line 246
    move-object/from16 v6, p3

    .line 247
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$18;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 249
    iput-object v15, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mKeyguardColorSchemeObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$18;

    .line 252
    new-instance v6, Lcom/android/keyguard/KeyguardCommonSettingObserver$19;

    .line 254
    move-object v0, v6

    .line 256
    move-object v11, v6

    .line 257
    move-object/from16 v6, p3

    .line 258
    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardCommonSettingObserver$19;-><init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V

    .line 260
    iput-object v11, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mKeyguardLinkageStateObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$19;

    .line 263
    const/4 v0, 0x1

    .line 265
    invoke-virtual {v12, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 266
    invoke-virtual {v13, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 269
    invoke-virtual {v14, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 272
    invoke-virtual {v10, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 275
    invoke-virtual {v9, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 278
    invoke-virtual {v8, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 281
    move-object/from16 v1, v17

    .line 284
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 286
    move-object/from16 v1, v18

    .line 289
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 291
    move-object/from16 v1, v22

    .line 294
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 296
    move-object/from16 v1, v19

    .line 299
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 301
    move-object/from16 v1, v20

    .line 304
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 306
    move-object/from16 v1, v21

    .line 309
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 311
    move-object/from16 v1, v23

    .line 314
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 316
    move-object/from16 v1, p6

    .line 319
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 321
    move-object/from16 v1, v24

    .line 324
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 326
    move-object/from16 v1, v16

    .line 329
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 331
    move-object/from16 v1, v25

    .line 334
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 336
    invoke-virtual {v15, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 339
    invoke-virtual {v11, v0}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 342
    new-instance v1, Lcom/android/keyguard/KeyguardCommonSettingObserver$20;

    .line 345
    const/4 v2, 0x0

    .line 347
    move-object/from16 v3, p3

    .line 348
    invoke-direct {v1, v7, v3, v2}, Lcom/android/keyguard/KeyguardCommonSettingObserver$20;-><init>(Lcom/android/keyguard/KeyguardCommonSettingObserver;Landroid/os/Handler;I)V

    .line 350
    iput-object v1, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mExtremeModeObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$20;

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 355
    move-result-object v4

    .line 358
    const-string v5, "pc_security_center_extreme_mode_enter"

    .line 359
    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 361
    move-result-object v5

    .line 364
    invoke-virtual {v4, v5, v2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 365
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardCommonSettingObserver$20;->onChange(Z)V

    .line 368
    new-instance v1, Lcom/android/keyguard/KeyguardCommonSettingObserver$20;

    .line 371
    invoke-direct {v1, v7, v3, v0}, Lcom/android/keyguard/KeyguardCommonSettingObserver$20;-><init>(Lcom/android/keyguard/KeyguardCommonSettingObserver;Landroid/os/Handler;I)V

    .line 373
    iput-object v1, v7, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mExtremeBatteryZeroModeObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver$20;

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 378
    move-result-object v0

    .line 381
    const-string v3, "pc_support_extreme_endurance_battery_zero"

    .line 382
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 384
    move-result-object v3

    .line 387
    invoke-virtual {v0, v3, v2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 388
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardCommonSettingObserver$20;->onChange(Z)V

    .line 391
    return-void
    .line 394
.end method
