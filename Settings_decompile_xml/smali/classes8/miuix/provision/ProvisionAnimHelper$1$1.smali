.class Lmiuix/provision/ProvisionAnimHelper$1$1;
.super Ljava/lang/Object;
.source "ProvisionAnimHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/provision/ProvisionAnimHelper$1;->onNextAminStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiuix/provision/ProvisionAnimHelper$1;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionAnimHelper$1;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lmiuix/provision/ProvisionAnimHelper$1$1;->this$1:Lmiuix/provision/ProvisionAnimHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lmiuix/provision/ProvisionAnimHelper$1$1;->this$1:Lmiuix/provision/ProvisionAnimHelper$1;

    iget-object v0, v0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {v0}, Lmiuix/provision/ProvisionAnimHelper;->access$200(Lmiuix/provision/ProvisionAnimHelper;)Lmiuix/provision/ProvisionAnimHelper$AnimListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lmiuix/provision/ProvisionAnimHelper$1$1;->this$1:Lmiuix/provision/ProvisionAnimHelper$1;

    iget-object v0, v0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {v0}, Lmiuix/provision/ProvisionAnimHelper;->access$000(Lmiuix/provision/ProvisionAnimHelper;)I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object p0, p0, Lmiuix/provision/ProvisionAnimHelper$1$1;->this$1:Lmiuix/provision/ProvisionAnimHelper$1;

    iget-object p0, p0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {p0}, Lmiuix/provision/ProvisionAnimHelper;->access$200(Lmiuix/provision/ProvisionAnimHelper;)Lmiuix/provision/ProvisionAnimHelper$AnimListener;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/provision/ProvisionAnimHelper$AnimListener;->onNextAminStart()V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lmiuix/provision/ProvisionAnimHelper$1$1;->this$1:Lmiuix/provision/ProvisionAnimHelper$1;

    iget-object v0, v0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {v0}, Lmiuix/provision/ProvisionAnimHelper;->access$000(Lmiuix/provision/ProvisionAnimHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 118
    iget-object p0, p0, Lmiuix/provision/ProvisionAnimHelper$1$1;->this$1:Lmiuix/provision/ProvisionAnimHelper$1;

    iget-object p0, p0, Lmiuix/provision/ProvisionAnimHelper$1;->this$0:Lmiuix/provision/ProvisionAnimHelper;

    invoke-static {p0}, Lmiuix/provision/ProvisionAnimHelper;->access$200(Lmiuix/provision/ProvisionAnimHelper;)Lmiuix/provision/ProvisionAnimHelper$AnimListener;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/provision/ProvisionAnimHelper$AnimListener;->onSkipAminStart()V

    :cond_1
    :goto_0
    return-void
.end method
