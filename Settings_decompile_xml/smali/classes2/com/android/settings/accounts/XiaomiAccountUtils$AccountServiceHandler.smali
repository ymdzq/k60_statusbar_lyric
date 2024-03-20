.class Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceHandler;
.super Landroid/os/Handler;
.source "XiaomiAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/XiaomiAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountServiceHandler"
.end annotation


# instance fields
.field private mOuterUtilsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/accounts/XiaomiAccountUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/accounts/XiaomiAccountUtils;Landroid/os/Looper;)V
    .locals 0

    .line 563
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 564
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceHandler;->mOuterUtilsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 569
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountServiceHandler;->mOuterUtilsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/XiaomiAccountUtils;

    .line 571
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 573
    :cond_0
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle ASYNC_MSG_GET_ACCOUNT_INFO_FROM_LOCAL,state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_4

    .line 576
    invoke-static {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$mupdateAccountInfoFromLocal(Lcom/android/settings/accounts/XiaomiAccountUtils;)V

    goto :goto_0

    .line 594
    :cond_1
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle ASYNC_MSG_GET_ACCOUNT_INFO,state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_4

    .line 597
    invoke-static {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$mupdateAccountInfo(Lcom/android/settings/accounts/XiaomiAccountUtils;)V

    goto :goto_0

    .line 587
    :cond_2
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "handle ASYNC_MSG_UNBIND_SERVICE"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 590
    invoke-static {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$munbindAccountService(Lcom/android/settings/accounts/XiaomiAccountUtils;)V

    goto :goto_0

    .line 580
    :cond_3
    invoke-static {}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "handle ASYNC_MSG_BIND_SERVICE "

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    .line 583
    invoke-static {v0}, Lcom/android/settings/accounts/XiaomiAccountUtils;->-$$Nest$mbindAccountService(Lcom/android/settings/accounts/XiaomiAccountUtils;)V

    :cond_4
    :goto_0
    return-void
.end method
