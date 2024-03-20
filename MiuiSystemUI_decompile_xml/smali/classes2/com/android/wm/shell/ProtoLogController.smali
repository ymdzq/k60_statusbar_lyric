.class public Lcom/android/wm/shell/ProtoLogController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/ProtoLogController;)V

    .line 7
    invoke-virtual {p1, p0, v0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 10
    iput-object p2, p0, Lcom/android/wm/shell/ProtoLogController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 13
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    sparse-switch v2, :sswitch_data_0

    .line 13
    goto/16 :goto_0

    .line 16
    :sswitch_0
    const-string v2, "disable"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x7

    .line 27
    goto :goto_1

    .line 28
    :sswitch_1
    const-string/jumbo v2, "start"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x6

    .line 39
    goto :goto_1

    .line 40
    :sswitch_2
    const-string/jumbo v2, "stop"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    const/4 v1, 0x5

    .line 51
    goto :goto_1

    .line 52
    :sswitch_3
    const-string v2, "save-for-bugreport"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    const/4 v1, 0x4

    .line 62
    goto :goto_1

    .line 63
    :sswitch_4
    const-string/jumbo v2, "status"

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 70
    if-nez v1, :cond_4

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    const/4 v1, 0x3

    .line 74
    goto :goto_1

    .line 75
    :sswitch_5
    const-string v2, "disable-text"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 81
    if-nez v1, :cond_5

    .line 82
    goto :goto_0

    .line 84
    :cond_5
    const/4 v1, 0x2

    .line 85
    goto :goto_1

    .line 86
    :sswitch_6
    const-string v2, "enable"

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v1

    .line 92
    if-nez v1, :cond_6

    .line 93
    goto :goto_0

    .line 95
    :cond_6
    move v1, v3

    .line 96
    goto :goto_1

    .line 97
    :sswitch_7
    const-string v2, "enable-text"

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v1

    .line 103
    if-nez v1, :cond_7

    .line 104
    goto :goto_0

    .line 106
    :cond_7
    move v1, v0

    .line 107
    goto :goto_1

    .line 108
    :goto_0
    const/4 v1, -0x1

    .line 109
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/ProtoLogController;->mShellProtoLog:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 110
    packed-switch v1, :pswitch_data_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    const-string v2, "Invalid command: "

    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    aget-object p1, p1, v0

    .line 122
    invoke-static {v1, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 124
    const-string p1, ""

    .line 127
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/ProtoLogController;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 129
    return v0

    .line 132
    :pswitch_0
    array-length p0, p1

    .line 133
    invoke-static {p1, v3, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 134
    move-result-object p0

    .line 137
    check-cast p0, [Ljava/lang/String;

    .line 138
    invoke-virtual {v2, p2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->stopTextLogging(Ljava/io/PrintWriter;[Ljava/lang/String;)I

    .line 140
    move-result p0

    .line 143
    if-nez p0, :cond_8

    .line 144
    move v0, v3

    .line 146
    :cond_8
    return v0

    .line 147
    :pswitch_1
    invoke-virtual {v2, p2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 148
    return v3

    .line 151
    :pswitch_2
    invoke-virtual {v2, p2, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 152
    return v3

    .line 155
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    .line 156
    move-result p0

    .line 159
    if-nez p0, :cond_9

    .line 160
    const-string p0, "Logging to proto is not enabled for WMShell."

    .line 162
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    return v0

    .line 167
    :cond_9
    invoke-virtual {v2, p2, v3}, Lcom/android/internal/protolog/BaseProtoLogImpl;->stopProtoLog(Ljava/io/PrintWriter;Z)V

    .line 168
    invoke-virtual {v2, p2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->startProtoLog(Ljava/io/PrintWriter;)V

    .line 171
    return v3

    .line 174
    :pswitch_4
    invoke-virtual {v2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->getStatus()Ljava/lang/String;

    .line 175
    move-result-object p0

    .line 178
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    return v3

    .line 182
    :pswitch_5
    array-length p0, p1

    .line 183
    invoke-static {p1, v3, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 184
    move-result-object p0

    .line 187
    check-cast p0, [Ljava/lang/String;

    .line 188
    invoke-virtual {v2, p2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->stopTextLogging(Ljava/io/PrintWriter;[Ljava/lang/String;)I

    .line 190
    move-result p1

    .line 193
    if-nez p1, :cond_a

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    .line 196
    const-string v0, "Stopping logging on groups: "

    .line 198
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    move-result-object p0

    .line 206
    invoke-static {p1, p0, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 207
    return v3

    .line 210
    :cond_a
    return v0

    .line 211
    :pswitch_6
    array-length p0, p1

    .line 212
    invoke-static {p1, v3, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 213
    move-result-object p0

    .line 216
    check-cast p0, [Ljava/lang/String;

    .line 217
    invoke-virtual {v2, p2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->startTextLogging(Ljava/io/PrintWriter;[Ljava/lang/String;)I

    .line 219
    move-result p0

    .line 222
    if-nez p0, :cond_b

    .line 223
    move v0, v3

    .line 225
    :cond_b
    return v0

    .line 226
    :pswitch_7
    array-length p0, p1

    .line 227
    invoke-static {p1, v3, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 228
    move-result-object p0

    .line 231
    check-cast p0, [Ljava/lang/String;

    .line 232
    invoke-virtual {v2, p2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->startTextLogging(Ljava/io/PrintWriter;[Ljava/lang/String;)I

    .line 234
    move-result p1

    .line 237
    if-nez p1, :cond_c

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    const-string v0, "Starting logging on groups: "

    .line 242
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    move-result-object p0

    .line 250
    invoke-static {p1, p0, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 251
    return v3

    .line 254
    :cond_c
    return v0

    .line 255
    :sswitch_data_0
    .sparse-switch
        -0x57eac4c9 -> :sswitch_7
        -0x4d6ada7d -> :sswitch_6
        -0x3d842b0e -> :sswitch_5
        -0x3532300e -> :sswitch_4
        -0x174ab7ac -> :sswitch_3
        0x360802 -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 290
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string/jumbo p0, "status"

    .line 2
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    const-string p0, "  Get current ProtoLog status."

    .line 12
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    const-string/jumbo p0, "start"

    .line 21
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    const-string p0, "  Start proto logging."

    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    const-string/jumbo p0, "stop"

    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    const-string p0, "  Stop proto logging and flush to file."

    .line 50
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string p0, "enable [group...]"

    .line 59
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string p0, "  Enable proto logging for given groups."

    .line 68
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string p0, "disable [group...]"

    .line 77
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string p0, "  Disable proto logging for given groups."

    .line 86
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 91
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string p0, "enable-text [group...]"

    .line 95
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string p0, "  Enable logcat logging for given groups."

    .line 104
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string p0, "disable-text [group...]"

    .line 113
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string p0, "  Disable logcat logging for given groups."

    .line 122
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 127
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string p0, "save-for-bugreport"

    .line 131
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 136
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string p0, "  Flush proto logging to file, only if it\'s enabled."

    .line 140
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 145
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    return-void
    .line 149
.end method
