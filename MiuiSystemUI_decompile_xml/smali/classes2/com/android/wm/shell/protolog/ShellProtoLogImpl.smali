.class public final Lcom/android/wm/shell/protolog/ShellProtoLogImpl;
.super Lcom/android/internal/protolog/BaseProtoLogImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sServiceInstance:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->values()[Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->addLogGroupEnum([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 6
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    const-string v1, "/data/misc/wmtrace/shell_log.winscope"

    .line 4
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 9
    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;-><init>()V

    .line 11
    const-string v2, "/system_ext/etc/wmshell.protolog.json.gz"

    .line 14
    const/high16 v3, 0x100000

    .line 16
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/protolog/BaseProtoLogImpl;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/android/internal/protolog/ProtoLogViewerConfigReader;)V

    .line 18
    return-void
    .line 21
.end method

.method public static varargs d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->DEBUG:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 6
    move-object v2, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public static varargs e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->ERROR:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 6
    move-object v2, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public static declared-synchronized getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;
    .locals 2

    .line 1
    const-class v0, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->sServiceInstance:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 9
    invoke-direct {v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;-><init>()V

    .line 11
    sput-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->sServiceInstance:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 14
    :cond_0
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->sServiceInstance:Lcom/android/wm/shell/protolog/ShellProtoLogImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
    .line 22
.end method

.method public static varargs i(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v4, 0x0

    .line 2
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 3
    move-result-object v0

    .line 6
    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->INFO:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 7
    move-object v2, p0

    .line 9
    move v3, p1

    .line 10
    move-object v5, p2

    .line 11
    move-object v6, p3

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public static isEnabled(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-interface {p0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToProto()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/android/internal/protolog/BaseProtoLogImpl;->isProtoEnabled()Z

    .line 18
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
    .line 28
.end method

.method public static varargs v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->VERBOSE:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 6
    move-object v2, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public static varargs w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WARN:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 6
    move-object v2, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public static varargs wtf(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WTF:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 6
    move-object v2, p0

    .line 8
    move v3, p1

    .line 9
    move v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/protolog/BaseProtoLogImpl;->log(Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final startTextLogging(Ljava/io/PrintWriter;[Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/protolog/BaseProtoLogImpl;->mViewerConfig:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 2
    const-string v1, "/system_ext/etc/wmshell.protolog.json.gz"

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final stopTextLogging(Ljava/io/PrintWriter;[Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/protolog/BaseProtoLogImpl;->setLogging(ZZLjava/io/PrintWriter;[Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
