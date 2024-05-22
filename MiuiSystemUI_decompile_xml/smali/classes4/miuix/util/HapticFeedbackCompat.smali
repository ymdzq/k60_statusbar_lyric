.class public final Lmiuix/util/HapticFeedbackCompat;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final mAvailable:Z


# instance fields
.field public final hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "HapticFeedbackCompat"

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 4
    sget v1, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 7
    const-class v2, Ljava/lang/String;

    .line 9
    const-string v3, "performHapticFeedback"

    .line 11
    const-string v4, "performExtHapticFeedback"

    .line 13
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x2

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x1

    .line 18
    if-lt v1, v8, :cond_0

    .line 19
    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    .line 21
    move-result v1

    .line 24
    sput-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    const-string v9, "MIUI Haptic Implementation is not available"

    .line 29
    invoke-static {v0, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    sput-boolean v7, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 34
    :goto_0
    sget-boolean v1, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 36
    if-eqz v1, :cond_0

    .line 38
    :try_start_1
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    .line 40
    new-array v9, v5, [Ljava/lang/Class;

    .line 42
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    aput-object v10, v9, v7

    .line 46
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 48
    aput-object v10, v9, v8

    .line 50
    aput-object v2, v9, v6

    .line 52
    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    goto :goto_1

    .line 57
    :catchall_1
    move-exception v1

    .line 58
    const-string v9, "Not support haptic with reason"

    .line 59
    invoke-static {v0, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_1
    :try_start_2
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    .line 64
    const-string v9, "isSupportExtHapticFeedback"

    .line 66
    new-array v10, v8, [Ljava/lang/Class;

    .line 68
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 70
    aput-object v11, v10, v7

    .line 72
    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    :catchall_2
    :try_start_3
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    .line 77
    new-array v9, v6, [Ljava/lang/Class;

    .line 79
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 81
    aput-object v10, v9, v7

    .line 83
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 85
    aput-object v10, v9, v8

    .line 87
    invoke-virtual {v1, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 89
    :catchall_3
    :try_start_4
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    .line 92
    const-string v9, "stop"

    .line 94
    new-array v10, v7, [Ljava/lang/Class;

    .line 96
    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 98
    :catchall_4
    :try_start_5
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    .line 101
    new-array v9, v5, [Ljava/lang/Class;

    .line 103
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 105
    aput-object v10, v9, v7

    .line 107
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 109
    aput-object v10, v9, v8

    .line 111
    aput-object v2, v9, v6

    .line 113
    invoke-virtual {v1, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 115
    goto :goto_2

    .line 118
    :catchall_5
    move-exception v1

    .line 119
    const-string v9, "Not support ext haptic with reason"

    .line 120
    invoke-static {v0, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_0
    :goto_2
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    .line 125
    const-wide v9, 0x3ff3333333333333L    # 1.2

    .line 127
    cmpl-double v0, v0, v9

    .line 132
    if-ltz v0, :cond_1

    .line 134
    :try_start_6
    const-class v0, Lmiui/util/HapticFeedbackUtil;

    .line 136
    new-array v1, v6, [Ljava/lang/Class;

    .line 138
    const-class v9, Landroid/os/VibrationAttributes;

    .line 140
    aput-object v9, v1, v7

    .line 142
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 144
    aput-object v9, v1, v8

    .line 146
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 148
    :catch_0
    :try_start_7
    const-class v0, Lmiui/util/HapticFeedbackUtil;

    .line 151
    new-array v1, v5, [Ljava/lang/Class;

    .line 153
    const-class v9, Landroid/os/VibrationAttributes;

    .line 155
    aput-object v9, v1, v7

    .line 157
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 159
    aput-object v9, v1, v8

    .line 161
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 163
    aput-object v9, v1, v6

    .line 165
    invoke-virtual {v0, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 167
    :catch_1
    const/4 v0, 0x4

    .line 170
    :try_start_8
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    .line 171
    new-array v4, v0, [Ljava/lang/Class;

    .line 173
    const-class v9, Landroid/os/VibrationAttributes;

    .line 175
    aput-object v9, v4, v7

    .line 177
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 179
    aput-object v9, v4, v8

    .line 181
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 183
    aput-object v10, v4, v6

    .line 185
    aput-object v9, v4, v5

    .line 187
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 189
    :catch_2
    :try_start_9
    const-class v1, Lmiui/util/HapticFeedbackUtil;

    .line 192
    new-array v0, v0, [Ljava/lang/Class;

    .line 194
    const-class v4, Landroid/os/VibrationAttributes;

    .line 196
    aput-object v4, v0, v7

    .line 198
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 200
    aput-object v4, v0, v8

    .line 202
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 204
    aput-object v4, v0, v6

    .line 206
    aput-object v2, v0, v5

    .line 208
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 210
    :catch_3
    :cond_1
    return-void
    .line 213
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 5
    const/4 v1, 0x1

    .line 7
    const-string v2, "HapticFeedbackCompat"

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    const-string p0, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    sget-boolean v0, Lmiuix/util/HapticFeedbackCompat;->mAvailable:Z

    .line 18
    if-nez v0, :cond_1

    .line 20
    const-string p0, "linear motor is not supported in this platform."

    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    .line 28
    invoke-direct {v0, p1, v1}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    .line 30
    iput-object v0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 33
    :goto_0
    return-void
    .line 35
.end method


# virtual methods
.method public final performExtHapticFeedback(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/util/HapticFeedbackCompat;->hapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    .line 6
    :cond_0
    return-void
    .line 9
.end method
