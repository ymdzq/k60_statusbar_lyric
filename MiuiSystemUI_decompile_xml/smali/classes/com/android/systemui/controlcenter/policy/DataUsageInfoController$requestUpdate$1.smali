.class public final Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$requestUpdate$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$requestUpdate$1;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$requestUpdate$1;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->callbacks:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$requestUpdate$1;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 10
    if-lez v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->handler:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;

    .line 14
    const/16 v0, 0x91d

    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    :goto_0
    return-void
    .line 32
.end method
