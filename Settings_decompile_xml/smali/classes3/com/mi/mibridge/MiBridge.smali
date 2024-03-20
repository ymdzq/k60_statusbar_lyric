.class public Lcom/mi/mibridge/MiBridge;
.super Ljava/lang/Object;
.source "MiBridge.java"


# static fields
.field private static IThermalEventCallBackClass:Ljava/lang/Class;

.field private static mCancelCpuHighFunc:Ljava/lang/reflect/Method;

.field private static mCancelDdrHighFunc:Ljava/lang/reflect/Method;

.field private static mCancelGpuHighFunc:Ljava/lang/reflect/Method;

.field private static mCancelThreadPriorityFunc:Ljava/lang/reflect/Method;

.field private static mCheckDebugPermissionFunc:Ljava/lang/reflect/Method;

.field private static mCheckPermissionFunc:Ljava/lang/reflect/Method;

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static mGetSystemStateFunc:Ljava/lang/reflect/Method;

.field private static mPerf:Ljava/lang/Object;

.field private static mRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;

.field private static mRequestBindCoreFunc:Ljava/lang/reflect/Method;

.field private static mRequestCpuHighFunc:Ljava/lang/reflect/Method;

.field private static mRequestDdrHighFunc:Ljava/lang/reflect/Method;

.field private static mRequestGpuHighFunc:Ljava/lang/reflect/Method;

.field private static mRequestIOPrefetchFunc:Ljava/lang/reflect/Method;

.field private static mRequestThreadPriorityFunc:Ljava/lang/reflect/Method;

.field private static mUnRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;

.field private static perfClass:Ljava/lang/Class;

.field private static perfClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "checkPermission"

    .line 23
    const-class v1, Ljava/lang/String;

    const-string v2, "MiBridge"

    const/4 v3, 0x0

    .line 48
    :try_start_0
    new-instance v4, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/MiuiBooster.jar"

    .line 49
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v4, Lcom/mi/mibridge/MiBridge;->perfClassLoader:Ldalvik/system/PathClassLoader;

    const-string v5, "com.miui.performance.MiuiBooster"

    .line 50
    invoke-virtual {v4, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    .line 53
    :try_start_1
    sget-object v4, Lcom/mi/mibridge/MiBridge;->perfClassLoader:Ldalvik/system/PathClassLoader;

    const-string v5, "com.miui.performance.IThermalEventCallBack"

    invoke-virtual {v4, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/mi/mibridge/MiBridge;->IThermalEventCallBackClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v4, "com.miui.performance.IThermalEventCallBack not exits!"

    .line 55
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    sget-object v4, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lcom/mi/mibridge/MiBridge;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v1, v5, v3

    .line 59
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_10

    .line 61
    :try_start_3
    sget-object v6, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/mi/mibridge/MiBridge;->mCheckPermissionFunc:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    :try_start_4
    const-string v5, "checkPermission no exit"

    .line 63
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    :goto_1
    const/4 v5, 0x4

    const/4 v6, 0x3

    :try_start_5
    new-array v5, v5, [Ljava/lang/Class;

    .line 66
    const-class v8, Landroid/content/Context;

    aput-object v8, v5, v3

    aput-object v1, v5, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v4

    aput-object v1, v5, v6

    .line 67
    sget-object v8, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    invoke-virtual {v8, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mCheckDebugPermissionFunc:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    :try_start_6
    const-string v0, "checkPermission_debug no exit"

    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    :goto_2
    :try_start_7
    new-array v0, v6, [Ljava/lang/Class;

    .line 74
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    .line 75
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "requestCpuHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mRequestCpuHighFunc:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    :try_start_8
    const-string v0, "requestCpuHighFreq no exit"

    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    :goto_3
    :try_start_9
    new-array v0, v7, [Ljava/lang/Class;

    .line 81
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    .line 82
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "cancelCpuHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mCancelCpuHighFunc:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    :try_start_a
    const-string v0, "cancelCpuHighFreq no exit"

    .line 84
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10

    :goto_4
    :try_start_b
    new-array v0, v6, [Ljava/lang/Class;

    .line 89
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    .line 90
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "requestThreadPriority"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mRequestThreadPriorityFunc:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    :try_start_c
    const-string v0, "requestThreadPriority no exit"

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    :goto_5
    :try_start_d
    new-array v0, v4, [Ljava/lang/Class;

    .line 96
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    .line 97
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "cancelThreadPriority"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mCancelThreadPriorityFunc:Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_6

    :catch_6
    :try_start_e
    const-string v0, "cancelThreadPriority no exit"

    .line 99
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    :goto_6
    :try_start_f
    new-array v0, v6, [Ljava/lang/Class;

    .line 104
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    .line 105
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "requestGpuHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mRequestGpuHighFunc:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_7

    :catch_7
    :try_start_10
    const-string v0, "requestGpuHighFreq no exit"

    .line 107
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    :goto_7
    :try_start_11
    new-array v0, v7, [Ljava/lang/Class;

    .line 111
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    .line 112
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "cancelGpuHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mCancelGpuHighFunc:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_8

    :catch_8
    :try_start_12
    const-string v0, "cancelGpuHighFreq no exit"

    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    :goto_8
    :try_start_13
    new-array v0, v6, [Ljava/lang/Class;

    .line 119
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    aput-object v5, v0, v4

    .line 120
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "requestDdrHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mRequestDdrHighFunc:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto :goto_9

    :catch_9
    :try_start_14
    const-string v0, "requestDdrHighFreq no exit"

    .line 122
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    :goto_9
    :try_start_15
    new-array v0, v7, [Ljava/lang/Class;

    .line 126
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    .line 127
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "cancelDdrHighFreq"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mCancelDdrHighFunc:Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    goto :goto_a

    :catch_a
    :try_start_16
    const-string v0, "cancelDdrHighFreq no exit"

    .line 129
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10

    :goto_a
    :try_start_17
    new-array v0, v4, [Ljava/lang/Class;

    .line 134
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v5, v0, v7

    .line 135
    sget-object v5, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v8, "requestBindCore"

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mRequestBindCoreFunc:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    goto :goto_b

    :catch_b
    :try_start_18
    const-string v0, "requestBindCore no exit"

    .line 137
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10

    :goto_b
    :try_start_19
    new-array v0, v4, [Ljava/lang/Class;

    .line 142
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    aput-object v1, v0, v7

    .line 143
    sget-object v1, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v5, "requestIOPrefetch"

    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mRequestIOPrefetchFunc:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto :goto_c

    :catch_c
    :try_start_1a
    const-string v0, "requestIOPrefetch no exit"

    .line 145
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10

    :goto_c
    :try_start_1b
    new-array v0, v6, [Ljava/lang/Class;

    .line 149
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v5, Landroid/content/Context;

    aput-object v5, v0, v7

    aput-object v1, v0, v4

    .line 150
    sget-object v1, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v5, "getSystemState"

    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mGetSystemStateFunc:Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    goto :goto_d

    :catch_d
    :try_start_1c
    const-string v0, "getSystemState no exit"

    .line 152
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    :goto_d
    :try_start_1d
    new-array v0, v4, [Ljava/lang/Class;

    .line 156
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/mibridge/MiBridge;->IThermalEventCallBackClass:Ljava/lang/Class;

    aput-object v1, v0, v7

    .line 157
    sget-object v1, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string v5, "registerThermalEventCallback"

    invoke-virtual {v1, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    .line 159
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerThermalEventCallback no exit, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    :goto_e
    :try_start_1f
    new-array v0, v4, [Ljava/lang/Class;

    .line 163
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/mibridge/MiBridge;->IThermalEventCallBackClass:Ljava/lang/Class;

    aput-object v1, v0, v7

    .line 164
    sget-object v1, Lcom/mi/mibridge/MiBridge;->perfClass:Ljava/lang/Class;

    const-string/jumbo v4, "unRegisterThermalEventCallback"

    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mUnRegisterThermalEventCallbackFunc:Ljava/lang/reflect/Method;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    goto :goto_f

    :catch_f
    :try_start_20
    const-string v0, "UnRegisterThermalEventCallback no exit"

    .line 166
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_10

    goto :goto_f

    :catch_10
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiBridge() : Load Class Exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_f
    :try_start_21
    sget-object v0, Lcom/mi/mibridge/MiBridge;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/mi/mibridge/MiBridge;->mPerf:Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_11

    goto :goto_10

    :catch_11
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiBridge() : newInstance Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_10
    return-void
.end method

.method public static checkPermission(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 189
    :try_start_0
    sget-object v1, Lcom/mi/mibridge/MiBridge;->mCheckPermissionFunc:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/mi/mibridge/MiBridge;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 190
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check permission failed , e:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static requestCpuHighFreq(III)I
    .locals 4

    .line 211
    :try_start_0
    sget-object v0, Lcom/mi/mibridge/MiBridge;->mRequestCpuHighFunc:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/mi/mibridge/MiBridge;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 212
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "request cpu high failed , e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiBridge"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method
