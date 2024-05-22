.class public final Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 4
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public final onDisconnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 4
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;

    .line 6
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$1;I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method
