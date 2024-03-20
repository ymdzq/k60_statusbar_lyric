.class Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;
.super Landroid/os/Handler;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/AccountManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1605
    iput-object p1, p0, Lcom/xiaomi/accounts/AccountManagerService$MessageHandler;->this$0:Lcom/xiaomi/accounts/AccountManagerService;

    .line 1606
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1610
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1612
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/xiaomi/accounts/AccountManagerService$Session;

    .line 1613
    invoke-virtual {p0}, Lcom/xiaomi/accounts/AccountManagerService$Session;->onTimedOut()V

    return-void

    .line 1617
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
