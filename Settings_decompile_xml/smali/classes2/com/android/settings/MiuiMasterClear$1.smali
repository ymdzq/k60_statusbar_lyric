.class Lcom/android/settings/MiuiMasterClear$1;
.super Landroid/os/Handler;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$1;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 211
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiMasterClear"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    .line 213
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_0

    const-string p1, "cancel mCheckEsimStatusForDeleteTask"

    .line 214
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$1;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmCheckEsimStatusForDeleteTask(Lcom/android/settings/MiuiMasterClear;)Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;->isTimeOver:Z

    .line 216
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$1;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmCheckEsimStatusForDeleteTask(Lcom/android/settings/MiuiMasterClear;)Lcom/android/settings/MiuiMasterClear$CheckEsimStatusForDeleteTask;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
