.class public final Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CUSTOMIZED_REGION:Ljava/lang/String;

.field public static final RSRP_THRESH_LENIENT:[I

.field public static final sLocalLogs:Ljava/util/HashMap;


# instance fields
.field public final m5gIconCarrierOptimization:[Z

.field public mBindRetryTimes:I

.field final mCallback:Lcom/qti/extphone/IExtPhoneCallback;

.field public mClient:Lcom/qti/extphone/Client;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentServiceStates:Landroid/util/SparseArray;

.field public mDefaultDataSlotId:I

.field public final mFiveGStateListener:Lcom/android/systemui/statusbar/policy/FiveGControllerImpl$FiveGStateListener;

.field public final mGetCustomedRsrpThresholdsMethod:Ljava/lang/reflect/Method;

.field public final mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

.field public mInitRetryTimes:I

.field public final mIntentReceiver:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;

.field public final mIsCustForJpKd:Z

.field public final mIsCustForJpRk:Z

.field public final mIsCustForKrOps:Z

.field public final mIsDelayUpdate5GIcon:[Z

.field public mIsDualNrEnabled:Z

.field public mIsUserFiveGEnabled:Z

.field public final mLastBearerAllocationStatus:[I

.field public final mLastServiceStates:Landroid/util/SparseArray;

.field public final mMobileSignalControllers:Landroid/util/SparseArray;

.field public final mNetworkService:Lcom/qti/extphone/ExtTelephonyManager;

.field public final mPackageName:Ljava/lang/String;

.field public final mPhoneCount:I

.field public final mServiceCallback:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

.field public mServiceConnected:Z


# direct methods
.method public static -$$Nest$minitFiveGServiceState(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    const/4 v2, 0x2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    const-string v3, "initFiveGServiceState slotId = "

    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    const-string v3, "FiveGServiceClient"

    .line 24
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string v2, "queryNrIconType result:"

    .line 29
    const-string v4, "query5gConfigInfo result:"

    .line 31
    const-string v5, "queryUpperLayerIndInfo result:"

    .line 33
    const-string v6, "queryNrSignalStrength result:"

    .line 35
    const-string v7, "queryNrBearerAllocation result:"

    .line 37
    const-string v8, "queryNrDcParam result:"

    .line 39
    new-instance v9, Ljava/lang/StringBuilder;

    .line 41
    const-string v10, "initFiveGServiceState initRetryTimes="

    .line 43
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget v10, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mInitRetryTimes:I

    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v10, " maxRetryTimes=10 mNetworkService="

    .line 53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mNetworkService:Lcom/qti/extphone/ExtTelephonyManager;

    .line 58
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v11, " mClient="

    .line 63
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 68
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v9

    .line 76
    const-string v11, "initFiveGServiceState"

    .line 77
    invoke-static {v11, v9}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-eqz v10, :cond_0

    .line 82
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 84
    if-eqz v9, :cond_0

    .line 86
    const-string v9, "query 5G service state for phoneId "

    .line 88
    invoke-static {v9, v1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 93
    invoke-virtual {v10, v1, v9}, Lcom/qti/extphone/ExtTelephonyManager;->queryNrDcParam(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 95
    move-result-object v9

    .line 98
    new-instance v11, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v8

    .line 110
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 114
    invoke-virtual {v10, v1, v8}, Lcom/qti/extphone/ExtTelephonyManager;->queryNrBearerAllocation(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 116
    move-result-object v8

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v7

    .line 131
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 135
    invoke-virtual {v10, v1, v7}, Lcom/qti/extphone/ExtTelephonyManager;->queryNrSignalStrength(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 137
    move-result-object v7

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 152
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 156
    invoke-virtual {v10, v1, v6}, Lcom/qti/extphone/ExtTelephonyManager;->queryUpperLayerIndInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 158
    move-result-object v6

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v5

    .line 173
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 177
    invoke-virtual {v10, v1, v5}, Lcom/qti/extphone/ExtTelephonyManager;->query5gConfigInfo(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 179
    move-result-object v5

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 194
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mClient:Lcom/qti/extphone/Client;

    .line 198
    invoke-virtual {v10, v1, v4}, Lcom/qti/extphone/ExtTelephonyManager;->queryNrIconType(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 200
    move-result-object v4

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v2

    .line 215
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mInitRetryTimes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_1

    .line 221
    :catch_0
    move-exception v2

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    .line 223
    const-string v5, "initFiveGServiceState: Exception = "

    .line 225
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v2

    .line 236
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mInitRetryTimes:I

    .line 240
    const/16 v3, 0xa

    .line 242
    if-ge v2, v3, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 246
    const/16 v3, 0x2712

    .line 248
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 250
    move-result v4

    .line 253
    if-nez v4, :cond_0

    .line 254
    iget v4, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mInitRetryTimes:I

    .line 256
    mul-int/lit16 v4, v4, 0x7d0

    .line 258
    add-int/lit16 v4, v4, 0xbb8

    .line 260
    int-to-long v4, v4

    .line 262
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 263
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mInitRetryTimes:I

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 268
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mInitRetryTimes:I

    .line 270
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 272
    goto/16 :goto_0

    .line 274
    :cond_1
    return-void
    .line 276
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "ro.miui.customized.region"

    .line 2
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 11
    const/16 v0, -0x6e

    .line 13
    const/16 v1, -0x66

    .line 15
    const/16 v2, -0x8c

    .line 17
    const/16 v3, -0x7d

    .line 19
    const/16 v4, -0x73

    .line 21
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 23
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->RSRP_THRESH_LENIENT:[I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    sput-object v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->sLocalLogs:Ljava/util/HashMap;

    .line 34
    return-void
    .line 36
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/FiveGControllerImpl$FiveGStateListener;)V
    .locals 7

    .line 1
    const-string v0, "FiveGServiceClient"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    .line 7
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    .line 12
    new-instance v2, Landroid/util/SparseArray;

    .line 14
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    .line 19
    new-instance v3, Landroid/util/SparseArray;

    .line 21
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 23
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 26
    const/4 v3, 0x0

    .line 28
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mBindRetryTimes:I

    .line 29
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mInitRetryTimes:I

    .line 31
    const/4 v4, 0x1

    .line 33
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsUserFiveGEnabled:Z

    .line 34
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDualNrEnabled:Z

    .line 36
    const/4 v5, 0x0

    .line 38
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDelayUpdate5GIcon:[Z

    .line 39
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mLastBearerAllocationStatus:[I

    .line 41
    new-instance v6, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 43
    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V

    .line 45
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mServiceCallback:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;

    .line 48
    new-instance v6, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;

    .line 50
    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$2;-><init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V

    .line 52
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 55
    new-instance v6, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;

    .line 57
    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;-><init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V

    .line 59
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIntentReceiver:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v6

    .line 69
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mPackageName:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    .line 72
    move-result-object p1

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mNetworkService:Lcom/qti/extphone/ExtTelephonyManager;

    .line 76
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/FiveGControllerImpl$FiveGStateListener;

    .line 78
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 80
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;-><init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;Landroid/os/Looper;)V

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 85
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 87
    invoke-direct {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;-><init>()V

    .line 89
    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 95
    invoke-direct {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;-><init>()V

    .line 97
    invoke-virtual {v1, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 103
    invoke-direct {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;-><init>()V

    .line 105
    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 111
    invoke-direct {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;-><init>()V

    .line 113
    invoke-virtual {v2, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    const-string p1, "jp_rk"

    .line 119
    sget-object p2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result p1

    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForJpRk:Z

    .line 127
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    .line 129
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    .line 133
    move-result p1

    .line 136
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mPhoneCount:I

    .line 137
    new-array p1, p1, [Z

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->m5gIconCarrierOptimization:[Z

    .line 141
    :try_start_0
    const-class p1, Lmiui/telephony/TelephonyManager;

    .line 143
    const-string p2, "isCustForKrOps"

    .line 145
    new-array p3, v3, [Ljava/lang/Class;

    .line 147
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 149
    move-result-object p1

    .line 152
    new-array p2, v3, [Ljava/lang/Object;

    .line 153
    invoke-virtual {p1, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    move-result p1

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForKrOps:Z

    .line 165
    const-class p1, Lmiui/telephony/TelephonyManager;

    .line 167
    const-string p2, "isCustForJpKd"

    .line 169
    new-array p3, v3, [Ljava/lang/Class;

    .line 171
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 173
    move-result-object p1

    .line 176
    new-array p2, v3, [Ljava/lang/Object;

    .line 177
    invoke-virtual {p1, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-result-object p1

    .line 182
    check-cast p1, Ljava/lang/Boolean;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    move-result p1

    .line 188
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForJpKd:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 191
    :catch_0
    move-exception p1

    .line 192
    const-string p2, "isCustForKrOps or mIsCustForJpKd Exception"

    .line 193
    invoke-static {p2, p1, v0}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 195
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForKrOps:Z

    .line 198
    if-eqz p1, :cond_0

    .line 200
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;

    .line 202
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 204
    invoke-direct {p1, p0, p2, v4}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;-><init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;I)V

    .line 206
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 211
    move-result-object p2

    .line 214
    const-string/jumbo p3, "setting_network_state_display"

    .line 215
    invoke-static {p3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 218
    move-result-object p3

    .line 221
    invoke-virtual {p2, p3, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 222
    iget p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mPhoneCount:I

    .line 225
    new-array p2, p1, [Z

    .line 227
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDelayUpdate5GIcon:[Z

    .line 229
    new-array p1, p1, [I

    .line 231
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mLastBearerAllocationStatus:[I

    .line 233
    move p1, v3

    .line 235
    :goto_1
    iget p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mPhoneCount:I

    .line 236
    if-ge p1, p2, :cond_0

    .line 238
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDelayUpdate5GIcon:[Z

    .line 240
    aput-boolean v3, p2, p1

    .line 242
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mLastBearerAllocationStatus:[I

    .line 244
    aput v3, p2, p1

    .line 246
    add-int/lit8 p1, p1, 0x1

    .line 248
    goto :goto_1

    .line 250
    :cond_0
    :try_start_1
    const-string p1, "android.telephony.MiuiCellSignalStrength"

    .line 251
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 253
    move-result-object p1

    .line 256
    const-string p2, "getCustomedRsrpThresholds"

    .line 257
    new-array p3, v3, [Ljava/lang/Class;

    .line 259
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 261
    move-result-object p1

    .line 264
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mGetCustomedRsrpThresholdsMethod:Ljava/lang/reflect/Method;

    .line 265
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    goto :goto_2

    .line 270
    :catch_1
    move-exception p1

    .line 271
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mGetCustomedRsrpThresholdsMethod:Ljava/lang/reflect/Method;

    .line 272
    const-string p2, "init can\'t find getCustomedRsrpThresholds.\n"

    .line 274
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :goto_2
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;

    .line 279
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 281
    invoke-direct {p1, p0, p2, v3}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$3;-><init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;I)V

    .line 283
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 288
    move-result-object v0

    .line 291
    const-string v1, "fiveg_user_enable"

    .line 292
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 294
    move-result-object v1

    .line 297
    invoke-virtual {v0, v1, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 301
    move-result-object v0

    .line 304
    const-string v1, "dual_nr_enabled"

    .line 305
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 307
    move-result-object v1

    .line 310
    invoke-virtual {v0, v1, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->update5GIcon()V

    .line 314
    new-instance p1, Landroid/content/IntentFilter;

    .line 317
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    const-string v0, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    .line 322
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 327
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIntentReceiver:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;

    .line 332
    invoke-virtual {p3, v0, p1, v5, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 334
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 337
    const/16 p1, 0x2711

    .line 339
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 341
    return-void
    .line 344
.end method

.method public static getConfigDIconGroup(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getNrIconTypeIconGroup(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 10
    if-gtz v1, :cond_0

    .line 12
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mUpperLayerInd:I

    .line 14
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mPlmn:I

    .line 19
    if-ne p0, v2, :cond_1

    .line 21
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 23
    :cond_1
    return-object v0
    .line 25
.end method

.method public static getNrIconTypeIconGroup(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 2
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eq p0, v1, :cond_1

    .line 7
    const/4 v1, 0x2

    .line 9
    if-eq p0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 16
    :goto_0
    return-object v0
    .line 18
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "FiveGServiceClient."

    .line 2
    invoke-static {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    sget-object v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->sLocalLogs:Ljava/util/HashMap;

    .line 8
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    new-instance v1, Landroid/util/LocalLog;

    .line 17
    const/16 v2, 0x1e

    .line 19
    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    .line 21
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    check-cast p0, Landroid/util/LocalLog;

    .line 31
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const-string p0, "FiveGServiceClient"

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
    .line 45
.end method


# virtual methods
.method public final getCellIdentityLte(I)Landroid/telephony/CellIdentityLte;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mMobileSignalControllers:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getServiceState()Landroid/telephony/ServiceState;

    .line 18
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 22
    return-object v1

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 29
    if-eqz p0, :cond_4

    .line 30
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_4

    .line 36
    const/4 v0, 0x0

    .line 38
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    check-cast p0, Landroid/telephony/NetworkRegistrationInfo;

    .line 50
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    .line 52
    move-result-object p0

    .line 55
    instance-of v0, p0, Landroid/telephony/CellIdentityLte;

    .line 56
    if-eqz v0, :cond_3

    .line 58
    move-object v1, p0

    .line 60
    check-cast v1, Landroid/telephony/CellIdentityLte;

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "cellIdentity = "

    .line 65
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string p0, "cellIdentityLte = "

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string p0, ", slotId = "

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    const-string p1, "getCellIdentityLte"

    .line 93
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_4
    :goto_0
    return-object v1
    .line 98
.end method

.method public getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 12
    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;-><init>()V

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    :cond_0
    return-object v0
    .line 20
.end method

.method public final notifyListenersIfNecessary(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    check-cast v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 12
    if-nez v2, :cond_0

    .line 14
    new-instance v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    .line 16
    invoke-direct {v2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;-><init>()V

    .line 18
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_0
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 24
    iget v3, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 26
    if-ne v1, v3, :cond_1

    .line 28
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mPlmn:I

    .line 30
    iget v3, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mPlmn:I

    .line 32
    if-ne v1, v3, :cond_1

    .line 34
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mUpperLayerInd:I

    .line 36
    iget v3, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mUpperLayerInd:I

    .line 38
    if-ne v1, v3, :cond_1

    .line 40
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mDcnr:I

    .line 42
    iget v3, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mDcnr:I

    .line 44
    if-ne v1, v3, :cond_1

    .line 46
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mLevel:I

    .line 48
    iget v3, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mLevel:I

    .line 50
    if-ne v1, v3, :cond_1

    .line 52
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    .line 54
    iget v3, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    .line 56
    if-ne v1, v3, :cond_1

    .line 58
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 60
    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 62
    if-ne v1, v3, :cond_1

    .line 64
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 66
    iget v3, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 68
    if-ne v1, v3, :cond_1

    .line 70
    const/4 v1, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, 0x0

    .line 74
    :goto_0
    if-nez v1, :cond_2

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    const-string v3, "phoneId("

    .line 79
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v3, ") Change in state from "

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string v3, " \n\tto "

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 106
    const-string v3, "FiveGServiceClient"

    .line 107
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 112
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    .line 114
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mPlmn:I

    .line 116
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mPlmn:I

    .line 118
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mUpperLayerInd:I

    .line 120
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mUpperLayerInd:I

    .line 122
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mDcnr:I

    .line 124
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mDcnr:I

    .line 126
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mLevel:I

    .line 128
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mLevel:I

    .line 130
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    .line 132
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    .line 134
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 136
    iput-object v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 138
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 140
    iput v1, v2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mFiveGStateListener:Lcom/android/systemui/statusbar/policy/FiveGControllerImpl$FiveGStateListener;

    .line 144
    if-eqz p0, :cond_2

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl$FiveGStateListener;->this$0:Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mFiveGServiceStates:Landroid/util/SparseArray;

    .line 150
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGControllerImpl;->mMobileSignalController:Landroid/util/SparseArray;

    .line 155
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 157
    move-result-object p0

    .line 160
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    .line 161
    if-eqz p0, :cond_2

    .line 163
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->getSignalLevel()I

    .line 165
    move-result p1

    .line 168
    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mQcom5GLevel:I

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    .line 171
    :cond_2
    return-void
    .line 174
.end method

.method public final update5GIcon()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fiveg_user_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsUserFiveGEnabled:Z

    .line 107
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isDualNrEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDualNrEnabled:Z

    .line 108
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mDefaultDataSlotId:I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "5G enable state has changed to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsUserFiveGEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDualNrEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDualNrEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", dds is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mDefaultDataSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "5GEnabledChanged"

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mPhoneCount:I

    if-ge v1, v0, :cond_1

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->update5GIcon(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public update5GIcon(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;I)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mDefaultDataSlotId:I

    const-string v1, "46000"

    if-ne p2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsUserFiveGEnabled:Z

    if-eqz v2, :cond_1

    :cond_0
    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDualNrEnabled:Z

    if-nez v0, :cond_2

    .line 2
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    goto/16 :goto_c

    .line 3
    :cond_2
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrConfigType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 4
    iget v0, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    if-gtz v0, :cond_4

    iget v0, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    goto :goto_1

    .line 6
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 7
    :goto_1
    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    goto/16 :goto_c

    :cond_5
    if-nez v0, :cond_22

    .line 8
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[I

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsCustForKrOps:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    .line 10
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 11
    iget v4, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mLastBearerAllocationStatus:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDelayUpdate5GIcon:[Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    const/16 v8, 0x2713

    const-string v9, "FiveGServiceClient"

    if-eq v4, v2, :cond_7

    const/4 v10, 0x2

    if-ne v4, v10, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 13
    aput-boolean v3, v6, p2

    const-string v4, "LTE connected removed DELAY_UPDATE_5GICON "

    .line 14
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_4

    .line 16
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v10, "setting_network_state_display"

    .line 18
    invoke-static {v4, v10, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 19
    iget v10, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    if-lez v10, :cond_9

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    aput-boolean v3, v6, p2

    const-string v0, "5G connected removed DELAY_UPDATE_5GICON "

    .line 22
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 24
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_KR_ON:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    goto :goto_3

    .line 25
    :cond_9
    aget v10, v5, p2

    if-lez v10, :cond_a

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 27
    aput-boolean v2, v6, p2

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-string/jumbo v10, "send DELAY_UPDATE_5GICON "

    .line 29
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x2af8

    .line 30
    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 31
    :cond_a
    aget-boolean v6, v6, p2

    if-eqz v6, :cond_b

    const-string v0, "isDelayUpdate5GIcon show 5G reverse icon"

    .line 32
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_KR_ON:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    goto :goto_3

    :cond_b
    if-ne v4, v2, :cond_c

    .line 34
    iget v6, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mUpperLayerInd:I

    if-ne v6, v2, :cond_c

    iget v6, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mPlmn:I

    if-ne v6, v2, :cond_c

    .line 35
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_KR_OFF:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    :cond_c
    :goto_3
    const-string v6, "getKrFiveGIcon isAvailNetworkDisplay = "

    .line 36
    invoke-static {v6, v4, v9}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    :cond_d
    :goto_4
    iget v4, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mBearerAllocationStatus:I

    aput v4, v5, p2

    .line 38
    sget-object v4, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_KR_ON:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    const-string v5, "0"

    const-string v6, "persist.sys.lgu.5g.indicator"

    if-ne v0, v4, :cond_e

    .line 39
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 40
    :cond_e
    sget-object v4, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_KR_OFF:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    if-ne v0, v4, :cond_f

    .line 41
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    const-string v4, "2"

    .line 42
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCustKrNrIcon krNrIcon = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 44
    :cond_10
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "andromeda"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 45
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "20810"

    .line 46
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "26806"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_6

    :cond_11
    move v4, v3

    goto :goto_7

    :cond_12
    :goto_6
    move v4, v2

    :goto_7
    if-eqz v4, :cond_14

    :cond_13
    const-string v4, "crux"

    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 48
    :cond_14
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getConfigDIconGroup(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    move-result-object v0

    goto :goto_8

    .line 49
    :cond_15
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_19

    .line 50
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    .line 51
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-virtual {v0, v1, v4}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 53
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_17

    :cond_16
    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_18

    .line 54
    :cond_17
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getNrIconTypeIconGroup(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    move-result-object v0

    goto :goto_8

    .line 55
    :cond_18
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getConfigDIconGroup(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    move-result-object v0

    goto :goto_8

    .line 56
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->m5gIconCarrierOptimization:[Z

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_1a

    .line 57
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getConfigDIconGroup(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    move-result-object v0

    goto :goto_8

    .line 58
    :cond_1a
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getNrIconTypeIconGroup(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;)Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    move-result-object v0

    .line 59
    :goto_8
    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 60
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mDefaultDataSlotId:I

    move v4, v3

    .line 61
    :goto_9
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mPhoneCount:I

    if-ge v4, v5, :cond_1c

    if-eq v4, v0, :cond_1b

    goto :goto_a

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1c
    const/4 v4, -0x1

    .line 62
    :goto_a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mDefaultDataSlotId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    move-result-object v0

    .line 63
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;

    move-result-object v5

    .line 64
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsUserFiveGEnabled:Z

    if-eqz v6, :cond_21

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDualNrEnabled:Z

    if-eqz v6, :cond_21

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    sget-object v7, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    if-ne v6, v7, :cond_21

    iget v6, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mUpperLayerInd:I

    if-ne v6, v2, :cond_1d

    iget v6, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mPlmn:I

    if-eq v6, v2, :cond_21

    .line 65
    :cond_1d
    iget v6, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mDefaultDataSlotId:I

    .line 66
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 69
    iget v8, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mDefaultDataSlotId:I

    .line 70
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getCellIdentityLte(I)Landroid/telephony/CellIdentityLte;

    move-result-object v8

    .line 71
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->getCellIdentityLte(I)Landroid/telephony/CellIdentityLte;

    move-result-object v9

    if-eqz v8, :cond_1e

    if-eqz v9, :cond_1e

    .line 72
    invoke-virtual {v8, v9}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_1e
    if-eqz v6, :cond_1f

    if-eqz v3, :cond_1f

    .line 73
    iput-object v7, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 74
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->notifyListenersIfNecessary(I)V

    goto :goto_b

    .line 75
    :cond_1f
    iget-object v8, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    if-ne v8, v7, :cond_20

    iget v7, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    if-eq v7, v2, :cond_20

    .line 76
    sget-object v2, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    iput-object v2, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 77
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->notifyListenersIfNecessary(I)V

    :cond_20
    :goto_b
    const-string v2, "isSameOperatorCard = "

    const-string v4, ", isSameCell = "

    const-string v7, ", dataSlotIdState = "

    .line 78
    invoke-static {v2, v6, v4, v3, v7}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", viceSlotIdState = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsDualNrEnabled = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDualNrEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mDefaultDataSlotId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mDefaultDataSlotId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dualNrIconGroupOptimization"

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 80
    :cond_21
    iget-object v0, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    if-ne v0, v3, :cond_23

    iget v0, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mNrIconType:I

    if-eq v0, v2, :cond_23

    .line 81
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    iput-object v0, v5, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 82
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->notifyListenersIfNecessary(I)V

    goto :goto_c

    .line 83
    :cond_22
    sget-object v0, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    iput-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 84
    :cond_23
    :goto_c
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$FiveGServiceState;->mIconGroup:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    .line 85
    sget-object v2, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    const-string v3, "persist.sys.5g.indicator"

    if-eq v0, v2, :cond_25

    sget-object v2, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    if-eq v0, v2, :cond_25

    sget-object v2, Lcom/android/systemui/statusbar/mobile/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;

    if-ne v0, v2, :cond_24

    goto :goto_d

    .line 86
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "13"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 87
    :cond_25
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "20"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_e
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->notifyListenersIfNecessary(I)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update5GIcon slotId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update5GIcon FiveGServiceState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mIsUserFiveGEnabled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsUserFiveGEnabled:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsDualNrEnabled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mIsDualNrEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", cmccSim="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p0

    .line 91
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p0, v1, p1}, Lmiui/telephony/TelephonyManager;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
