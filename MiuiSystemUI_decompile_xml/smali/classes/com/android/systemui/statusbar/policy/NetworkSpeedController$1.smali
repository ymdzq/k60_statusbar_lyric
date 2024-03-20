.class public final Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    .line 4
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 6
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 17
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    .line 21
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    .line 23
    move-result p0

    .line 26
    if-lez p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p0

    .line 35
    const v0, 0x186a1

    .line 36
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    return-void
    .line 46
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    .line 4
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 6
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    .line 17
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    .line 21
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    .line 23
    move-result p0

    .line 26
    if-lez p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object p0

    .line 35
    const v0, 0x186a1

    .line 36
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 43
    return-void
    .line 46
.end method
