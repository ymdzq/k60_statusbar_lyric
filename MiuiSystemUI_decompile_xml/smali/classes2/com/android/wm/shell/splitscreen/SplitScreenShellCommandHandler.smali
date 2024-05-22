.class public final Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field public final mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 9

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
    const/4 v3, 0x4

    .line 12
    const/4 v4, 0x3

    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x1

    .line 15
    const/4 v7, -0x1

    .line 16
    sparse-switch v2, :sswitch_data_0

    .line 17
    goto :goto_0

    .line 20
    :sswitch_0
    const-string/jumbo v2, "setSideStagePosition"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    move v1, v3

    .line 31
    goto :goto_1

    .line 32
    :sswitch_1
    const-string v2, "removeFromSideStage"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    move v1, v4

    .line 42
    goto :goto_1

    .line 43
    :sswitch_2
    const-string v2, "moveToSideStage"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    move v1, v5

    .line 53
    goto :goto_1

    .line 54
    :sswitch_3
    const-string v2, "exitSplit"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    move v1, v6

    .line 64
    goto :goto_1

    .line 65
    :sswitch_4
    const-string/jumbo v2, "startTask"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 72
    if-nez v1, :cond_4

    .line 73
    goto :goto_0

    .line 75
    :cond_4
    move v1, v0

    .line 76
    goto :goto_1

    .line 77
    :goto_0
    move v1, v7

    .line 78
    :goto_1
    const/4 v2, 0x0

    .line 79
    const-string v8, "Error: task id should be provided as arguments"

    .line 80
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 82
    if-eqz v1, :cond_e

    .line 84
    if-eq v1, v6, :cond_c

    .line 86
    if-eq v1, v5, :cond_9

    .line 88
    if-eq v1, v4, :cond_7

    .line 90
    if-eq v1, v3, :cond_5

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "Invalid command: "

    .line 96
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    aget-object p1, p1, v0

    .line 101
    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 103
    return v0

    .line 106
    :cond_5
    array-length v1, p1

    .line 107
    if-ge v1, v5, :cond_6

    .line 108
    const-string p0, "Error: side stage position should be provided as arguments"

    .line 110
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    goto :goto_2

    .line 115
    :cond_6
    new-instance p2, Ljava/lang/Integer;

    .line 116
    aget-object p1, p1, v6

    .line 118
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 123
    move-result p1

    .line 126
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 127
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 129
    move v0, v6

    .line 132
    :goto_2
    return v0

    .line 133
    :cond_7
    array-length v1, p1

    .line 134
    if-ge v1, v5, :cond_8

    .line 135
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    goto :goto_3

    .line 140
    :cond_8
    new-instance p2, Ljava/lang/Integer;

    .line 141
    aget-object p1, p1, v6

    .line 143
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 148
    move-result p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->removeFromSideStage(I)Z

    .line 152
    move v0, v6

    .line 155
    :goto_3
    return v0

    .line 156
    :cond_9
    array-length v1, p1

    .line 157
    if-ge v1, v4, :cond_a

    .line 158
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    goto :goto_5

    .line 163
    :cond_a
    new-instance p2, Ljava/lang/Integer;

    .line 164
    aget-object v0, p1, v6

    .line 166
    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 171
    move-result p2

    .line 174
    array-length v0, p1

    .line 175
    if-le v0, v5, :cond_b

    .line 176
    new-instance v0, Ljava/lang/Integer;

    .line 178
    aget-object p1, p1, v5

    .line 180
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 185
    move-result p1

    .line 188
    goto :goto_4

    .line 189
    :cond_b
    move p1, v6

    .line 190
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 194
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 196
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveToStage(IILandroid/window/WindowContainerTransaction;)V

    .line 199
    move v0, v6

    .line 202
    :goto_5
    return v0

    .line 203
    :cond_c
    array-length v1, p1

    .line 204
    if-ge v1, v5, :cond_d

    .line 205
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    goto :goto_6

    .line 210
    :cond_d
    new-instance p2, Ljava/lang/Integer;

    .line 211
    aget-object p1, p1, v6

    .line 213
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 218
    move-result p1

    .line 221
    invoke-virtual {p0, p1, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(II)V

    .line 222
    move v0, v6

    .line 225
    :goto_6
    return v0

    .line 226
    :cond_e
    array-length v1, p1

    .line 227
    if-ge v1, v4, :cond_f

    .line 228
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    goto :goto_8

    .line 233
    :cond_f
    new-instance p2, Ljava/lang/Integer;

    .line 234
    aget-object v0, p1, v6

    .line 236
    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 241
    move-result p2

    .line 244
    array-length v0, p1

    .line 245
    if-le v0, v5, :cond_10

    .line 246
    new-instance v0, Ljava/lang/Integer;

    .line 248
    aget-object p1, p1, v5

    .line 250
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 255
    move-result p1

    .line 258
    goto :goto_7

    .line 259
    :cond_10
    move p1, v6

    .line 260
    :goto_7
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->startTask(IILandroid/os/Bundle;)V

    .line 261
    move v0, v6

    .line 264
    :goto_8
    return v0

    .line 265
    :sswitch_data_0
    .sparse-switch
        -0x7eea92f9 -> :sswitch_4
        -0x524c8b64 -> :sswitch_3
        -0x56f90e5 -> :sswitch_2
        0x119de939 -> :sswitch_1
        0x5abe6dee -> :sswitch_0
    .end sparse-switch
    .line 266
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p0, "    moveToSideStage <taskId> <SideStagePosition>"

    .line 2
    const-string p2, "      Move a task with given id in split-screen mode."

    .line 4
    const-string v0, "    removeFromSideStage <taskId>"

    .line 6
    const-string v1, "      Remove a task with given id in split-screen mode."

    .line 8
    invoke-static {p1, p0, p2, v0, v1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p0, "    setSideStagePosition <SideStagePosition>"

    .line 13
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string p0, "      Sets the position of the side-stage."

    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    return-void
    .line 23
.end method
