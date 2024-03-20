.class Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasNotify:Z

.field final synthetic this$1:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;)V
    .locals 0

    .line 1528
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$1;->this$1:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 1529
    iput-boolean p1, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$1;->hasNotify:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    .line 1532
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "ss"

    .line 1533
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiuiMasterClear"

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "esim state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-boolean p2, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$1;->hasNotify:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 1538
    invoke-static {}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$smgetEsimGPIOState()I

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const-string p2, "LOADED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1539
    :cond_2
    const-class p1, Lcom/android/settings/MiuiMasterClear;

    monitor-enter p1

    const/4 p2, 0x1

    .line 1540
    :try_start_0
    iput-boolean p2, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$1;->hasNotify:Z

    const-string p2, "MiuiMasterClear"

    const-string v0, "CheckEsimStatusForDeleteTask notify"

    .line 1541
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const-class p2, Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 1543
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask$1;->this$1:Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiMasterClear;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x64

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1544
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    .line 1545
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method
