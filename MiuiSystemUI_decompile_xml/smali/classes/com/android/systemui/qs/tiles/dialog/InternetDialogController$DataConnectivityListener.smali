.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 5
    move-result v0

    .line 8
    iput-boolean v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 11
    iget-boolean v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    .line 17
    if-nez p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 22
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 28
    iget-boolean p2, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCanConfigWifi:Z

    .line 30
    if-eqz p2, :cond_1

    .line 32
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mAccessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 34
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->scanForAccessPoints()V

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 41
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    .line 43
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 45
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance p2, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 49
    const/4 v0, 0x5

    .line 51
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
    .line 58
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$DataConnectivityListener;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mHasEthernet:Z

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->mCallback:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$InternetDialogCallback;

    .line 7
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;

    .line 13
    const/4 v1, 0x3

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
    .line 22
.end method
