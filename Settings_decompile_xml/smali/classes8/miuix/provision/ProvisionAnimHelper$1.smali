.class Lmiuix/provision/ProvisionAnimHelper$1;
.super Lcom/android/provision/IAnimCallback$Stub;
.source "ProvisionAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/ProvisionAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/provision/ProvisionAnimHelper;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionAnimHelper;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-direct {p0}, Lcom/android/provision/IAnimCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackAnimStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "OobeUtil2"

    const-string v1, "onBackAnimStart"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {v0}, Lmiuix/provision/ProvisionAnimHelper;->access$100(Lmiuix/provision/ProvisionAnimHelper;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {v0}, Lmiuix/provision/ProvisionAnimHelper;->access$100(Lmiuix/provision/ProvisionAnimHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiuix/provision/ProvisionAnimHelper$1$2;

    invoke-direct {v1, p0}, Lmiuix/provision/ProvisionAnimHelper$1$2;-><init>(Lmiuix/provision/ProvisionAnimHelper$1;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onNextAminStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNextAminStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {v1}, Lmiuix/provision/ProvisionAnimHelper;->access$000(Lmiuix/provision/ProvisionAnimHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OobeUtil2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {v0}, Lmiuix/provision/ProvisionAnimHelper;->access$100(Lmiuix/provision/ProvisionAnimHelper;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {v0}, Lmiuix/provision/ProvisionAnimHelper;->access$100(Lmiuix/provision/ProvisionAnimHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiuix/provision/ProvisionAnimHelper$1$1;

    invoke-direct {v1, p0}, Lmiuix/provision/ProvisionAnimHelper$1$1;-><init>(Lmiuix/provision/ProvisionAnimHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
