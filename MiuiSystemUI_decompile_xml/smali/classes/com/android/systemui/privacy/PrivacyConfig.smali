.class public final Lcom/android/systemui/privacy/PrivacyConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final callbacks:Ljava/util/List;

.field public final devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;

.field public locationAvailable:Z

.field public mediaProjectionAvailable:Z

.field public micCameraAvailable:Z

.field public final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/privacy/PrivacyConfig$Companion;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyConfig$Companion;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/dump/DumpManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyConfig;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    .line 12
    const-string p2, "privacy"

    .line 14
    const-string v0, "camera_mic_icons_enabled"

    .line 16
    const/4 v1, 0x1

    .line 18
    invoke-static {p2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    move-result v0

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 23
    const-string v0, "location_indicators_enabled"

    .line 25
    const/4 v2, 0x0

    .line 27
    invoke-static {p2, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 28
    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 32
    const-string v0, "media_projection_indicators_enabled"

    .line 34
    invoke-static {p2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 36
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->mediaProjectionAvailable:Z

    .line 40
    new-instance v0, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;

    .line 42
    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;-><init>(Lcom/android/systemui/privacy/PrivacyConfig;)V

    .line 44
    iput-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->devicePropertiesChangedListener:Lcom/android/systemui/privacy/PrivacyConfig$devicePropertiesChangedListener$1;

    .line 47
    sget-object v1, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 49
    const-string v2, "PrivacyConfig"

    .line 51
    invoke-virtual {p3, v2, p0, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 53
    invoke-static {p2, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 56
    return-void
    .line 59
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/privacy/PrivacyConfig$Callback;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lcom/android/systemui/privacy/PrivacyConfig$addCallback$1;

    .line 7
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/privacy/PrivacyConfig$addCallback$1;-><init>(Lcom/android/systemui/privacy/PrivacyConfig;Ljava/lang/ref/WeakReference;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 12
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "mediaProjectionAvailable: "

    .line 2
    const-string v0, "locationAvailable: "

    .line 4
    const-string v1, "micCameraAvailable: "

    .line 6
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 8
    move-result-object p1

    .line 11
    const-string v2, "PrivacyConfig state:"

    .line 12
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 17
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 34
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->mediaProjectionAvailable:Z

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const-string p2, "Callbacks:"

    .line 71
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    .line 79
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object p0

    .line 84
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result p2

    .line 88
    if-eqz p2, :cond_1

    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object p2

    .line 94
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 95
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 100
    check-cast p2, Lcom/android/systemui/privacy/PrivacyConfig$Callback;

    .line 101
    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    goto :goto_0

    .line 108
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 112
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 115
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    :try_start_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 120
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 125
    throw p0
    .line 128
.end method
