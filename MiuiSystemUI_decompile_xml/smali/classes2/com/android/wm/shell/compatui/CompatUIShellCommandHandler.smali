.class public final Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field public final mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 7
    return-void
    .line 9
.end method

.method public static invokeOrError(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v0, "false"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x3

    .line 25
    goto :goto_0

    .line 26
    :sswitch_1
    const-string/jumbo v0, "true"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    goto :goto_0

    .line 38
    :sswitch_2
    const-string v0, "1"

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    move v3, v1

    .line 48
    goto :goto_0

    .line 49
    :sswitch_3
    const-string v0, "0"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p0

    .line 55
    if-nez p0, :cond_3

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    move v3, v2

    .line 59
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 60
    const/4 p0, 0x0

    .line 63
    goto :goto_1

    .line 64
    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    goto :goto_1

    .line 67
    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 68
    :goto_1
    if-nez p0, :cond_4

    .line 70
    const-string p0, "Error: expected true, 1, false, 0."

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    return v2

    .line 77
    :cond_4
    invoke-virtual {p2, p0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 78
    return v1

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
    .line 100
.end method


# virtual methods
.method public final onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "Invalid command: "

    .line 4
    const/4 v3, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    aget-object p1, p1, v3

    .line 14
    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 16
    return v3

    .line 19
    :cond_0
    aget-object v0, p1, v3

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v1, "reachabilityEducationEnabled"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->mCompatUIConfiguration:Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 31
    const/4 v4, 0x1

    .line 33
    if-nez v1, :cond_2

    .line 34
    const-string v1, "restartDialogEnabled"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    aget-object p1, p1, v3

    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 51
    return v3

    .line 54
    :cond_1
    aget-object p1, p1, v4

    .line 55
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {v0, p0, v3}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIConfiguration;I)V

    .line 62
    invoke-static {p1, p2, v0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->invokeOrError(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;)Z

    .line 65
    move-result p0

    .line 68
    return p0

    .line 69
    :cond_2
    aget-object p1, p1, v4

    .line 70
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;

    .line 75
    invoke-direct {v0, p0, v4}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIConfiguration;I)V

    .line 77
    invoke-static {p1, p2, v0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;->invokeOrError(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler$$ExternalSyntheticLambda0;)Z

    .line 80
    move-result p0

    .line 83
    return p0
    .line 84
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p0, "    restartDialogEnabled [0|false|1|true]"

    .line 2
    const-string p2, "      Enable/Disable the restart education dialog for Size Compat Mode"

    .line 4
    const-string v0, "    reachabilityEducationEnabled [0|false|1|true]"

    .line 6
    const-string v1, "      Enable/Disable the restart education dialog for letterbox reachability"

    .line 8
    invoke-static {p1, p0, p2, v0, v1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p0, "      Disable the restart education dialog for letterbox reachability"

    .line 13
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    return-void
    .line 18
.end method
