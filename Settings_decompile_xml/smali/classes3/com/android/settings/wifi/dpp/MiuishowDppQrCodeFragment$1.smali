.class Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;
.super Landroid/net/wifi/EasyConnectStatusCallback;
.source "MiuishowDppQrCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-direct {p0}, Landroid/net/wifi/EasyConnectStatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootstrapUriGenerated(Landroid/net/Uri;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$fgetTAG(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootstrapUriGenerated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3001

    .line 133
    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$fgetmDppHandler(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onConfiguratorSuccess(I)V
    .locals 2

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$fgetTAG(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfiguratorSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnrolleeSuccess(I)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$fgetTAG(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrolleeSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dpp_connect_success:I

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 98
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "dpp_network_id"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 2

    .line 119
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$fgetTAG(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)V"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment$1;->this$0:Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;->-$$Nest$fgetTAG(Lcom/android/settings/wifi/dpp/MiuishowDppQrCodeFragment;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(I)V
    .locals 0

    .line 0
    return-void
.end method
