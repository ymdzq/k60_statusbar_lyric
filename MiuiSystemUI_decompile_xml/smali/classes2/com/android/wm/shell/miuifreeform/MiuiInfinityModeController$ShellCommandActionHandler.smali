.class public Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$ShellCommandActionHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    const/4 v2, 0x1

    .line 11
    const/4 v3, -0x1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v4

    .line 16
    sparse-switch v4, :sswitch_data_0

    .line 17
    goto :goto_0

    .line 20
    :sswitch_0
    const-string v4, "1"

    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x3

    .line 30
    goto :goto_0

    .line 31
    :sswitch_1
    const-string v4, "0"

    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x2

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string v4, "enableLog"

    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    const/4 v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v4, "disableLog"

    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    const/4 v3, 0x0

    .line 63
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    const-string v2, "Invalid command: "

    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    aget-object p1, p1, v0

    .line 74
    invoke-static {v1, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 76
    const-string p1, ""

    .line 79
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$ShellCommandActionHandler;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 81
    return v0

    .line 84
    :pswitch_0
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->openLog()V

    .line 85
    return v2

    .line 88
    :pswitch_1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->closeLog()V

    .line 89
    return v2

    .line 92
    nop

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x607ec0c4 -> :sswitch_3
        -0x25a68d3f -> :sswitch_2
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
    .end sparse-switch

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 112
.end method

.method public printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v0, "usage: dumpsys activity service SystemUIservice WMShell freeform_cvw [enableLog|1|disableLog|0]"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v0, "enableLog|1"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v0, "  Enable info/debug/verbose log for freeform cvw"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "disableLog|0"

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string p2, "  Disable info/debug/verbose log for freeform cvw"

    .line 91
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    return-void
    .line 103
.end method
