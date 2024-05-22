.class public final Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCotaInternal$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newCotaCarrier:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/MiuiOperatorCustomizedPolicy;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCotaInternal$2;->this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCotaInternal$2;->$newCotaCarrier:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCotaInternal$2;->this$0:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrierListeners:Ljava/util/ArrayList;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCotaInternal$2;->$newCotaCarrier:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$CotaCarrierInfoListener;

    .line 22
    check-cast v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 24
    iput-object p0, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->cotaCarrier:Ljava/lang/String;

    .line 26
    const-string v2, "persist.sys.carrier.name"

    .line 28
    const-string v3, ""

    .line 30
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 35
    iput-object v2, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->carrierName:Ljava/lang/String;

    .line 36
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->getCarrierSupported()Z

    .line 38
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->setListening(Z)V

    .line 42
    iget-object v2, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->bgHandler:Landroid/os/Handler;

    .line 45
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->updateRunnable:Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateRunnable$1;

    .line 47
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    return-void
    .line 56
.end method
