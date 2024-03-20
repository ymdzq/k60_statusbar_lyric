.class public Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "HapticFeedbackCompat.java"


# static fields
.field private static mAvailable:Z

.field private static mCanCheckExtHaptic:Z

.field private static mCanStop:Z

.field private static mExtHapticAlways:Z

.field private static mIsSupportExtHapticWithReason:Z

.field private static mIsSupportHapticWithReason:Z

.field private static mPerformExtHapticFeedbackThreeParamsMethodExist:Z

.field private static mPerformExtHapticFeedbackTwoParamsMethodExist:Z

.field private static mPerformHapticFeedbackFourParamsMethod1Exist:Z

.field private static mPerformHapticFeedbackFourParamsMethod2Exist:Z

.field private static final sSingleThread:Ljava/util/concurrent/Executor;


# instance fields
.field private hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "HapticFeedbackCompat"

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lmiuix/util/HapticFeedbackCompat;->sSingleThread:Ljava/util/concurrent/Executor;

    .line 57
    sget v1, Lmiuix/view/PlatformConstants;->VERSION:I

    const-class v2, Ljava/lang/String;

    const-string v3, "performHapticFeedback"

    const-string v4, "performExtHapticFeedback"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v1, v8, :cond_0

    .line 59
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v1

    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v9, "MIUI Haptic Implementation is not available"

    .line 61
    invoke-static {v0, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 65
    :goto_0
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-eqz v1, :cond_0

    .line 67
    :try_start_1
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v2, v9, v6

    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v9, "Not support haptic with reason"

    .line 70
    invoke-static {v0, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mIsSupportHapticWithReason:Z

    .line 74
    :goto_1
    :try_start_2
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "isSupportExtHapticFeedback"

    new-array v10, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 75
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 77
    :catchall_2
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mCanCheckExtHaptic:Z

    .line 81
    :goto_2
    :try_start_3
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v6, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    invoke-virtual {v1, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 84
    :catchall_3
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mExtHapticAlways:Z

    .line 88
    :goto_3
    :try_start_4
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "stop"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 91
    :catchall_4
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mCanStop:Z

    .line 95
    :goto_4
    :try_start_5
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v2, v9, v6

    invoke-virtual {v1, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v1

    const-string v9, "Not support ext haptic with reason"

    .line 98
    invoke-static {v0, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mIsSupportExtHapticWithReason:Z

    .line 108
    :cond_0
    :goto_5
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v9, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v0, v9

    if-ltz v0, :cond_1

    .line 110
    :try_start_6
    const-class v0, Lmiui/util/HapticFeedbackUtil;

    new-array v1, v6, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v1, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v1, v8

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackTwoParamsMethodExist:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 116
    :catch_0
    :try_start_7
    const-class v0, Lmiui/util/HapticFeedbackUtil;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v1, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v1, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v1, v6

    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackThreeParamsMethodExist:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    const/4 v0, 0x4

    .line 122
    :try_start_8
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v4, v0, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v4, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v8

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v6

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 123
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod1Exist:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 128
    :catch_2
    :try_start_9
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    new-array v0, v0, [Ljava/lang/Class;

    const-class v4, Landroid/os/VibrationAttributes;

    aput-object v4, v0, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v8

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v6

    aput-object v2, v0, v5

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 129
    sput-boolean v8, Lmiuix/util/HapticFeedbackCompat;->mPerformHapticFeedbackFourParamsMethod2Exist:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 154
    invoke-direct {p0, p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const/4 v1, 0x1

    const-string v2, "HapticFeedbackCompat"

    if-ge v0, v1, :cond_0

    const-string p0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 143
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_0
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    if-nez v0, :cond_1

    const-string p0, "linear motor is not supported in this platform."

    .line 147
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_1
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method


# virtual methods
.method public performExtHapticFeedback(I)Z
    .locals 0

    .line 174
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performHapticFeedback(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, v0, p1}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;I)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0, v0, p1, p2}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(Landroid/os/VibrationAttributes;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 496
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/util/HapticFeedbackCompat;->performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result p0

    return p0
.end method

.method public performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z
    .locals 4

    .line 462
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    .line 463
    invoke-static {p2}, Lmiuix/view/HapticCompat;->obtainFeedBack(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 466
    :try_start_0
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v2, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mPerformExtHapticFeedbackThreeParamsMethodExist:Z

    if-eqz v0, :cond_0

    .line 467
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result p0

    return p0

    .line 469
    :cond_0
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "HapticFeedbackCompat"

    const-string p2, "Failed to perform haptic!"

    .line 471
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public supportLinearMotor()Z
    .locals 0

    .line 159
    sget-boolean p0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    return p0
.end method
