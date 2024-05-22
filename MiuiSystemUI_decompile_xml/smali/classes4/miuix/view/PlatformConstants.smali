.class public Lmiuix/view/PlatformConstants;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final VERSION:I

.field public static romHapticVersion:D = 1.0


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "MIUI Haptic Implementation not found."

    .line 2
    const-string v1, "miui.util.HapticFeedbackUtil"

    .line 4
    const-string v2, "HapticCompat"

    .line 6
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v4

    .line 12
    const-string v5, "miui.view.MiuiHapticFeedbackConstants"

    .line 13
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    move-result-object v5

    .line 18
    const-string v6, "isSupportLinearMotorVibrate"

    .line 19
    const/4 v7, 0x1

    .line 21
    new-array v7, v7, [Ljava/lang/Class;

    .line 22
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    aput-object v8, v7, v3

    .line 26
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    const-string v4, "FLAG_MIUI_HAPTIC_VERSION"

    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 36
    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 43
    move-result v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v4, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lmiuix/view/PlatformConstants;->checkVersion()I

    .line 50
    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v4

    .line 55
    const-string v5, "error when getting FLAG_MIUI_HAPTIC_VERSION."

    .line 56
    invoke-static {v2, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-static {}, Lmiuix/view/PlatformConstants;->checkVersion()I

    .line 61
    move-result v4

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception v4

    .line 66
    invoke-static {v2, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v4, -0x1

    .line 70
    :goto_0
    sput v4, Lmiuix/view/PlatformConstants;->VERSION:I

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v4

    .line 76
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 80
    const-string v5, "Platform version: %d."

    .line 81
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 86
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 90
    move-result-object v1

    .line 93
    const-string v4, "getCurVersion"

    .line 94
    new-array v5, v3, [Ljava/lang/Class;

    .line 96
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    move-result-object v4

    .line 101
    new-array v3, v3, [Ljava/lang/Object;

    .line 102
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 107
    check-cast v1, Ljava/lang/Double;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 110
    move-result-wide v3

    .line 113
    sput-wide v3, Lmiuix/view/PlatformConstants;->romHapticVersion:D
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    goto :goto_1

    .line 116
    :catch_2
    const-string v0, "have no access to the definition of getCurVersion()"

    .line 117
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    goto :goto_1

    .line 122
    :catch_3
    const-string v0, "method getCurVersion() called using Reflection failed"

    .line 123
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_1

    .line 128
    :catch_4
    move-exception v1

    .line 129
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "Rom haptic version: "

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    sget-wide v3, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    .line 140
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 148
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
    .line 152
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVersion()I
    .locals 1

    .line 1
    const v0, 0x1000000f

    .line 2
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x5

    .line 11
    return v0

    .line 12
    :cond_0
    const v0, 0x1000000e

    .line 13
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    const/4 v0, 0x4

    .line 22
    return v0

    .line 23
    :cond_1
    const v0, 0x1000000d

    .line 24
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 27
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    const/4 v0, 0x3

    .line 33
    return v0

    .line 34
    :cond_2
    const v0, 0x1000000c

    .line 35
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    const/4 v0, 0x2

    .line 44
    return v0

    .line 45
    :cond_3
    const v0, 0x10000009

    .line 46
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate(I)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    const/4 v0, 0x1

    .line 55
    return v0

    .line 56
    :cond_4
    const/4 v0, 0x0

    .line 57
    return v0
    .line 58
.end method
