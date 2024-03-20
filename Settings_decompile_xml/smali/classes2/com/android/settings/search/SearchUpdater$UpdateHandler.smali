.class final Lcom/android/settings/search/SearchUpdater$UpdateHandler;
.super Landroid/os/Handler;
.source "SearchUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SearchUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SearchUpdater;


# direct methods
.method constructor <init>(Lcom/android/settings/search/SearchUpdater;Landroid/os/Looper;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/search/SearchUpdater$UpdateHandler;->this$0:Lcom/android/settings/search/SearchUpdater;

    .line 34
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search/SearchUpdater$UpdateHandler;->this$0:Lcom/android/settings/search/SearchUpdater;

    invoke-static {v0}, Lcom/android/settings/search/SearchUpdater;->-$$Nest$fgetmOps(Lcom/android/settings/search/SearchUpdater;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/settings/search/SearchUpdater$UpdateHandler;->this$0:Lcom/android/settings/search/SearchUpdater;

    invoke-static {v0}, Lcom/android/settings/search/SearchUpdater;->-$$Nest$fgetmOps(Lcom/android/settings/search/SearchUpdater;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SearchUpdater"

    const-string v2, "error occures when applyBatch"

    .line 44
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/search/SearchUpdater$UpdateHandler;->this$0:Lcom/android/settings/search/SearchUpdater;

    invoke-static {v0}, Lcom/android/settings/search/SearchUpdater;->-$$Nest$fgetmTaskManager(Lcom/android/settings/search/SearchUpdater;)Lcom/android/settings/search/SearchUpdater$TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/SearchUpdater$TaskManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/settings/search/SearchUpdater$UpdateHandler;->this$0:Lcom/android/settings/search/SearchUpdater;

    invoke-static {v0}, Lcom/android/settings/search/SearchUpdater;->-$$Nest$fgetmTaskManager(Lcom/android/settings/search/SearchUpdater;)Lcom/android/settings/search/SearchUpdater$TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/SearchUpdater$TaskManager;->get()I

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/settings/search/SearchUpdater$UpdateHandler;->this$0:Lcom/android/settings/search/SearchUpdater;

    invoke-static {v1}, Lcom/android/settings/search/SearchUpdater;->-$$Nest$fgetmTaskManager(Lcom/android/settings/search/SearchUpdater;)Lcom/android/settings/search/SearchUpdater$TaskManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/search/SearchUpdater$TaskManager;->remove(I)V

    .line 53
    iget-object v1, p0, Lcom/android/settings/search/SearchUpdater$UpdateHandler;->this$0:Lcom/android/settings/search/SearchUpdater;

    invoke-static {v1, v0}, Lcom/android/settings/search/SearchUpdater;->-$$Nest$mupdate(Lcom/android/settings/search/SearchUpdater;I)V

    .line 55
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
