.class public Lmiui/settings/commonlib/MemoryOptimizationUtil;
.super Ljava/lang/Object;
.source "MemoryOptimizationUtil.java"


# static fields
.field public static final CONTROLLER_PKG:Ljava/lang/String; = "com.android.htmlviewer"

.field private static final DEFAULT_KILL_DELAY_TIME:J = 0x7530L

.field public static final DELAY_TIME_KEY:Ljava/lang/String; = "delay_time"

.field public static final OPTIMIZATION_ACTIION:Ljava/lang/String; = "miui.intent.action.MEMORY_OPTIMIZATION"

.field public static final OPTIMIZATION_INIT_ACTIION:Ljava/lang/String; = "miui.intent.action.MEMORY_OPTIMIZATION_INIT"

.field public static final OPTIMIZED_PKG_KEY:Ljava/lang/String; = "optimized_package"

.field public static final RESTART_APP_STUB_ACTIION:Ljava/lang/String; = "miui.intent.action.RESTART_APP_STUB"

.field public static final RESTART_PROCESS_KEY:Ljava/lang/String; = "restart_process"

.field public static final TAG:Ljava/lang/String; = "MemoryOptimizationService"


# instance fields
.field private proxy:Lcom/android/settings/services/IMemoryOptimizationInterface;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lmiui/settings/commonlib/MemoryOptimizationUtil$1;

    invoke-direct {v0, p0}, Lmiui/settings/commonlib/MemoryOptimizationUtil$1;-><init>(Lmiui/settings/commonlib/MemoryOptimizationUtil;)V

    iput-object v0, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lmiui/settings/commonlib/MemoryOptimizationUtil;Lcom/android/settings/services/IMemoryOptimizationInterface;)Lcom/android/settings/services/IMemoryOptimizationInterface;
    .locals 0

    .line 12
    iput-object p1, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil;->proxy:Lcom/android/settings/services/IMemoryOptimizationInterface;

    return-object p1
.end method

.method public static initMemoryOptimizationService(Landroid/content/Context;)V
    .locals 6

    const-string v1, "com.android.htmlviewer"

    const/4 v2, 0x0

    const-wide/16 v3, 0x7530

    const/4 v5, 0x1

    move-object v0, p0

    .line 61
    invoke-static/range {v0 .. v5}, Lmiui/settings/commonlib/MemoryOptimizationUtil;->sendMemoryOptimizationMsg(Landroid/content/Context;Ljava/lang/String;ZJZ)V

    return-void
.end method

.method public static sendMemoryOptimizationMsg(Landroid/content/Context;)V
    .locals 6

    const-string v1, "com.android.htmlviewer"

    const/4 v2, 0x1

    const-wide/16 v3, 0x7530

    const/4 v5, 0x0

    move-object v0, p0

    .line 57
    invoke-static/range {v0 .. v5}, Lmiui/settings/commonlib/MemoryOptimizationUtil;->sendMemoryOptimizationMsg(Landroid/content/Context;Ljava/lang/String;ZJZ)V

    return-void
.end method

.method public static sendMemoryOptimizationMsg(Landroid/content/Context;J)V
    .locals 6

    const-string v1, "com.android.htmlviewer"

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p1

    .line 53
    invoke-static/range {v0 .. v5}, Lmiui/settings/commonlib/MemoryOptimizationUtil;->sendMemoryOptimizationMsg(Landroid/content/Context;Ljava/lang/String;ZJZ)V

    return-void
.end method

.method public static sendMemoryOptimizationMsg(Landroid/content/Context;Ljava/lang/String;ZJZ)V
    .locals 3

    const-string v0, "MemoryOptimizationService"

    if-nez p0, :cond_0

    const-string p0, "context is null"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 34
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.MEMORY_OPTIMIZATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-string p5, "miui.intent.action.MEMORY_OPTIMIZATION_INIT"

    invoke-direct {v1, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    :cond_1
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "optimized_package"

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "restart_process"

    .line 41
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "delay_time"

    .line 42
    invoke-virtual {v1, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 45
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private tryUnbindMemoryService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 130
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "tryUnbindMemoryService error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MemoryOptimizationService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public bindMemoryOptimizationService(Landroid/content/Context;)V
    .locals 2

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MEMORY_OPTIMIZATION_INIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.htmlviewer"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :try_start_0
    iget-object p0, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MemoryOptimizationService"

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startMemoryOptimization(Landroid/content/Context;)V
    .locals 6

    const-string v2, "com.android.htmlviewer"

    const/4 v3, 0x1

    const-wide/16 v4, 0x7530

    move-object v0, p0

    move-object v1, p1

    .line 103
    invoke-virtual/range {v0 .. v5}, Lmiui/settings/commonlib/MemoryOptimizationUtil;->startMemoryOptimization(Landroid/content/Context;Ljava/lang/String;ZJ)V

    return-void
.end method

.method public startMemoryOptimization(Landroid/content/Context;Ljava/lang/String;ZJ)V
    .locals 2

    .line 107
    iget-object v0, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil;->proxy:Lcom/android/settings/services/IMemoryOptimizationInterface;

    if-nez v0, :cond_0

    const-string p2, "MemoryOptimizationService"

    const-string p3, "MemoryOptimization proxy is null"

    .line 108
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p2, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, p1, p2}, Lmiui/settings/commonlib/MemoryOptimizationUtil;->tryUnbindMemoryService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.MEMORY_OPTIMIZATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "optimized_package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "restart_process"

    .line 116
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "delay_time"

    .line 117
    invoke-virtual {v0, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 120
    :try_start_0
    iget-object p2, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil;->proxy:Lcom/android/settings/services/IMemoryOptimizationInterface;

    invoke-interface {p2, v0}, Lcom/android/settings/services/IMemoryOptimizationInterface;->startMemoryOptimization(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 122
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :goto_0
    iget-object p2, p0, Lmiui/settings/commonlib/MemoryOptimizationUtil;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, p1, p2}, Lmiui/settings/commonlib/MemoryOptimizationUtil;->tryUnbindMemoryService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method
