.class Lcom/xiaomi/accounts/AccountManagerService$Session$1;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accounts/AccountManagerService$Session;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/accounts/AccountManagerService$Session;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/AccountManagerService$Session;)V
    .locals 0

    .line 1461
    iput-object p1, p0, Lcom/xiaomi/accounts/AccountManagerService$Session$1;->this$1:Lcom/xiaomi/accounts/AccountManagerService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1465
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManagerService$Session$1;->this$1:Lcom/xiaomi/accounts/AccountManagerService$Session;

    invoke-virtual {v0}, Lcom/xiaomi/accounts/AccountManagerService$Session;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1467
    :catch_0
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountManagerService$Session$1;->this$1:Lcom/xiaomi/accounts/AccountManagerService$Session;

    const/4 v0, 0x1

    const-string v1, "remote exception"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
