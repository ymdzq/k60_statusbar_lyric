.class public final Lcom/android/systemui/biometrics/AuthController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/doze/DozeReceiver;


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public mAllFingerprintAuthenticatorsRegistered:Z

.field public final mApplicationCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final mAuthBiometricFingerprintViewModelProvider:Ljavax/inject/Provider;

.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mCachedDisplayInfo:Landroid/view/DisplayInfo;

.field public final mCallbacks:Ljava/util/Set;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mCredentialViewModelProvider:Ljavax/inject/Provider;

.field mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

.field public mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field public final mDisplay:Landroid/view/Display;

.field public final mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

.field public final mFaceEnrolledForUser:Landroid/util/SparseBooleanArray;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFaceProps:Ljava/util/List;

.field public mFaceSensorLocation:Landroid/graphics/Point;

.field public final mFaceSensorLocationDefault:Landroid/graphics/Point;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mFingerprintSensorLocation:Landroid/graphics/Point;

.field public final mFpEnrolledForUser:Ljava/util/Map;

.field public mFpProps:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mLogContextInteractor:Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractor;

.field final mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field public final mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

.field public final mPromptCredentialInteractor:Ljavax/inject/Provider;

.field public final mPromptSelectorInteractor:Ljavax/inject/Provider;

.field public final mPromptViewModelProvider:Ljavax/inject/Provider;

.field mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field public mScaleFactor:F

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public final mSfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

.field public mSideFpsController:Lcom/android/systemui/biometrics/SideFpsController;

.field public final mSidefpsControllerFactory:Ljavax/inject/Provider;

.field public mSidefpsProps:Ljava/util/List;

.field final mTaskStackListener:Landroid/app/TaskStackListener;

.field public mUdfpsBounds:Landroid/graphics/Rect;

.field public mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public final mUdfpsControllerFactory:Ljavax/inject/Provider;

.field public final mUdfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

.field public final mUdfpsLogger:Lcom/android/systemui/biometrics/UdfpsLogger;

.field public mUdfpsOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

.field public mUdfpsProps:Ljava/util/List;

.field public mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

.field public final mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mhandleEnrollmentsChanged(Lcom/android/systemui/biometrics/AuthController;IIIZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "handleEnrollmentsChanged, userId: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", sensorId: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", hasEnrollments: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    const-string v1, "AuthController"

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->UNKNOWN:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    .line 42
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    .line 44
    if-eqz v2, :cond_3

    .line 46
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v2

    .line 51
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 61
    check-cast v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 62
    iget v4, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 64
    if-ne v4, p3, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFpEnrolledForUser:Ljava/util/Map;

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v4

    .line 73
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object v5

    .line 77
    check-cast v2, Ljava/util/HashMap;

    .line 78
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 83
    move-result v2

    .line 86
    if-eqz v2, :cond_1

    .line 87
    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->UNDER_DISPLAY_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    .line 91
    invoke-virtual {v2, p2, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 93
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    .line 97
    move-result v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->SIDE_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    .line 103
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mSfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    .line 105
    invoke-virtual {v2, p2, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 107
    goto :goto_0

    .line 110
    :cond_2
    iget v2, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 111
    const/4 v3, 0x1

    .line 113
    if-ne v2, v3, :cond_3

    .line 114
    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->REAR_FINGERPRINT:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    .line 116
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    .line 118
    if-nez v2, :cond_4

    .line 120
    const-string p3, "handleEnrollmentsChanged, mFaceProps is null"

    .line 122
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    goto :goto_1

    .line 127
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object v1

    .line 131
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result v2

    .line 135
    if-eqz v2, :cond_6

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    move-result-object v2

    .line 141
    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 142
    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 144
    if-ne v2, p3, :cond_5

    .line 146
    iget-object p3, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceEnrolledForUser:Landroid/util/SparseBooleanArray;

    .line 148
    invoke-virtual {p3, p2, p4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 150
    sget-object v0, Lcom/android/systemui/keyguard/data/repository/BiometricType;->FACE:Lcom/android/systemui/keyguard/data/repository/BiometricType;

    .line 153
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 155
    check-cast p0, Ljava/util/HashSet;

    .line 157
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object p0

    .line 162
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result p3

    .line 166
    if-eqz p3, :cond_7

    .line 167
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object p3

    .line 172
    check-cast p3, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 173
    invoke-interface {p3, p1}, Lcom/android/systemui/biometrics/AuthController$Callback;->onEnrollmentsChanged(I)V

    .line 175
    invoke-interface {p3, v0, p2, p4}, Lcom/android/systemui/biometrics/AuthController$Callback;->onEnrollmentsChanged(Lcom/android/systemui/keyguard/data/repository/BiometricType;IZ)V

    .line 178
    goto :goto_2

    .line 181
    :cond_7
    return-void
    .line 182
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/concurrency/ExecutionImpl;Lcom/android/systemui/statusbar/CommandQueue;Landroid/app/ActivityTaskManager;Landroid/view/WindowManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Landroid/os/UserManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/UdfpsLogger;Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/internal/jank/InteractionJankMonitor;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/settingslib/udfps/UdfpsUtils;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v2, p9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    iput v3, v0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    .line 11
    new-instance v3, Ljava/util/HashSet;

    .line 13
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 15
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 18
    new-instance v3, Ljava/util/HashMap;

    .line 20
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 22
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mFpEnrolledForUser:Ljava/util/Map;

    .line 25
    new-instance v3, Landroid/view/DisplayInfo;

    .line 27
    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 29
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    .line 32
    new-instance v3, Lcom/android/systemui/biometrics/AuthController$1;

    .line 34
    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/AuthController$1;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    .line 36
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 39
    new-instance v3, Lcom/android/systemui/biometrics/AuthController$2;

    .line 41
    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/AuthController$2;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    .line 43
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    .line 48
    move-object v4, p2

    .line 50
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 51
    move-object v4, p4

    .line 53
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 54
    move-object/from16 v4, p15

    .line 56
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mUserManager:Landroid/os/UserManager;

    .line 58
    move-object/from16 v4, p16

    .line 60
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 62
    move-object/from16 v4, p25

    .line 64
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    .line 66
    move-object/from16 v5, p26

    .line 68
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 70
    move-object v5, p5

    .line 72
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 73
    move-object v5, p6

    .line 75
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 76
    move-object/from16 v5, p8

    .line 78
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 80
    iput-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 82
    move-object/from16 v5, p10

    .line 84
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsControllerFactory:Ljavax/inject/Provider;

    .line 86
    move-object/from16 v5, p11

    .line 88
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mSidefpsControllerFactory:Ljavax/inject/Provider;

    .line 90
    move-object/from16 v5, p17

    .line 92
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsLogger:Lcom/android/systemui/biometrics/UdfpsLogger;

    .line 94
    move-object v5, p7

    .line 96
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    .line 97
    move-object/from16 v5, p24

    .line 99
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 101
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 103
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 105
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    .line 108
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 110
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 112
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mSfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    .line 115
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 117
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 119
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceEnrolledForUser:Landroid/util/SparseBooleanArray;

    .line 122
    move-object/from16 v5, p27

    .line 124
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 126
    move-object/from16 v5, p28

    .line 128
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 130
    move-object v5, p3

    .line 132
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mApplicationCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 133
    move-object/from16 v5, p18

    .line 135
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mLogContextInteractor:Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractor;

    .line 137
    move-object/from16 v5, p19

    .line 139
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mAuthBiometricFingerprintViewModelProvider:Ljavax/inject/Provider;

    .line 141
    move-object/from16 v5, p21

    .line 143
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptSelectorInteractor:Ljavax/inject/Provider;

    .line 145
    move-object/from16 v5, p20

    .line 147
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptCredentialInteractor:Ljavax/inject/Provider;

    .line 149
    move-object/from16 v5, p23

    .line 151
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptViewModelProvider:Ljavax/inject/Provider;

    .line 153
    move-object/from16 v5, p22

    .line 155
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mCredentialViewModelProvider:Ljavax/inject/Provider;

    .line 157
    new-instance v5, Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 159
    sget-object v6, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;->INSTANCE:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;

    .line 161
    new-instance v7, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda0;

    .line 163
    invoke-direct {v7, p0}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    .line 165
    move-object p2, v5

    .line 168
    move-object p3, p1

    .line 169
    move-object/from16 p4, p12

    .line 170
    move-object/from16 p5, p25

    .line 172
    move-object p6, v6

    .line 174
    move-object p7, v7

    .line 175
    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/biometrics/BiometricDisplayListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V

    .line 176
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 179
    move-object/from16 v4, p13

    .line 181
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 183
    move-object/from16 v4, p14

    .line 185
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 187
    const/4 v4, 0x0

    .line 189
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual/range {p9 .. p9}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 192
    move-result-object v2

    .line 195
    goto :goto_0

    .line 196
    :cond_0
    move-object v2, v4

    .line 197
    :goto_0
    iput-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 200
    move-result-object v2

    .line 203
    const v5, 0x7f030053    # @array/config_face_auth_props

    .line 204
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 207
    move-result-object v2

    .line 210
    const/4 v5, 0x2

    .line 211
    if-eqz v2, :cond_2

    .line 212
    array-length v6, v2

    .line 214
    if-ge v6, v5, :cond_1

    .line 215
    goto :goto_1

    .line 217
    :cond_1
    new-instance v4, Landroid/graphics/Point;

    .line 218
    const/4 v6, 0x0

    .line 220
    aget v6, v2, v6

    .line 221
    const/4 v7, 0x1

    .line 223
    aget v2, v2, v7

    .line 224
    invoke-direct {v4, v6, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 226
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceSensorLocationDefault:Landroid/graphics/Point;

    .line 229
    goto :goto_2

    .line 231
    :cond_2
    :goto_1
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceSensorLocationDefault:Landroid/graphics/Point;

    .line 232
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 234
    move-result-object v2

    .line 237
    iput-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mDisplay:Landroid/view/Display;

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    .line 240
    new-instance v2, Landroid/content/IntentFilter;

    .line 243
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 248
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v3, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 253
    const-class v2, Landroid/hardware/SensorPrivacyManager;

    .line 256
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 258
    move-result-object v1

    .line 261
    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    .line 262
    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 264
    return-void
    .line 266
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public final cancelIfOwnerIsNotInForeground()V
    .locals 8

    .line 1
    const-string v0, "AuthController"

    .line 2
    const-string v1, "Evicting client due to: "

    .line 4
    const-string v2, "Task stack changed, current client: "

    .line 6
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 8
    invoke-virtual {v3}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 10
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 13
    if-eqz v3, :cond_3

    .line 15
    :try_start_0
    invoke-interface {v3}, Lcom/android/systemui/biometrics/AuthDialog;->getOpPackageName()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 36
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v2, v4}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    .line 39
    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 43
    move-result v5

    .line 46
    if-nez v5, :cond_3

    .line 47
    const/4 v5, 0x0

    .line 49
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 53
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 56
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v6

    .line 65
    if-nez v6, :cond_3

    .line 66
    iget-object v6, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    .line 68
    const-string v7, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 70
    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 72
    move-result v6

    .line 75
    if-nez v6, :cond_0

    .line 76
    move v6, v4

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    move v6, v5

    .line 80
    :goto_0
    if-eqz v6, :cond_1

    .line 81
    const-string v6, "android"

    .line 83
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    move-result v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    move v5, v4

    .line 91
    :cond_1
    if-nez v5, :cond_3

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 101
    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 103
    invoke-virtual {v1, v4}, Lcom/android/systemui/biometrics/AuthContainerView;->dismissWithoutCallback(Z)V

    .line 105
    const/4 v1, 0x0

    .line 108
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 109
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 111
    check-cast v2, Ljava/util/HashSet;

    .line 113
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v2

    .line 118
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v3

    .line 122
    if-eqz v3, :cond_2

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 128
    check-cast v3, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 129
    invoke-interface {v3}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptDismissed()V

    .line 131
    goto :goto_1

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 135
    if-eqz v2, :cond_3

    .line 137
    const/4 v3, 0x3

    .line 139
    invoke-interface {v2, v3, v1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V

    .line 140
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_2

    .line 145
    :catch_0
    move-exception p0

    .line 146
    const-string v1, "Remote exception"

    .line 147
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_3
    :goto_2
    return-void
    .line 152
.end method

.method public final closeDioalog(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    const-string v0, "Close BP, reason :"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    const-string v0, "AuthController"

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 19
    const/4 v1, 0x1

    .line 21
    check-cast p1, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 22
    invoke-virtual {p1, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->dismissWithoutCallback(Z)V

    .line 24
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 30
    check-cast v1, Ljava/util/HashSet;

    .line 32
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 48
    invoke-interface {v2}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptDismissed()V

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 54
    if-eqz v1, :cond_1

    .line 56
    const/4 v2, 0x3

    .line 58
    invoke-interface {v1, v2, p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string p1, "Remote exception"

    .line 66
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_1
    :goto_1
    return-void
    .line 71
.end method

.method public final dozeTimeTick()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->dozeTimeTick()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "  mCachedDisplayInfo="

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "  mScaleFactor="

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget v2, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    .line 30
    const-string v3, "  faceAuthSensorLocationDefault="

    .line 32
    invoke-static {v1, v2, p1, v3}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceSensorLocationDefault:Landroid/graphics/Point;

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "  faceAuthSensorLocation="

    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceSensorLocation:Landroid/graphics/Point;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    const-string v2, "  fingerprintSensorLocationInNaturalOrientation="

    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getFingerprintSensorLocationInNaturalOrientation()Landroid/graphics/Point;

    .line 76
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    const-string v2, "  fingerprintSensorLocation="

    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintSensorLocation:Landroid/graphics/Point;

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    const-string v2, "  udfpsBounds="

    .line 111
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 124
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    const-string v2, "  allFingerprintAuthenticatorsRegistered="

    .line 130
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/AuthController;->mAllFingerprintAuthenticatorsRegistered:Z

    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 143
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "  currentDialog="

    .line 149
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 160
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    if-eqz v0, :cond_0

    .line 164
    check-cast v0, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 166
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
    .line 171
.end method

.method public final getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 2
    const-string v1, "AuthController"

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    const-string/jumbo p1, "shouldNotifyReceiver: dialog already gone"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->getRequestId()J

    .line 16
    move-result-wide v3

    .line 19
    cmp-long p1, p1, v3

    .line 20
    if-eqz p1, :cond_1

    .line 22
    const-string/jumbo p1, "shouldNotifyReceiver: requestId doesn\'t match"

    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x1

    .line 31
    :goto_0
    if-nez v2, :cond_2

    .line 32
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 36
    if-nez p1, :cond_3

    .line 38
    const-string p1, "getCurrentReceiver: Receiver is null"

    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 45
    return-object p0
    .line 47
.end method

.method public final getFingerprintSensorLocationInNaturalOrientation()Landroid/graphics/Point;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    .line 4
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsLocation()Landroid/graphics/Point;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    .line 15
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 17
    move-result v1

    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 21
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v2

    .line 26
    const v3, 0x7f070e6c    # @dimen/physical_fingerprint_sensor_center_screen_location_x '@null'

    .line 27
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    new-instance v2, Landroid/graphics/Point;

    .line 34
    int-to-float v1, v1

    .line 36
    iget v3, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    .line 37
    mul-float/2addr v1, v3

    .line 39
    float-to-int v1, v1

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v0

    .line 44
    const v3, 0x7f070e6d    # @dimen/physical_fingerprint_sensor_center_screen_location_y '610.0px'

    .line 45
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result v0

    .line 51
    int-to-float v0, v0

    .line 52
    iget p0, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    .line 53
    mul-float/2addr v0, p0

    .line 55
    float-to-int p0, v0

    .line 56
    invoke-direct {v2, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 57
    return-object v2
    .line 60
.end method

.method public final getUdfpsLocation()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    .line 15
    move-result v1

    .line 18
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    .line 21
    move-result p0

    .line 24
    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    .line 25
    return-object v0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0
    .line 30
.end method

.method public final handleShowGlobalActionsMenu()V
    .locals 1

    .line 1
    const-string v0, "PowerMenu shown"

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthController;->closeDioalog(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final hideAuthenticationDialog(J)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "hideAuthenticationDialog: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "AuthController"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 23
    if-nez v0, :cond_0

    .line 25
    const-string p0, "dialog already gone"

    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void

    .line 32
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthDialog;->getRequestId()J

    .line 33
    move-result-wide v2

    .line 36
    cmp-long v0, p1, v2

    .line 37
    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    const-string v2, "ignore - ids do not match: "

    .line 43
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    const-string p1, " current: "

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 56
    invoke-interface {p0}, Lcom/android/systemui/biometrics/AuthDialog;->getRequestId()J

    .line 58
    move-result-wide p0

    .line 61
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 73
    check-cast p1, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 75
    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1, p2, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 78
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 82
    return-void
    .line 84
.end method

.method public final isShowing()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final isUdfpsEnrolled(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final onBiometricAuthenticated(I)V
    .locals 9

    .line 1
    const-string v0, "AuthController"

    .line 2
    const-string v1, "onBiometricAuthenticated: "

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "AuthController, modality = "

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, "BP::success"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v7

    .line 27
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 33
    move-result v4

    .line 36
    const-string v5, "com.android.systemui"

    .line 37
    sget-object v6, Lcom/android/systemui/statusbar/VibratorHelper;->BIOMETRIC_SUCCESS_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 39
    sget-object v8, Lcom/android/systemui/statusbar/VibratorHelper;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 41
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 46
    if-eqz p0, :cond_1

    .line 48
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 52
    if-eqz p0, :cond_0

    .line 54
    invoke-interface {p0, p1}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->onAuthenticationSucceeded(I)V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    const-string p0, "AuthContainerView"

    .line 60
    const-string p1, "onAuthenticationSucceeded(): mBiometricView is null"

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    const-string p0, "onBiometricAuthenticated callback but dialog gone"

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void
    .line 73
.end method

.method public final onBiometricError(III)V
    .locals 9

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 13
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "onBiometricError(%d, %d, %d)"

    .line 18
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "AuthController"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "AuthController, modality = "

    .line 31
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "BP::error"

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v7

    .line 47
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 53
    move-result v4

    .line 56
    const-string v5, "com.android.systemui"

    .line 57
    sget-object v6, Lcom/android/systemui/statusbar/VibratorHelper;->BIOMETRIC_ERROR_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 59
    sget-object v8, Lcom/android/systemui/statusbar/VibratorHelper;->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 61
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 63
    const/4 v0, 0x7

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x1

    .line 68
    if-eq p2, v0, :cond_1

    .line 69
    const/16 v0, 0x9

    .line 71
    if-ne p2, v0, :cond_0

    .line 73
    goto :goto_0

    .line 75
    :cond_0
    move v0, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    move v0, v3

    .line 78
    :goto_1
    const/4 v4, 0x2

    .line 79
    if-ne p2, v3, :cond_2

    .line 80
    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 82
    invoke-virtual {v5, v3, v4}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    .line 84
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    move v5, v3

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v5, v2

    .line 92
    :goto_2
    const/16 v6, 0x64

    .line 93
    if-eq p2, v6, :cond_3

    .line 95
    const/4 v7, 0x3

    .line 97
    if-eq p2, v7, :cond_3

    .line 98
    if-eqz v5, :cond_4

    .line 100
    :cond_3
    move v2, v3

    .line 102
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 103
    if-eqz v3, :cond_f

    .line 105
    check-cast v3, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 107
    iget-object v3, v3, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 109
    iget-object v3, v3, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 111
    invoke-static {v3}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    .line 113
    move-result v3

    .line 116
    const-string v7, "AuthContainerView"

    .line 117
    if-eqz v3, :cond_6

    .line 119
    if-eqz v0, :cond_6

    .line 121
    const-string p1, "onBiometricError, lockout"

    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 128
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 132
    if-eqz p0, :cond_5

    .line 134
    invoke-interface {p0}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->startTransitionToCredentialUI()V

    .line 136
    goto/16 :goto_6

    .line 139
    :cond_5
    const-string p0, "animateToCredentialUI(): mBiometricView is null"

    .line 141
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto/16 :goto_6

    .line 146
    :cond_6
    const-string v0, ""

    .line 148
    const/16 v3, 0x8

    .line 150
    iget-object v8, p0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    .line 152
    if-eqz v2, :cond_b

    .line 154
    if-ne p2, v6, :cond_7

    .line 156
    const p2, 0x10401da    # @android:string/config_UsbDeviceConnectionHandling_component

    .line 158
    invoke-virtual {v8, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    if-eq p1, v4, :cond_9

    .line 166
    if-eq p1, v3, :cond_8

    .line 168
    goto :goto_3

    .line 170
    :cond_8
    invoke-static {v8, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    goto :goto_3

    .line 175
    :cond_9
    invoke-static {v8, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 179
    :goto_3
    move-object p2, v0

    .line 180
    :goto_4
    const-string p3, "onBiometricError, soft error: "

    .line 181
    invoke-static {p3, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz v5, :cond_a

    .line 186
    new-instance p2, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;

    .line 188
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/AuthController;I)V

    .line 190
    const-wide/16 v0, 0x1f4

    .line 193
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    .line 195
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    goto :goto_6

    .line 200
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 201
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthContainerView;->onAuthenticationFailed(ILjava/lang/String;)V

    .line 205
    goto :goto_6

    .line 208
    :cond_b
    if-eq p1, v4, :cond_d

    .line 209
    if-eq p1, v3, :cond_c

    .line 211
    goto :goto_5

    .line 213
    :cond_c
    invoke-static {v8, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 217
    goto :goto_5

    .line 218
    :cond_d
    invoke-static {v8, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 222
    :goto_5
    const-string p2, "onBiometricError, hard error: "

    .line 223
    invoke-static {p2, v0, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 228
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 230
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 232
    if-eqz p0, :cond_e

    .line 234
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->onError(ILjava/lang/String;)V

    .line 236
    goto :goto_6

    .line 239
    :cond_e
    const-string p0, "onError(): mBiometricView is null"

    .line 240
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    goto :goto_6

    .line 245
    :cond_f
    const-string p0, "onBiometricError callback but dialog is gone"

    .line 246
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_6
    return-void
    .line 251
.end method

.method public final onBiometricHelp(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "onBiometricHelp: "

    .line 2
    const-string v1, "AuthController"

    .line 4
    invoke-static {v0, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->onHelp(ILjava/lang/String;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "AuthContainerView"

    .line 23
    const-string p1, "onHelp(): mBiometricView is null"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    const-string p0, "onBiometricHelp callback but dialog gone"

    .line 31
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-void
    .line 36
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 5
    if-eqz p1, :cond_5

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/biometrics/AuthDialog;->getViewModel()Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    .line 9
    move-result-object p1

    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 18
    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 20
    iget v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 22
    const/4 v3, 0x4

    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x0

    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v5

    .line 31
    :goto_0
    const-string v3, "container_going_away"

    .line 32
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 37
    if-eqz v2, :cond_1

    .line 39
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    .line 41
    if-nez v2, :cond_1

    .line 43
    move v2, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v2, v5

    .line 47
    :goto_1
    const-string v6, "biometric_showing"

    .line 48
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    .line 53
    if-eqz v2, :cond_2

    .line 55
    move v2, v4

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move v2, v5

    .line 59
    :goto_2
    const-string v6, "credential_showing"

    .line 60
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 65
    if-eqz v1, :cond_3

    .line 67
    invoke-interface {v1, v0}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->onSaveState(Landroid/os/Bundle;)V

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 72
    check-cast v1, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 74
    invoke-virtual {v1, v5}, Lcom/android/systemui/biometrics/AuthContainerView;->dismissWithoutCallback(Z)V

    .line 76
    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 80
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 82
    move-result v1

    .line 85
    if-nez v1, :cond_5

    .line 86
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 88
    move-result v1

    .line 91
    if-eqz v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 94
    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 96
    check-cast v1, Landroid/hardware/biometrics/PromptInfo;

    .line 98
    const v2, 0x8000

    .line 100
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 106
    invoke-virtual {p0, v1, v4, v0, p1}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    .line 108
    :cond_5
    return-void
    .line 111
.end method

.method public final removeCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 2
    check-cast p0, Ljava/util/HashSet;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public rotateToCurrentOrientation(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Landroid/graphics/Point;
    .locals 1

    .line 1
    iget p0, p2, Landroid/view/DisplayInfo;->rotation:I

    .line 2
    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 8
    move-result p2

    .line 11
    invoke-static {p1, p0, v0, p2}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    .line 12
    return-object p1
    .line 15
.end method

.method public final sendResultAndCleanUp(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 2
    const-string v1, "AuthController"

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string/jumbo p0, "sendResultAndCleanUp: Receiver is null"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 18
    :catch_0
    move-exception p2

    .line 19
    const-string v0, "Remote exception"

    .line 20
    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :goto_0
    const-string p2, "onDialogDismissed: "

    .line 25
    invoke-static {p2, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 30
    if-nez p1, :cond_1

    .line 32
    const-string p1, "Dialog already dismissed"

    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 39
    check-cast p1, Ljava/util/HashSet;

    .line 41
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 46
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 56
    check-cast p2, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 57
    invoke-interface {p2}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptDismissed()V

    .line 59
    goto :goto_1

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 66
    return-void
    .line 68
.end method

.method public final setBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mLogContextInteractor:Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractor;

    .line 2
    check-cast p0, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/domain/interactor/LogContextInteractorImpl;->addBiometricContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 6
    return-void
    .line 9
.end method

.method public final setUdfpsRefreshRateCallback(Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsRefreshRateRequestCallback:Landroid/hardware/fingerprint/IUdfpsRefreshRateRequestCallback;

    .line 2
    return-void
    .line 4
.end method

.method public final showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;J)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    move-wide/from16 v2, p7

    .line 4
    move-wide/from16 v4, p10

    .line 6
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 8
    move-result v6

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    array-length v8, v1

    .line 17
    const/4 v9, 0x0

    .line 18
    move v10, v9

    .line 19
    :goto_0
    if-ge v10, v8, :cond_0

    .line 20
    aget v11, v1, v10

    .line 22
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v11, " "

    .line 27
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v10, v10, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const-string/jumbo v8, "showAuthenticationDialog, authenticators: "

    .line 35
    const-string v10, ", sensorIds: "

    .line 38
    invoke-static {v8, v6, v10}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v6

    .line 43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v7

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v7, ", credentialAllowed: "

    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move/from16 v7, p4

    .line 56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    const-string v8, ", requireConfirmation: "

    .line 61
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    move/from16 v8, p5

    .line 66
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    const-string v10, ", operationId: "

    .line 71
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    const-string v10, ", requestId: "

    .line 79
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v6

    .line 90
    const-string v10, "AuthController"

    .line 91
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 96
    move-result-object v6

    .line 99
    move-object v11, p1

    .line 100
    iput-object v11, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 101
    move-object v11, p2

    .line 103
    iput-object v11, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 104
    iput-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 106
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    move-result-object v1

    .line 111
    iput-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 112
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    move-result-object v1

    .line 117
    iput-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 118
    move/from16 v1, p6

    .line 120
    iput v1, v6, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 122
    move-object/from16 v1, p9

    .line 124
    iput-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 126
    iput-wide v2, v6, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 128
    iput-wide v4, v6, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 130
    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 132
    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    const-string v2, "mCurrentDialog: "

    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 151
    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v9, 0x1

    .line 155
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptViewModelProvider:Ljavax/inject/Provider;

    .line 156
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 158
    move-result-object v1

    .line 161
    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    .line 162
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0, v6, v9, v2, v1}, Lcom/android/systemui/biometrics/AuthController;->showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V

    .line 165
    return-void
    .line 168
.end method

.method public final showDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v17, p4

    .line 8
    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 10
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 12
    move-object v15, v3

    .line 14
    check-cast v15, Landroid/hardware/biometrics/PromptInfo;

    .line 15
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 17
    check-cast v3, [I

    .line 19
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 21
    check-cast v4, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 28
    check-cast v4, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v5

    .line 35
    iget v14, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 36
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 38
    move-object v6, v4

    .line 40
    check-cast v6, Ljava/lang/String;

    .line 41
    iget-wide v7, v1, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 43
    iget-wide v12, v1, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 45
    iget-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 47
    move-object/from16 v20, v4

    .line 49
    iget-object v9, v0, Lcom/android/systemui/biometrics/AuthController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 51
    iget-object v10, v0, Lcom/android/systemui/biometrics/AuthController;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 53
    iget-object v11, v0, Lcom/android/systemui/biometrics/AuthController;->mUserManager:Landroid/os/UserManager;

    .line 55
    iget-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 57
    move-wide v1, v12

    .line 59
    move-object v12, v4

    .line 60
    new-instance v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 61
    move-object v4, v13

    .line 63
    invoke-direct {v13}, Lcom/android/systemui/biometrics/AuthContainerView$Config;-><init>()V

    .line 64
    move-object/from16 p4, v4

    .line 67
    iget-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    .line 69
    iput-object v4, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mContext:Landroid/content/Context;

    .line 71
    iput-object v0, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    .line 73
    iput-object v15, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 75
    iput-boolean v5, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    .line 77
    iput v14, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    .line 79
    iput-object v6, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    .line 81
    move/from16 v4, p2

    .line 83
    iput-boolean v4, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipIntro:Z

    .line 85
    iput-wide v7, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOperationId:J

    .line 87
    iput-wide v1, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    .line 89
    iput-object v3, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    .line 91
    new-instance v1, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;

    .line 93
    invoke-direct {v1, v0}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    .line 95
    iput-object v1, v13, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mScaleProvider:Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;

    .line 98
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 100
    move-object v3, v1

    .line 102
    iget-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 103
    iget-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mApplicationCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 105
    iget-object v7, v0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    .line 107
    iget-object v8, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    .line 109
    iget-object v13, v0, Lcom/android/systemui/biometrics/AuthController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 111
    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mAuthBiometricFingerprintViewModelProvider:Ljavax/inject/Provider;

    .line 113
    move v4, v14

    .line 115
    move-object v14, v2

    .line 116
    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptCredentialInteractor:Ljavax/inject/Provider;

    .line 117
    move-object/from16 v16, v2

    .line 119
    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mPromptSelectorInteractor:Ljavax/inject/Provider;

    .line 121
    move-object/from16 v21, v15

    .line 123
    move-object v15, v2

    .line 125
    iget-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mCredentialViewModelProvider:Ljavax/inject/Provider;

    .line 126
    move-object/from16 v18, v2

    .line 128
    new-instance v2, Landroid/os/Handler;

    .line 130
    move-object/from16 v19, v2

    .line 132
    move/from16 p2, v4

    .line 134
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 136
    move-result-object v4

    .line 139
    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    move/from16 v2, p2

    .line 143
    move-object/from16 v4, p4

    .line 145
    invoke-direct/range {v3 .. v20}, Lcom/android/systemui/biometrics/AuthContainerView;-><init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Landroid/os/UserManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/jank/InteractionJankMonitor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljavax/inject/Provider;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v4, "userId: "

    .line 152
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, " savedState: "

    .line 161
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    move-object/from16 v2, p3

    .line 166
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v4, " mCurrentDialog: "

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v4, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    const-string v4, " newDialog: "

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v3

    .line 192
    const-string v4, "AuthController"

    .line 193
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 198
    const/4 v4, 0x0

    .line 200
    if-eqz v3, :cond_0

    .line 201
    check-cast v3, Lcom/android/systemui/biometrics/AuthContainerView;

    .line 203
    invoke-virtual {v3, v4}, Lcom/android/systemui/biometrics/AuthContainerView;->dismissWithoutCallback(Z)V

    .line 205
    :cond_0
    move-object/from16 v3, p1

    .line 208
    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 210
    check-cast v3, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 212
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 214
    iget-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 216
    check-cast v3, Ljava/util/HashSet;

    .line 218
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 220
    move-result-object v3

    .line 223
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    move-result v5

    .line 227
    if-eqz v5, :cond_1

    .line 228
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v5

    .line 233
    check-cast v5, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 234
    invoke-interface {v5}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptShown()V

    .line 236
    goto :goto_0

    .line 239
    :cond_1
    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 240
    iget-object v3, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 242
    if-eqz v3, :cond_2

    .line 244
    invoke-interface {v3, v2}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 246
    :cond_2
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    .line 249
    iget-object v3, v1, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 251
    iget-object v3, v3, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 253
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 255
    move-result-object v3

    .line 258
    invoke-static {v2, v3}, Lcom/android/systemui/biometrics/AuthContainerView;->getLayoutParams(Landroid/os/IBinder;Ljava/lang/CharSequence;)Landroid/view/WindowManager$LayoutParams;

    .line 259
    move-result-object v2

    .line 262
    iget-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mWindowManager:Landroid/view/WindowManager;

    .line 263
    invoke-interface {v3, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    .line 268
    move-result v1

    .line 271
    if-nez v1, :cond_3

    .line 272
    new-instance v1, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda1;

    .line 274
    invoke-direct {v1, v0, v4}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthController;I)V

    .line 276
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController;->mHandler:Landroid/os/Handler;

    .line 279
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    :cond_3
    return-void
    .line 284
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Lcom/android/systemui/biometrics/AuthController$6;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthController$6;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    new-instance v1, Lcom/android/systemui/biometrics/AuthController$7;

    .line 23
    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthController$7;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 31
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mOrientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 38
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/BiometricDisplayListener;->enable()V

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    .line 43
    return-void
    .line 46
.end method

.method public final updateSensorLocations()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mDisplay:Landroid/view/Display;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object v0, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 14
    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 20
    move-result v2

    .line 23
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 28
    move-result v3

    .line 31
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 32
    move-result v4

    .line 35
    invoke-static {v2, v0, v3, v4}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    .line 36
    move-result v0

    .line 39
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 40
    cmpl-float v2, v0, v2

    .line 42
    if-nez v2, :cond_0

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    :cond_0
    iput v0, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->updateUdfpsLocation()V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    .line 53
    const/4 v2, 0x0

    .line 55
    if-nez v0, :cond_1

    .line 56
    iput-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintSensorLocation:Landroid/graphics/Point;

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->getFingerprintSensorLocationInNaturalOrientation()Landroid/graphics/Point;

    .line 61
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthController;->rotateToCurrentOrientation(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Landroid/graphics/Point;

    .line 65
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintSensorLocation:Landroid/graphics/Point;

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 71
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v3

    .line 76
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 86
    check-cast v4, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 87
    invoke-interface {v4}, Lcom/android/systemui/biometrics/AuthController$Callback;->onFingerprintLocationChanged()V

    .line 89
    goto :goto_1

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceProps:Ljava/util/List;

    .line 93
    if-eqz v3, :cond_4

    .line 95
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceSensorLocationDefault:Landroid/graphics/Point;

    .line 97
    if-nez v3, :cond_3

    .line 99
    goto :goto_2

    .line 101
    :cond_3
    new-instance v2, Landroid/graphics/Point;

    .line 102
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 104
    int-to-float v4, v4

    .line 106
    iget v5, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    .line 107
    mul-float/2addr v4, v5

    .line 109
    float-to-int v4, v4

    .line 110
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 111
    int-to-float v3, v3

    .line 113
    mul-float/2addr v3, v5

    .line 114
    float-to-int v3, v3

    .line 115
    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 116
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/biometrics/AuthController;->rotateToCurrentOrientation(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Landroid/graphics/Point;

    .line 119
    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceSensorLocation:Landroid/graphics/Point;

    .line 123
    goto :goto_3

    .line 125
    :cond_4
    :goto_2
    iput-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mFaceSensorLocation:Landroid/graphics/Point;

    .line 126
    :goto_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object p0

    .line 131
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result v0

    .line 135
    if-eqz v0, :cond_5

    .line 136
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    move-result-object v0

    .line 141
    check-cast v0, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 142
    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthController$Callback;->onFaceSensorLocationChanged()V

    .line 144
    goto :goto_4

    .line 147
    :cond_5
    return-void
    .line 148
.end method

.method public final updateUdfpsLocation()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 13
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 15
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 17
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 19
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Landroid/hardware/biometrics/SensorLocationInternal;->getRect()Landroid/graphics/Rect;

    .line 23
    move-result-object v4

    .line 26
    iput-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 27
    iget v5, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    .line 29
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 31
    new-instance v8, Landroid/graphics/Rect;

    .line 34
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mCachedDisplayInfo:Landroid/view/DisplayInfo;

    .line 36
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 38
    move-result v5

    .line 41
    div-int/lit8 v5, v5, 0x2

    .line 42
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 44
    move-result v6

    .line 47
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 48
    move-result v7

    .line 51
    invoke-direct {v8, v1, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52
    new-instance v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 55
    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 59
    move-result v9

    .line 62
    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 63
    move-result v10

    .line 66
    iget v11, p0, Lcom/android/systemui/biometrics/AuthController;->mScaleFactor:F

    .line 67
    iget v12, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 69
    move-object v6, v1

    .line 71
    invoke-direct/range {v6 .. v12}, Lcom/android/settingslib/udfps/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFI)V

    .line 72
    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 75
    iget-object v4, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 77
    iget-object v5, v4, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 79
    iget v5, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 81
    iget v6, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 83
    if-eq v5, v6, :cond_0

    .line 85
    iput-object v0, v4, Lcom/android/systemui/biometrics/UdfpsController;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 87
    const-string v0, "UdfpsController"

    .line 89
    const-string/jumbo v5, "updateUdfpsParams | sensorId has changed"

    .line 91
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, v4, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    iput-object v1, v4, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 105
    iget-object v0, v4, Lcom/android/systemui/biometrics/UdfpsController;->mAlternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 107
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 109
    move-result v0

    .line 112
    iget-object v1, v4, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    .line 113
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v4}, Lcom/android/systemui/biometrics/UdfpsController;->hideUdfpsOverlay()V

    .line 117
    invoke-virtual {v4, v1}, Lcom/android/systemui/biometrics/UdfpsController;->showUdfpsOverlay(Lcom/android/systemui/biometrics/UdfpsControllerOverlay;)V

    .line 120
    :cond_1
    if-eqz v0, :cond_2

    .line 123
    iget-object v0, v4, Lcom/android/systemui/biometrics/UdfpsController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 125
    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    .line 131
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 139
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    move-result v0

    .line 144
    if-nez v0, :cond_4

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    .line 147
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v0

    .line 152
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    move-result v1

    .line 156
    if-eqz v1, :cond_4

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    move-result-object v1

    .line 162
    check-cast v1, Lcom/android/systemui/biometrics/AuthController$Callback;

    .line 163
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 165
    invoke-interface {v1, v2}, Lcom/android/systemui/biometrics/AuthController$Callback;->onUdfpsLocationChanged(Lcom/android/settingslib/udfps/UdfpsOverlayParams;)V

    .line 167
    goto :goto_0

    .line 170
    :cond_4
    return-void
    .line 171
.end method
