.class public interface abstract Lcom/miui/interfaces/IHapticFeedBack;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

.field public static final IS_SUPPORT_V2_HAPTIC_VERSION:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "sys.haptic.motor"

    .line 2
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "linear"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    sput-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 15
    const-string/jumbo v0, "sys.haptic.version"

    .line 17
    const-string v1, "1.0"

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "2.0"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 31
    sput-boolean v0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_V2_HAPTIC_VERSION:Z

    .line 32
    return-void
    .line 34
.end method
