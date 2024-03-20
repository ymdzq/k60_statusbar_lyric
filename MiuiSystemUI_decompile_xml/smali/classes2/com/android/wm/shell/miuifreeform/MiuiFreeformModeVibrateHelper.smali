.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final HAPTICFEEDBACKUTIL_CLASS_NAME:Ljava/lang/String; = "miui.util.HapticFeedbackUtil"

.field private static final ISSUPPORTLINEARMOTORVIBRATE_METHOD_NAME:Ljava/lang/String; = "isSupportLinearMotorVibrate"

.field private static final MIUI_BOUNDARY_SPATIAL:I = 0x0

.field private static final PERFORMEXTHAPTICFEEDBACK_METHOD_NAME:Ljava/lang/String; = "performExtHapticFeedback"

.field private static final PERFORMHAPTICFEEDBACK_METHOD_NAME:Ljava/lang/String; = "performHapticFeedback"

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeVibrateHelper"

.field private static final VIBRATE_LIGHT_TIME:I = 0x64

.field private static current_haptic_version:Ljava/lang/String;


# instance fields
.field private mHapticFeedbackUtil:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "sys.haptic.version"

    .line 2
    const-string v1, "1.0"

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->current_haptic_version:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->getHapticFeedbackUtil(Landroid/content/Context;)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->mHapticFeedbackUtil:Ljava/lang/Object;

    .line 9
    return-void
    .line 11
.end method

.method private getHapticFeedbackUtil(Landroid/content/Context;)Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    const-string p0, "miui.util.HapticFeedbackUtil"

    .line 2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v1, v0, [Ljava/lang/Class;

    .line 9
    const-class v2, Landroid/content/Context;

    .line 11
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 16
    const/4 v4, 0x1

    .line 18
    aput-object v2, v1, v4

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 21
    move-result-object p0

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    aput-object p1, v0, v3

    .line 27
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    aput-object p1, v0, v4

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string v0, "getHapticFeedbackUtil exception:"

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    const-string p1, "MiuiFreeformModeVibrateHelper"

    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 p0, 0x0

    .line 58
    return-object p0
    .line 59
.end method

.method private isSupportLinearMotorVibrate()Z
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    const-string v0, "miui.util.HapticFeedbackUtil"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "isSupportLinearMotorVibrate"

    .line 9
    new-array v2, p0, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    move-result-object v0

    .line 16
    new-array v1, p0, [Ljava/lang/Object;

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "isSupportLinearMotorVibrate exception:"

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    const-string v1, "MiuiFreeformModeVibrateHelper"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return p0
    .line 51
.end method

.method private performExtHapticFeedback()V
    .locals 7

    .line 1
    const-string v0, "MiuiFreeformModeVibrateHelper"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->mHapticFeedbackUtil:Ljava/lang/Object;

    .line 4
    if-nez v1, :cond_0

    .line 6
    const-string p0, "perform ext haptic feedback, but get null util."

    .line 8
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 17
    const-string v2, "performExtHapticFeedback"

    .line 18
    const/4 v3, 0x1

    .line 20
    new-array v4, v3, [Ljava/lang/Class;

    .line 21
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    const/4 v6, 0x0

    .line 25
    aput-object v5, v4, v6

    .line 26
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    move-result-object v1

    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->mHapticFeedbackUtil:Ljava/lang/Object;

    .line 32
    new-array v2, v3, [Ljava/lang/Object;

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v3

    .line 39
    aput-object v3, v2, v6

    .line 40
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "performExtHapticFeedback exception:"

    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void
    .line 64
.end method

.method private performHapticFeedback(IZ)V
    .locals 8

    .line 1
    const-string v0, "MiuiFreeformModeVibrateHelper"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->mHapticFeedbackUtil:Ljava/lang/Object;

    .line 4
    if-nez v1, :cond_0

    .line 6
    const-string p0, "perform haptic feedback, but get null util."

    .line 8
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 17
    const-string v2, "performHapticFeedback"

    .line 18
    const/4 v3, 0x2

    .line 20
    new-array v4, v3, [Ljava/lang/Class;

    .line 21
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    const/4 v6, 0x0

    .line 25
    aput-object v5, v4, v6

    .line 26
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 28
    const/4 v7, 0x1

    .line 30
    aput-object v5, v4, v7

    .line 31
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    move-result-object v1

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->mHapticFeedbackUtil:Ljava/lang/Object;

    .line 37
    new-array v2, v3, [Ljava/lang/Object;

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p1

    .line 44
    aput-object p1, v2, v6

    .line 45
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object p1

    .line 50
    aput-object p1, v2, v7

    .line 51
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    const-string p2, "performHapticFeedback exception:"

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void
    .line 75
.end method

.method private static vibrateLight(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "vibrator"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/Vibrator;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const-wide/16 v0, 0x64

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method


# virtual methods
.method public hapticFeedback(IZLandroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->current_haptic_version:Ljava/lang/String;

    .line 2
    const-string v1, "2.0"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->performExtHapticFeedback()V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->isSupportLinearMotorVibrate()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->performHapticFeedback(IZ)V

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeVibrateHelper;->vibrateLight(Landroid/content/Context;)V

    .line 26
    :goto_0
    return-void
    .line 29
.end method
