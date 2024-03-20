.class public final synthetic Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final synthetic f$2:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final synthetic f$3:Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 7
    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;->f$2:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 9
    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 6
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;->f$2:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 8
    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    .line 10
    iget-object v2, v14, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    check-cast v2, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 14
    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 16
    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    .line 19
    iget-object v2, v14, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const v3, 0x7f0a031b    # @id/emergency_call_button

    .line 26
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Lcom/android/keyguard/EmergencyButton;

    .line 33
    iget-object v5, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    .line 35
    invoke-virtual {v5, v3}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    .line 37
    move-result-object v12

    .line 40
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 41
    move-result v3

    .line 44
    if-nez v3, :cond_0

    .line 45
    iget-object v3, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 47
    sput-object v3, Lcom/android/keyguard/CrossEndsUnlockController;->sKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    sput-object v4, Lcom/android/keyguard/CrossEndsUnlockController;->sSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 51
    sput-object v6, Lcom/android/keyguard/CrossEndsUnlockController;->sKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 53
    iget-object v3, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    sput-object v3, Lcom/android/keyguard/CrossEndsUnlockController;->sLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 57
    iget-object v3, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 59
    sput-object v3, Lcom/android/keyguard/CrossEndsUnlockController;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 61
    :cond_0
    instance-of v3, v1, Lcom/android/keyguard/KeyguardPatternView;

    .line 63
    if-eqz v3, :cond_1

    .line 65
    new-instance v13, Lcom/android/keyguard/KeyguardPatternViewController;

    .line 67
    move-object v3, v1

    .line 69
    check-cast v3, Lcom/android/keyguard/KeyguardPatternView;

    .line 70
    iget-object v5, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 72
    iget-object v7, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    iget-object v8, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 76
    iget-object v9, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 78
    iget-object v10, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 80
    iget-object v11, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 82
    iget-object v15, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 84
    move-object v1, v13

    .line 86
    move-object v2, v3

    .line 87
    move-object v3, v5

    .line 88
    move-object v5, v7

    .line 89
    move-object v7, v8

    .line 90
    move-object v8, v9

    .line 91
    move-object v9, v12

    .line 92
    move-object v12, v15

    .line 93
    invoke-direct/range {v1 .. v12}, Lcom/android/keyguard/KeyguardPatternViewController;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 94
    goto/16 :goto_1

    .line 97
    :cond_1
    instance-of v3, v1, Lcom/android/keyguard/KeyguardPasswordView;

    .line 99
    if-eqz v3, :cond_2

    .line 101
    new-instance v15, Lcom/android/keyguard/KeyguardPasswordViewController;

    .line 103
    move-object v3, v1

    .line 105
    check-cast v3, Lcom/android/keyguard/KeyguardPasswordView;

    .line 106
    iget-object v5, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 108
    iget-object v7, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 110
    iget-object v8, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 112
    iget-object v9, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 114
    iget-object v10, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    .line 116
    iget-object v11, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 118
    iget-object v13, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 120
    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 122
    move-object v1, v15

    .line 124
    move-object/from16 v16, v2

    .line 125
    move-object v2, v3

    .line 127
    move-object v3, v5

    .line 128
    move-object v5, v7

    .line 129
    move-object v7, v8

    .line 130
    move-object v8, v9

    .line 131
    move-object v9, v12

    .line 132
    move-object v12, v13

    .line 133
    move-object/from16 v13, v16

    .line 134
    invoke-direct/range {v1 .. v13}, Lcom/android/keyguard/KeyguardPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/EmergencyButtonController;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 136
    :goto_0
    move-object v13, v15

    .line 139
    goto/16 :goto_1

    .line 140
    :cond_2
    instance-of v3, v1, Lcom/android/keyguard/KeyguardPINView;

    .line 142
    if-eqz v3, :cond_3

    .line 144
    new-instance v15, Lcom/android/keyguard/KeyguardPinViewController;

    .line 146
    move-object v3, v1

    .line 148
    check-cast v3, Lcom/android/keyguard/KeyguardPINView;

    .line 149
    iget-object v5, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 151
    iget-object v7, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    iget-object v8, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 155
    iget-object v9, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 157
    iget-object v10, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 159
    iget-object v11, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 161
    iget-object v13, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 163
    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 165
    move-object v1, v15

    .line 167
    move-object/from16 v16, v2

    .line 168
    move-object v2, v3

    .line 170
    move-object v3, v5

    .line 171
    move-object v5, v7

    .line 172
    move-object v7, v8

    .line 173
    move-object v8, v9

    .line 174
    move-object v9, v10

    .line 175
    move-object v10, v12

    .line 176
    move-object v12, v13

    .line 177
    move-object/from16 v13, v16

    .line 178
    invoke-direct/range {v1 .. v13}, Lcom/android/keyguard/KeyguardPinViewController;-><init>(Lcom/android/keyguard/KeyguardPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 180
    goto :goto_0

    .line 183
    :cond_3
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSimPinView;

    .line 184
    if-eqz v3, :cond_4

    .line 186
    new-instance v15, Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 188
    move-object v3, v1

    .line 190
    check-cast v3, Lcom/android/keyguard/KeyguardSimPinView;

    .line 191
    iget-object v5, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 193
    iget-object v7, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 195
    iget-object v8, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 197
    iget-object v9, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 199
    iget-object v10, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 201
    iget-object v11, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 203
    iget-object v13, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 205
    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 207
    move-object v1, v15

    .line 209
    move-object/from16 v16, v2

    .line 210
    move-object v2, v3

    .line 212
    move-object v3, v5

    .line 213
    move-object v5, v7

    .line 214
    move-object v7, v8

    .line 215
    move-object v8, v9

    .line 216
    move-object v9, v10

    .line 217
    move-object v10, v11

    .line 218
    move-object v11, v13

    .line 219
    move-object/from16 v13, v16

    .line 220
    invoke-direct/range {v1 .. v13}, Lcom/android/keyguard/KeyguardSimPinViewController;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 222
    goto :goto_0

    .line 225
    :cond_4
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSimPukView;

    .line 226
    if-eqz v3, :cond_6

    .line 228
    new-instance v15, Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 230
    move-object v3, v1

    .line 232
    check-cast v3, Lcom/android/keyguard/KeyguardSimPukView;

    .line 233
    iget-object v5, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 235
    iget-object v7, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 237
    iget-object v8, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 239
    iget-object v9, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 241
    iget-object v10, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 243
    iget-object v11, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 245
    iget-object v13, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 247
    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 249
    move-object v1, v15

    .line 251
    move-object/from16 v16, v2

    .line 252
    move-object v2, v3

    .line 254
    move-object v3, v5

    .line 255
    move-object v5, v7

    .line 256
    move-object v7, v8

    .line 257
    move-object v8, v9

    .line 258
    move-object v9, v10

    .line 259
    move-object v10, v11

    .line 260
    move-object v11, v13

    .line 261
    move-object/from16 v13, v16

    .line 262
    invoke-direct/range {v1 .. v13}, Lcom/android/keyguard/KeyguardSimPukViewController;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 264
    goto/16 :goto_0

    .line 267
    :goto_1
    invoke-virtual {v13}, Lcom/android/systemui/util/ViewController;->init()V

    .line 269
    iget-object v1, v14, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    .line 272
    check-cast v1, Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$$ExternalSyntheticLambda0;->f$3:Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;

    .line 279
    if-eqz v0, :cond_5

    .line 281
    invoke-interface {v0, v13}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;->onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 283
    :cond_5
    return-void

    .line 286
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    .line 289
    const-string v3, "Unable to find controller for "

    .line 291
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 302
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 303
    throw v0
    .line 306
.end method
