.class public final Lcom/android/systemui/MiuiOperatorCustomizedPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/MiuiOperatorCustomizedPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$1;->this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$1;->this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p1, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;-><init>(Lcom/android/systemui/MiuiOperatorCustomizedPolicy;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mBgHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
    .line 17
.end method
