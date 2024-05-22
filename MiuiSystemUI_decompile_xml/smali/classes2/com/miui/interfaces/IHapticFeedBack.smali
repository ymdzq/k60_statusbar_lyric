.class public interface abstract Lcom/miui/interfaces/IHapticFeedBack;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
