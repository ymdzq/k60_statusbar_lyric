.class public final Lcom/android/wm/shell/transition/Tracer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# instance fields
.field public final mEnabledLock:Ljava/lang/Object;

.field public final mHandlerIds:Ljava/util/Map;

.field public final mHandlerUseCountInTrace:Ljava/util/Map;

.field public final mProtoProvider:Lcom/android/wm/shell/transition/Tracer$1;

.field public final mRemovedFromTraceCallbacks:Ljava/util/Map;

.field public final mTraceBuffer:Lcom/android/internal/util/TraceBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mEnabledLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/android/wm/shell/transition/Tracer$1;

    .line 12
    invoke-direct {v0}, Lcom/android/wm/shell/transition/Tracer$1;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mProtoProvider:Lcom/android/wm/shell/transition/Tracer$1;

    .line 17
    new-instance v1, Lcom/android/internal/util/TraceBuffer;

    .line 19
    new-instance v2, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda0;

    .line 21
    invoke-direct {v2, p0}, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/Tracer;)V

    .line 23
    const/16 v3, 0x3c00

    .line 26
    invoke-direct {v1, v3, v0, v2}, Lcom/android/internal/util/TraceBuffer;-><init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V

    .line 28
    iput-object v1, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    .line 40
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    .line 47
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    .line 52
    return-void
    .line 54
.end method


# virtual methods
.method public final logDispatched(ILcom/android/wm/shell/transition/Transitions$TransitionHandler;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v0

    .line 26
    check-cast v1, Ljava/util/HashMap;

    .line 27
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 29
    move-result v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 38
    check-cast v0, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move v0, v1

    .line 44
    :goto_0
    new-instance v1, Lcom/android/wm/shell/nano/Transition;

    .line 45
    invoke-direct {v1}, Lcom/android/wm/shell/nano/Transition;-><init>()V

    .line 47
    iput p1, v1, Lcom/android/wm/shell/nano/Transition;->id:I

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 52
    move-result-wide v2

    .line 55
    iput-wide v2, v1, Lcom/android/wm/shell/nano/Transition;->dispatchTimeNs:J

    .line 56
    iput v0, v1, Lcom/android/wm/shell/nano/Transition;->handler:I

    .line 58
    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v0

    .line 66
    move-object v2, p1

    .line 67
    check-cast v2, Ljava/util/HashMap;

    .line 68
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 85
    check-cast p1, Ljava/util/HashMap;

    .line 86
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mRemovedFromTraceCallbacks:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda1;

    .line 93
    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/transition/Tracer$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/transition/Tracer;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 95
    check-cast p1, Ljava/util/HashMap;

    .line 98
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 105
    return-void
    .line 108
.end method

.method public final onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
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
    const-string/jumbo v4, "start"

    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 v3, 0x2

    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    const-string/jumbo v4, "stop"

    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    const/4 v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :sswitch_2
    const-string v4, "save-for-bugreport"

    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    const/4 v3, 0x0

    .line 54
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "Invalid command: "

    .line 60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    aget-object p1, p1, v0

    .line 65
    invoke-static {v1, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 67
    const-string p1, ""

    .line 70
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/transition/Tracer;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 72
    return v0

    .line 75
    :pswitch_0
    sget-boolean p1, Landroid/os/Build;->IS_USER:Z

    .line 76
    if-eqz p1, :cond_3

    .line 78
    invoke-static {p2}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    .line 80
    goto :goto_1

    .line 83
    :cond_3
    const-string p1, "Tracer#startTrace"

    .line 84
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 86
    const-string p1, "Starting shell transition trace."

    .line 89
    const-string v0, "ShellTransitionTracer"

    .line 91
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz p2, :cond_4

    .line 96
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mEnabledLock:Ljava/lang/Object;

    .line 104
    monitor-enter p1

    .line 106
    :try_start_0
    iget-object p2, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 107
    invoke-virtual {p2}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 109
    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 112
    const p2, 0x4e2000

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 117
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 121
    :goto_1
    return v2

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw p0

    .line 127
    :pswitch_1
    new-instance p1, Ljava/io/File;

    .line 128
    const-string v0, "/data/misc/wmtrace/shell_transition_trace.winscope"

    .line 130
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    .line 135
    if-eqz v0, :cond_5

    .line 137
    invoke-static {p2}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    .line 139
    goto :goto_2

    .line 142
    :cond_5
    const-string v0, "Tracer#stopTrace"

    .line 143
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 145
    const-string v0, "Stopping shell transition trace."

    .line 148
    const-string v1, "ShellTransitionTracer"

    .line 150
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p2, :cond_6

    .line 155
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 160
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/transition/Tracer;->mEnabledLock:Ljava/lang/Object;

    .line 163
    monitor-enter v0

    .line 165
    :try_start_2
    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/transition/Tracer;->writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 166
    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 171
    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 174
    const/16 p1, 0x3c00

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer;->setCapacity(I)V

    .line 178
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 182
    :goto_2
    return v2

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    throw p0

    .line 188
    :pswitch_2
    sget-boolean p1, Landroid/os/Build;->IS_USER:Z

    .line 189
    if-eqz p1, :cond_7

    .line 191
    invoke-static {p2}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->-$$Nest$sme(Ljava/io/PrintWriter;)V

    .line 193
    goto :goto_3

    .line 196
    :cond_7
    const-string p1, "TransitionTracer#saveForBugreport"

    .line 197
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/android/wm/shell/transition/Tracer;->mEnabledLock:Ljava/lang/Object;

    .line 202
    monitor-enter p1

    .line 204
    :try_start_4
    new-instance v0, Ljava/io/File;

    .line 205
    const-string v1, "/data/misc/wmtrace/shell_transition_trace.winscope"

    .line 207
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/transition/Tracer;->writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 212
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 215
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 216
    :goto_3
    return v2

    .line 219
    :catchall_2
    move-exception p0

    .line 220
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 221
    throw p0

    .line 222
    nop

    .line 223
    :sswitch_data_0
    .sparse-switch
        -0x174ab7ac -> :sswitch_2
        0x360802 -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 238
.end method

.method public final printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v0, "start"

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
    const-string v0, "  Start tracing the transitions."

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
    const-string/jumbo v0, "stop"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v0, "  Stop tracing the transitions."

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v0, "save-for-bugreport"

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string p2, "  Flush in memory transition trace to file."

    .line 112
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    return-void
    .line 124
.end method

.method public final writeHandlerMappingToProto(Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerUseCountInTrace:Ljava/util/Map;

    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 29
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Integer;

    .line 35
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v4

    .line 40
    if-lez v4, :cond_0

    .line 41
    new-instance v4, Lcom/android/wm/shell/nano/HandlerMapping;

    .line 43
    invoke-direct {v4}, Lcom/android/wm/shell/nano/HandlerMapping;-><init>()V

    .line 45
    iget-object v5, p0, Lcom/android/wm/shell/transition/Tracer;->mHandlerIds:Ljava/util/Map;

    .line 48
    check-cast v5, Ljava/util/HashMap;

    .line 50
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v5

    .line 55
    check-cast v5, Ljava/lang/Integer;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v5

    .line 61
    iput v5, v4, Lcom/android/wm/shell/nano/HandlerMapping;->id:I

    .line 62
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 71
    iput-object v3, v4, Lcom/android/wm/shell/nano/HandlerMapping;->name:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    const/4 p0, 0x0

    .line 78
    new-array p0, p0, [Lcom/android/wm/shell/nano/HandlerMapping;

    .line 79
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 84
    check-cast p0, [Lcom/android/wm/shell/nano/HandlerMapping;

    .line 85
    iput-object p0, p1, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->handlerMappings:[Lcom/android/wm/shell/nano/HandlerMapping;

    .line 87
    return-void
    .line 89
.end method

.method public final writeTraceToFileLocked(Ljava/io/PrintWriter;Ljava/io/File;)V
    .locals 7

    .line 1
    const-string v0, "ShellTransitionTracer"

    .line 2
    const-string v1, "Writing file to "

    .line 4
    const-string v2, "TransitionTracer#writeTraceToFileLocked"

    .line 6
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8
    :try_start_0
    new-instance v2, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;

    .line 11
    invoke-direct {v2}, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;-><init>()V

    .line 13
    const-wide v3, 0x4543415254534d57L    # 4.655612620672777E25

    .line 16
    iput-wide v3, v2, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->magicNumber:J

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/transition/Tracer;->writeHandlerMappingToProto(Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;)V

    .line 23
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v4

    .line 31
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 32
    move-result-wide v3

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 36
    move-result-wide v5

    .line 39
    sub-long/2addr v3, v5

    .line 40
    iput-wide v3, v2, Lcom/android/wm/shell/nano/WmShellTransitionTraceProto;->realToElapsedTimeOffsetNanos:J

    .line 41
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 43
    move-result v3

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, " from process "

    .line 59
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/Tracer;->mTraceBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 82
    invoke-virtual {p0, p2, v2}, Lcom/android/internal/util/TraceBuffer;->writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 87
    :catch_0
    move-exception p0

    .line 88
    const-string p2, "Unable to write buffer to file"

    .line 89
    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    if-eqz p1, :cond_1

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "ERROR: Unable to write buffer to file ::\n "

    .line 98
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 113
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 116
    return-void
    .line 119
.end method
