.class public final Lcom/android/systemui/dump/DumpHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

.field public final startables:Ljava/util/Map;

.field public final uncaughtExceptionPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/dump/LogBufferEulogizer;Ljava/util/Map;Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/dump/DumpHandler;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/dump/DumpHandler;->logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/dump/DumpHandler;->startables:Ljava/util/Map;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/dump/DumpHandler;->uncaughtExceptionPreHandlerManager:Lcom/android/systemui/shared/system/UncaughtExceptionPreHandlerManager;

    .line 13
    return-void
    .line 15
.end method

.method public static dumpServiceList(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    const-string p1, ": "

    .line 5
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    if-nez p2, :cond_0

    .line 10
    const-string p1, "N/A"

    .line 12
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    return-void

    .line 17
    :cond_0
    array-length v0, p2

    .line 18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 19
    const-string v0, " services"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    array-length v0, p2

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, v0, :cond_1

    .line 29
    const-string v2, "  "

    .line 31
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 36
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    aget-object v2, p2, v1

    .line 42
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    return-void
    .line 50
.end method

.method public static parseArgs([Ljava/lang/String;)Lcom/android/systemui/dump/ParsedArgs;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    new-instance v1, Lkotlin/collections/ArrayAsCollection;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lkotlin/collections/ArrayAsCollection;-><init>([Ljava/lang/Object;Z)V

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    new-instance v1, Lcom/android/systemui/dump/ParsedArgs;

    .line 13
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/dump/ParsedArgs;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v3, :cond_2

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    const-string v5, "-"

    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 43
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 46
    move-result v5

    .line 49
    sparse-switch v5, :sswitch_data_0

    .line 50
    goto/16 :goto_4

    .line 53
    :sswitch_0
    const-string v4, "--tail"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    goto :goto_1

    .line 63
    :sswitch_1
    const-string v5, "--list"

    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    goto :goto_2

    .line 72
    :sswitch_2
    const-string v4, "--help"

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    goto :goto_3

    .line 81
    :sswitch_3
    const-string v4, "--dump-priority"

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v5

    .line 87
    if-eqz v5, :cond_1

    .line 88
    sget-object v3, Lcom/android/systemui/dump/DumpHandler$parseArgs$1;->INSTANCE:Lcom/android/systemui/dump/DumpHandler$parseArgs$1;

    .line 90
    invoke-static {p0, v4, v3}, Lcom/android/systemui/dump/DumpHandler;->readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 92
    move-result-object v3

    .line 95
    check-cast v3, Ljava/lang/String;

    .line 96
    iput-object v3, v1, Lcom/android/systemui/dump/ParsedArgs;->dumpPriority:Ljava/lang/String;

    .line 98
    goto :goto_0

    .line 100
    :sswitch_4
    const-string v4, "-t"

    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v4

    .line 106
    if-eqz v4, :cond_1

    .line 107
    :goto_1
    sget-object v4, Lcom/android/systemui/dump/DumpHandler$parseArgs$2;->INSTANCE:Lcom/android/systemui/dump/DumpHandler$parseArgs$2;

    .line 109
    invoke-static {p0, v3, v4}, Lcom/android/systemui/dump/DumpHandler;->readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 111
    move-result-object v3

    .line 114
    check-cast v3, Ljava/lang/Number;

    .line 115
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 117
    move-result v3

    .line 120
    iput v3, v1, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    .line 121
    goto :goto_0

    .line 123
    :sswitch_5
    const-string v5, "-l"

    .line 124
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v5

    .line 129
    if-eqz v5, :cond_1

    .line 130
    :goto_2
    iput-boolean v4, v1, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    .line 132
    goto :goto_0

    .line 134
    :sswitch_6
    const-string v4, "-h"

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result v4

    .line 140
    if-eqz v4, :cond_1

    .line 141
    :goto_3
    const-string v3, "help"

    .line 143
    iput-object v3, v1, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    .line 145
    goto :goto_0

    .line 147
    :sswitch_7
    const-string v4, "-a"

    .line 148
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result v4

    .line 153
    if-eqz v4, :cond_1

    .line 154
    goto/16 :goto_0

    .line 156
    :sswitch_8
    const-string v5, "--proto"

    .line 158
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v5

    .line 163
    if-eqz v5, :cond_1

    .line 164
    iput-boolean v4, v1, Lcom/android/systemui/dump/ParsedArgs;->proto:Z

    .line 166
    goto/16 :goto_0

    .line 168
    :cond_1
    :goto_4
    new-instance p0, Lcom/android/systemui/dump/ArgParseException;

    .line 170
    const-string v0, "Unknown flag: "

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    .line 178
    throw p0

    .line 181
    :cond_2
    iget-object p0, v1, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    .line 182
    if-nez p0, :cond_3

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    move-result p0

    .line 189
    xor-int/2addr p0, v4

    .line 190
    if-eqz p0, :cond_3

    .line 191
    sget-object p0, Lcom/android/systemui/dump/DumpHandlerKt;->COMMANDS:[Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v3

    .line 198
    invoke-static {p0, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    move-result p0

    .line 202
    if-eqz p0, :cond_3

    .line 203
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    move-result-object p0

    .line 208
    check-cast p0, Ljava/lang/String;

    .line 209
    iput-object p0, v1, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    .line 211
    :cond_3
    return-object v1

    .line 213
    :sswitch_data_0
    .sparse-switch
        -0x605db7b8 -> :sswitch_8
        0x5d4 -> :sswitch_7
        0x5db -> :sswitch_6
        0x5df -> :sswitch_5
        0x5e7 -> :sswitch_4
        0x3efed3bd -> :sswitch_3
        0x4f7504e1 -> :sswitch_2
        0x4f76e63e -> :sswitch_1
        0x4f7a69f0 -> :sswitch_0
    .end sparse-switch
    .line 214
.end method

.method public static readArgument(Ljava/util/Iterator;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p2

    .line 21
    :catch_0
    new-instance p0, Lcom/android/systemui/dump/ArgParseException;

    .line 22
    const-string p2, "Invalid argument \'"

    .line 24
    const-string v1, "\' for flag "

    .line 26
    invoke-static {p2, v0, v1, p1}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0

    .line 35
    :cond_0
    new-instance p0, Lcom/android/systemui/dump/ArgParseException;

    .line 36
    const-string p2, "Missing argument for "

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/dump/ArgParseException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
    .line 47
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "DumpManager#dump()"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    move-result-wide v0

    .line 10
    :try_start_0
    invoke-static {p3}, Lcom/android/systemui/dump/DumpHandler;->parseArgs([Ljava/lang/String;)Lcom/android/systemui/dump/ParsedArgs;

    .line 11
    move-result-object p3
    :try_end_0
    .catch Lcom/android/systemui/dump/ArgParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object v2, p3, Lcom/android/systemui/dump/ParsedArgs;->dumpPriority:Ljava/lang/String;

    .line 15
    const-string v3, "CRITICAL"

    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpCritical(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    .line 25
    goto/16 :goto_7

    .line 28
    :cond_0
    iget-object v2, p3, Lcom/android/systemui/dump/ParsedArgs;->dumpPriority:Ljava/lang/String;

    .line 30
    const-string v3, "NORMAL"

    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    iget-boolean v2, p3, Lcom/android/systemui/dump/ParsedArgs;->proto:Z

    .line 40
    if-nez v2, :cond_1

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    .line 44
    goto/16 :goto_7

    .line 47
    :cond_1
    iget-object v2, p3, Lcom/android/systemui/dump/ParsedArgs;->command:Ljava/lang/String;

    .line 49
    if-eqz v2, :cond_b

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 53
    move-result v3

    .line 56
    sparse-switch v3, :sswitch_data_0

    .line 57
    goto/16 :goto_1

    .line 60
    :sswitch_0
    const-string v3, "bugreport-critical"

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    goto/16 :goto_1

    .line 70
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpCritical(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    .line 72
    goto/16 :goto_7

    .line 75
    :sswitch_1
    const-string v3, "buffers"

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    goto/16 :goto_1

    .line 85
    :cond_3
    iget-boolean p1, p3, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    .line 87
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 89
    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/systemui/dump/DumpManager;->listBuffers(Ljava/io/PrintWriter;)V

    .line 93
    goto/16 :goto_7

    .line 96
    :cond_4
    iget p1, p3, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    .line 98
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/dump/DumpManager;->dumpBuffers(Ljava/io/PrintWriter;I)V

    .line 100
    goto/16 :goto_7

    .line 103
    :sswitch_2
    const-string v3, "help"

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 110
    if-nez v2, :cond_5

    .line 111
    goto/16 :goto_1

    .line 113
    :cond_5
    const-string p0, "Let <invocation> be:"

    .line 115
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string p0, "$ adb shell dumpsys activity service com.android.systemui/.SystemUIService"

    .line 120
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 125
    const-string p0, "Most common usage:"

    .line 128
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string p0, "$ <invocation> <targets>"

    .line 133
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const-string p0, "$ <invocation> NotifLog"

    .line 138
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string p0, "$ <invocation> StatusBar FalsingManager BootCompleteCacheImpl"

    .line 143
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    const-string p0, "etc."

    .line 148
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 153
    const-string p0, "Special commands:"

    .line 156
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    const-string p0, "$ <invocation> dumpables"

    .line 161
    const-string p1, "$ <invocation> buffers"

    .line 163
    const-string p3, "$ <invocation> bugreport-critical"

    .line 165
    const-string v2, "$ <invocation> bugreport-normal"

    .line 167
    invoke-static {p2, p0, p1, p3, v2}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string p0, "$ <invocation> config"

    .line 172
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 177
    const-string p0, "Targets can be listed:"

    .line 180
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string p0, "$ <invocation> --list"

    .line 185
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    const-string p0, "$ <invocation> dumpables --list"

    .line 190
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    const-string p0, "$ <invocation> buffers --list"

    .line 195
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 200
    const-string p0, "Show only the most recent N lines of buffers"

    .line 203
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    const-string p0, "$ <invocation> NotifLog --tail 30"

    .line 208
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    goto/16 :goto_7

    .line 213
    :sswitch_3
    const-string v3, "bugreport-normal"

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result v2

    .line 220
    if-nez v2, :cond_6

    .line 221
    goto :goto_1

    .line 223
    :cond_6
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/dump/DumpHandler;->dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V

    .line 224
    goto/16 :goto_7

    .line 227
    :sswitch_4
    const-string v3, "dumpables"

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v2

    .line 234
    if-nez v2, :cond_7

    .line 235
    goto :goto_1

    .line 237
    :cond_7
    iget-boolean p1, p3, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    .line 238
    if-eqz p1, :cond_8

    .line 240
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 242
    invoke-virtual {p0, p2}, Lcom/android/systemui/dump/DumpManager;->listDumpables(Ljava/io/PrintWriter;)V

    .line 244
    goto/16 :goto_7

    .line 247
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 249
    iget-object p1, p3, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    .line 251
    monitor-enter p0

    .line 253
    :try_start_1
    iget-object p3, p0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 254
    check-cast p3, Ljava/util/TreeMap;

    .line 256
    invoke-virtual {p3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 258
    move-result-object p3

    .line 261
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 262
    move-result-object p3

    .line 265
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    move-result v2

    .line 269
    if-eqz v2, :cond_9

    .line 270
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    move-result-object v2

    .line 275
    check-cast v2, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 276
    invoke-static {v2, p2, p1}, Lcom/android/systemui/dump/DumpManager;->dumpDumpable(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    goto :goto_0

    .line 281
    :cond_9
    monitor-exit p0

    .line 282
    goto/16 :goto_7

    .line 283
    :catchall_0
    move-exception p1

    .line 285
    monitor-exit p0

    .line 286
    throw p1

    .line 287
    :sswitch_5
    const-string v3, "config"

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    move-result v2

    .line 293
    if-nez v2, :cond_a

    .line 294
    goto :goto_1

    .line 296
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/dump/DumpHandler;->dumpConfig(Ljava/io/PrintWriter;)V

    .line 297
    goto/16 :goto_7

    .line 300
    :cond_b
    :goto_1
    iget-boolean v2, p3, Lcom/android/systemui/dump/ParsedArgs;->proto:Z

    .line 302
    const/4 v3, 0x0

    .line 304
    if-eqz v2, :cond_11

    .line 305
    iget-object p3, p3, Lcom/android/systemui/dump/ParsedArgs;->nonFlagArgs:Ljava/util/List;

    .line 307
    new-instance v2, Lcom/android/systemui/dump/nano/SystemUIProtoDump;

    .line 309
    invoke-direct {v2}, Lcom/android/systemui/dump/nano/SystemUIProtoDump;-><init>()V

    .line 311
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 314
    move-result v4

    .line 317
    xor-int/lit8 v4, v4, 0x1

    .line 318
    if-eqz v4, :cond_d

    .line 320
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 322
    move-result-object p3

    .line 325
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    move-result v4

    .line 329
    if-eqz v4, :cond_10

    .line 330
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    move-result-object v4

    .line 335
    check-cast v4, Ljava/lang/String;

    .line 336
    iget-object v5, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 338
    monitor-enter v5

    .line 340
    :try_start_2
    iget-object v6, v5, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 341
    invoke-static {v4, v6}, Lcom/android/systemui/dump/DumpManager;->findBestProtoTargetMatch(Ljava/lang/String;Ljava/util/Map;)Lcom/android/systemui/ProtoDumpable;

    .line 343
    move-result-object v4

    .line 346
    if-eqz v4, :cond_c

    .line 347
    invoke-interface {v4, v2}, Lcom/android/systemui/ProtoDumpable;->dumpProto(Lcom/android/systemui/dump/nano/SystemUIProtoDump;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    :cond_c
    monitor-exit v5

    .line 352
    goto :goto_2

    .line 353
    :catchall_1
    move-exception p0

    .line 354
    monitor-exit v5

    .line 355
    throw p0

    .line 356
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 357
    monitor-enter p0

    .line 359
    :try_start_3
    iget-object p3, p0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 360
    check-cast p3, Ljava/util/TreeMap;

    .line 362
    invoke-virtual {p3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 364
    move-result-object p3

    .line 367
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 368
    move-result-object p3

    .line 371
    :cond_e
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    move-result v4

    .line 375
    if-eqz v4, :cond_f

    .line 376
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    move-result-object v4

    .line 381
    check-cast v4, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 382
    iget-object v4, v4, Lcom/android/systemui/dump/RegisteredDumpable;->dumpable:Ljava/lang/Object;

    .line 384
    instance-of v5, v4, Lcom/android/systemui/ProtoDumpable;

    .line 386
    if-eqz v5, :cond_e

    .line 388
    check-cast v4, Lcom/android/systemui/ProtoDumpable;

    .line 390
    invoke-interface {v4, v2}, Lcom/android/systemui/ProtoDumpable;->dumpProto(Lcom/android/systemui/dump/nano/SystemUIProtoDump;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 392
    goto :goto_3

    .line 395
    :cond_f
    monitor-exit p0

    .line 396
    :cond_10
    new-instance p0, Ljava/io/BufferedOutputStream;

    .line 397
    new-instance p3, Ljava/io/FileOutputStream;

    .line 399
    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 401
    invoke-direct {p0, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 404
    :try_start_4
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    .line 407
    move-result-object p1

    .line 410
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 411
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 414
    invoke-static {p0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 417
    goto/16 :goto_7

    .line 420
    :catchall_2
    move-exception p1

    .line 422
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 423
    :catchall_3
    move-exception p2

    .line 424
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 425
    throw p2

    .line 428
    :catchall_4
    move-exception p1

    .line 429
    monitor-exit p0

    .line 430
    throw p1

    .line 431
    :cond_11
    iget-object p1, p3, Lcom/android/systemui/dump/ParsedArgs;->nonFlagArgs:Ljava/util/List;

    .line 432
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 434
    move-result v2

    .line 437
    xor-int/lit8 v2, v2, 0x1

    .line 438
    if-eqz v2, :cond_18

    .line 440
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 442
    move-result-object p1

    .line 445
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    move-result v2

    .line 449
    if-eqz v2, :cond_1a

    .line 450
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    move-result-object v2

    .line 455
    move-object v6, v2

    .line 456
    check-cast v6, Ljava/lang/String;

    .line 457
    iget-object v2, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 459
    iget-object v8, p3, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    .line 461
    iget v9, p3, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    .line 463
    monitor-enter v2

    .line 465
    :try_start_6
    new-instance v11, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;

    .line 466
    const/4 v10, 0x0

    .line 468
    move-object v4, v11

    .line 469
    move-object v5, v2

    .line 470
    move-object v7, p2

    .line 471
    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/dump/DumpManager$dumpTarget$1;-><init>(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 472
    new-instance v4, Lcom/android/systemui/dump/DumpManager$dumpTarget$$inlined$sortedBy$1;

    .line 475
    invoke-direct {v4}, Lcom/android/systemui/dump/DumpManager$dumpTarget$$inlined$sortedBy$1;-><init>()V

    .line 477
    new-instance v5, Ljava/util/ArrayList;

    .line 480
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 482
    new-instance v6, Lkotlin/sequences/SequenceBuilderIterator;

    .line 485
    invoke-direct {v6}, Lkotlin/sequences/SequenceBuilderIterator;-><init>()V

    .line 487
    invoke-static {v6, v6, v11}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt;->createCoroutineUnintercepted(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)Lkotlin/coroutines/Continuation;

    .line 490
    move-result-object v7

    .line 493
    iput-object v7, v6, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 494
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    move-result v7

    .line 499
    if-eqz v7, :cond_12

    .line 500
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    move-result-object v7

    .line 505
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    goto :goto_5

    .line 509
    :cond_12
    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 510
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 513
    move-result-object v4

    .line 516
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 517
    move-result v5

    .line 520
    if-nez v5, :cond_13

    .line 521
    move-object v5, v3

    .line 523
    goto :goto_6

    .line 524
    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 525
    move-result-object v5

    .line 528
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 529
    move-result v6

    .line 532
    if-nez v6, :cond_14

    .line 533
    goto :goto_6

    .line 535
    :cond_14
    move-object v6, v5

    .line 536
    check-cast v6, Lkotlin/Pair;

    .line 537
    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 539
    move-result-object v6

    .line 542
    check-cast v6, Ljava/lang/String;

    .line 543
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 545
    move-result v6

    .line 548
    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 549
    move-result-object v7

    .line 552
    move-object v8, v7

    .line 553
    check-cast v8, Lkotlin/Pair;

    .line 554
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 556
    move-result-object v8

    .line 559
    check-cast v8, Ljava/lang/String;

    .line 560
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 562
    move-result v8

    .line 565
    if-le v6, v8, :cond_16

    .line 566
    move-object v5, v7

    .line 568
    move v6, v8

    .line 569
    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 570
    move-result v7

    .line 573
    if-nez v7, :cond_15

    .line 574
    :goto_6
    check-cast v5, Lkotlin/Pair;

    .line 576
    if-eqz v5, :cond_17

    .line 578
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 580
    move-result-object v4

    .line 583
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 584
    if-eqz v4, :cond_17

    .line 586
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 588
    :cond_17
    monitor-exit v2

    .line 591
    goto/16 :goto_4

    .line 592
    :catchall_5
    move-exception p0

    .line 594
    monitor-exit v2

    .line 595
    throw p0

    .line 596
    :cond_18
    iget-boolean p1, p3, Lcom/android/systemui/dump/ParsedArgs;->listOnly:Z

    .line 597
    if-eqz p1, :cond_19

    .line 599
    const-string p1, "Dumpables:"

    .line 601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 606
    invoke-virtual {p1, p2}, Lcom/android/systemui/dump/DumpManager;->listDumpables(Ljava/io/PrintWriter;)V

    .line 608
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 611
    const-string p1, "Buffers:"

    .line 614
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 619
    invoke-virtual {p0, p2}, Lcom/android/systemui/dump/DumpManager;->listBuffers(Ljava/io/PrintWriter;)V

    .line 621
    goto :goto_7

    .line 624
    :cond_19
    const-string p0, "Nothing to dump :("

    .line 625
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 627
    :cond_1a
    :goto_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 633
    move-result-wide p0

    .line 636
    sub-long/2addr p0, v0

    .line 637
    new-instance p3, Ljava/lang/StringBuilder;

    .line 638
    const-string v0, "Dump took "

    .line 640
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 645
    const-string p0, "ms"

    .line 648
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    move-result-object p0

    .line 656
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 660
    return-void

    .line 663
    :catch_0
    move-exception p0

    .line 664
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 665
    move-result-object p0

    .line 668
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    return-void

    .line 672
    nop

    .line 673
    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_5
        -0x50b00b1b -> :sswitch_4
        -0x3e4f1254 -> :sswitch_3
        0x30cf41 -> :sswitch_2
        0xd96f433 -> :sswitch_1
        0x323c8b24 -> :sswitch_0
    .end sparse-switch
    .line 674
.end method

.method public final dumpConfig(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "SystemUiServiceComponents configuration:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string/jumbo v0, "vendor component: "

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/dump/DumpHandler;->context:Landroid/content/Context;

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 18
    const v2, 0x7f1302e4    # @string/config_systemUIVendorServiceComponent 'com.android.systemui.VendorServices'

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->startables:Ljava/util/Map;

    .line 29
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 31
    move-result-object p0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 37
    move-result v3

    .line 40
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/Class;

    .line 58
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_0

    .line 67
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 68
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v1

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 80
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v1, 0x0

    .line 84
    new-array v1, v1, [Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    move-result-object p0

    .line 90
    check-cast p0, [Ljava/lang/String;

    .line 91
    const-string v1, "global"

    .line 93
    invoke-static {p1, v1, p0}, Lcom/android/systemui/dump/DumpHandler;->dumpServiceList(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object p0

    .line 101
    const v0, 0x7f03006b    # @array/config_systemUIServiceComponentsPerUser

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    const-string v0, "per-user"

    .line 109
    invoke-static {p1, v0, p0}, Lcom/android/systemui/dump/DumpHandler;->dumpServiceList(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    return-void
    .line 114
.end method

.method public final dumpCritical(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 2
    iget-object p2, p2, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 7
    check-cast v1, Ljava/util/TreeMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 29
    iget-object v3, v2, Lcom/android/systemui/dump/RegisteredDumpable;->priority:Lcom/android/systemui/dump/DumpPriority;

    .line 31
    sget-object v4, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 33
    if-ne v3, v4, :cond_0

    .line 35
    invoke-static {v2, p1, p2}, Lcom/android/systemui/dump/DumpManager;->dumpDumpable(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/systemui/dump/DumpHandler;->dumpConfig(Ljava/io/PrintWriter;)V

    .line 42
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0

    .line 47
    throw p0
    .line 48
.end method

.method public final dumpNormal(Ljava/io/PrintWriter;Lcom/android/systemui/dump/ParsedArgs;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/dump/DumpHandler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 2
    iget-object v1, p2, Lcom/android/systemui/dump/ParsedArgs;->rawArgs:[Ljava/lang/String;

    .line 4
    iget p2, p2, Lcom/android/systemui/dump/ParsedArgs;->tailLength:I

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/dump/DumpManager;->dumpables:Ljava/util/Map;

    .line 9
    check-cast v2, Ljava/util/TreeMap;

    .line 11
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 13
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 31
    iget-object v4, v3, Lcom/android/systemui/dump/RegisteredDumpable;->priority:Lcom/android/systemui/dump/DumpPriority;

    .line 33
    sget-object v5, Lcom/android/systemui/dump/DumpPriority;->NORMAL:Lcom/android/systemui/dump/DumpPriority;

    .line 35
    if-ne v4, v5, :cond_0

    .line 37
    invoke-static {v3, p1, v1}, Lcom/android/systemui/dump/DumpManager;->dumpDumpable(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/dump/DumpManager;->buffers:Ljava/util/Map;

    .line 43
    check-cast v1, Ljava/util/TreeMap;

    .line 45
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 47
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v1

    .line 54
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/systemui/dump/RegisteredDumpable;

    .line 65
    invoke-static {v2, p1, p2}, Lcom/android/systemui/dump/DumpManager;->dumpBuffer(Lcom/android/systemui/dump/RegisteredDumpable;Ljava/io/PrintWriter;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 67
    goto :goto_1

    .line 70
    :cond_2
    monitor-exit v0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/dump/DumpHandler;->logBufferEulogizer:Lcom/android/systemui/dump/LogBufferEulogizer;

    .line 72
    const-string p2, "BufferEulogizer"

    .line 74
    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->logPath:Ljava/nio/file/Path;

    .line 76
    const-string v1, "Not eulogizing buffers; they are "

    .line 78
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/dump/LogBufferEulogizer;->getMillisSinceLastWrite(Ljava/nio/file/Path;)J

    .line 80
    move-result-wide v2

    .line 83
    iget-wide v4, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->maxLogAgeToDump:J

    .line 84
    cmp-long v4, v2, v4

    .line 86
    if-lez v4, :cond_3

    .line 88
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 90
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 92
    invoke-virtual {p0, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 94
    move-result-wide p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    const-string p0, " hours old"

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 114
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_2

    .line 118
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->files:Lcom/android/systemui/util/io/Files;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-static {v0}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    .line 124
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :try_start_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 128
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 131
    const-string v0, "=============== BUFFERS FROM MOST RECENT CRASH ==============="

    .line 134
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$1$1;

    .line 139
    invoke-direct {v0, p1}, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$1$1;-><init>(Ljava/io/PrintWriter;)V

    .line 141
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    const/4 p1, 0x0

    .line 147
    :try_start_3
    invoke-static {p0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UncheckedIOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 148
    goto :goto_2

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :catchall_1
    move-exception v0

    .line 154
    :try_start_5
    invoke-static {p0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 155
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/UncheckedIOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 158
    :catch_0
    move-exception p0

    .line 159
    const-string p1, "UncheckedIOException while dumping the core"

    .line 160
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :catch_1
    :goto_2
    return-void

    .line 165
    :catchall_2
    move-exception p0

    .line 166
    monitor-exit v0

    .line 167
    throw p0
    .line 168
.end method
