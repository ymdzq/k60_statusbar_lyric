.class public final Lcom/android/systemui/statusbar/commandline/CommandRegistry;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final commandMap:Ljava/util/Map;

.field public final context:Landroid/content/Context;

.field public initialized:Z

.field public final mainExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 9
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->commandMap:Ljava/util/Map;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public final help(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Usage: adb shell cmd statusbar <command>"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, "  known commands:"

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->commandMap:Ljava/util/Map;

    .line 12
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 16
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    const-string v1, "   "

    .line 36
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    return-void
    .line 42
.end method

.method public final onShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->initialized:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->initialized:Z

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry$initializeCommands$1;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;)V

    .line 11
    const-string v2, "prefs"

    .line 14
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 16
    :cond_0
    array-length v0, p2

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move v1, v2

    .line 24
    :goto_0
    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->help(Ljava/io/PrintWriter;)V

    .line 27
    return-void

    .line 30
    :cond_2
    aget-object v0, p2, v2

    .line 31
    iget-object v1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->commandMap:Ljava/util/Map;

    .line 33
    check-cast v1, Ljava/util/LinkedHashMap;

    .line 35
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/systemui/statusbar/commandline/CommandWrapper;

    .line 41
    if-nez v0, :cond_3

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->help(Ljava/io/PrintWriter;)V

    .line 45
    return-void

    .line 48
    :cond_3
    iget-object p0, v0, Lcom/android/systemui/statusbar/commandline/CommandWrapper;->commandFactory:Lkotlin/jvm/functions/Function0;

    .line 49
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 54
    check-cast p0, Lcom/android/systemui/statusbar/commandline/Command;

    .line 55
    new-instance v1, Ljava/util/concurrent/FutureTask;

    .line 57
    new-instance v2, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;

    .line 59
    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$task$1;-><init>(Lcom/android/systemui/statusbar/commandline/Command;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 61
    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 64
    new-instance p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$1;

    .line 67
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$1;-><init>(Ljava/util/concurrent/FutureTask;)V

    .line 69
    iget-object p1, v0, Lcom/android/systemui/statusbar/commandline/CommandWrapper;->executor:Ljava/util/concurrent/Executor;

    .line 72
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 77
    return-void
    .line 80
.end method

.method public final declared-synchronized registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->mainExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "A command is already registered for ("

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->commandMap:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->commandMap:Ljava/util/Map;

    new-instance v1, Lcom/android/systemui/statusbar/commandline/CommandWrapper;

    invoke-direct {v1, p3, p2}, Lcom/android/systemui/statusbar/commandline/CommandWrapper;-><init>(Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
