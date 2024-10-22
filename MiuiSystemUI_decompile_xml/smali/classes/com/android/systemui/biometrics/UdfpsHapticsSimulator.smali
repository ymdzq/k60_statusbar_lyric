.class public final Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final sonificationEffects:Landroid/media/AudioAttributes;

.field public udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public final vibrator:Lcom/android/systemui/statusbar/VibratorHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/VibratorHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->vibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 5
    new-instance p2, Landroid/media/AudioAttributes$Builder;

    .line 7
    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 9
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 13
    move-result-object p2

    .line 16
    const/16 v0, 0xd

    .line 17
    invoke-virtual {p2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 23
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->sonificationEffects:Landroid/media/AudioAttributes;

    .line 27
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$1;

    .line 29
    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$1;-><init>(Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;)V

    .line 31
    const-string/jumbo p0, "udfps-haptic"

    .line 34
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 37
    return-void
    .line 40
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->invalidCommand(Ljava/io/PrintWriter;)V

    .line 8
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p2

    .line 16
    check-cast p2, Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v1

    .line 22
    const v2, -0x6f4abffd

    .line 23
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->sonificationEffects:Landroid/media/AudioAttributes;

    .line 26
    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->vibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 28
    if-eq v1, v2, :cond_5

    .line 30
    const v0, 0x5c4d208

    .line 32
    if-eq v1, v0, :cond_3

    .line 35
    const v0, 0x68ac462

    .line 37
    if-eq v1, v0, :cond_1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    const-string/jumbo v0, "start"

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p2

    .line 49
    if-nez p2, :cond_2

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 53
    if-eqz p0, :cond_7

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController;->playStartHaptic()V

    .line 57
    goto :goto_1

    .line 60
    :cond_3
    const-string v0, "error"

    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p2

    .line 66
    if-nez p2, :cond_4

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    const/4 p0, 0x1

    .line 70
    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {v4, p0, v3}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 75
    goto :goto_1

    .line 78
    :cond_5
    const-string/jumbo v1, "success"

    .line 79
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result p2

    .line 85
    if-nez p2, :cond_6

    .line 86
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator;->invalidCommand(Ljava/io/PrintWriter;)V

    .line 88
    goto :goto_1

    .line 91
    :cond_6
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    .line 92
    move-result-object p0

    .line 95
    invoke-virtual {v4, p0, v3}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 96
    :cond_7
    :goto_1
    return-void
    .line 99
.end method

.method public final invalidCommand(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string p0, "invalid command"

    .line 2
    const-string v0, "Usage: adb shell cmd statusbar udfps-haptic <haptic>"

    .line 4
    const-string v1, "Available commands:"

    .line 6
    const-string v2, "  start"

    .line 8
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p0, "  success, always plays CLICK haptic"

    .line 13
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string p0, "  error, always plays DOUBLE_CLICK haptic"

    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    return-void
    .line 23
.end method
