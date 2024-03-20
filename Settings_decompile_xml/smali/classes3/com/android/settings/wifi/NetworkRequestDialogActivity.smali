.class public Lcom/android/settings/wifi/NetworkRequestDialogActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "NetworkRequestDialogActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;


# static fields
.field private static TAG:Ljava/lang/String; = "NetworkRequestDialogActivity"


# instance fields
.field mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

.field private final mHandler:Landroid/os/Handler;

.field mIsSpecifiedSsid:Z

.field private mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

.field mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field mShowingErrorDialog:Z

.field private mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 161
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    .line 103
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSingleSsidRequestDialog(Ljava/lang/String;Z)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DIALOG_REQUEST_SSID"

    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DIALOG_IS_TRYAGAIN"

    .line 121
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p2, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method dismissDialogs()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 130
    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 134
    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method public onAbort()V
    .locals 1

    .line 214
    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->ABORT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    .line 298
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onClickConnectButton()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    .line 266
    sget v0, Lcom/android/settings/R$string;->network_connection_connecting_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClickRescanButton()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    iput-boolean v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    .line 277
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 279
    sget v0, Lcom/android/settings/R$string;->network_connection_searching_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 286
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.android.settings.wifi.extra.REQUEST_IS_FOR_SINGLE_NETWORK"

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    .line 87
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz p1, :cond_1

    .line 88
    sget p1, Lcom/android/settings/R$string;->network_connection_searching_message:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 95
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_1

    .line 229
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/WifiUtils;->getWifiConfig(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    .line 230
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 231
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showSingleSsidRequestDialog(Ljava/lang/String;Z)V

    :cond_1
    return-void

    .line 236
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    if-eqz p0, :cond_3

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onMatch(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    .line 158
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 140
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 142
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerNetworkRequestMatchCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_0

    .line 203
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    if-eqz p0, :cond_1

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V

    :cond_1
    return-void
.end method

.method public onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 254
    sget p1, Lcom/android/settings/R$string;->network_connection_connect_failure:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, -0x1

    .line 256
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 257
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 243
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 244
    sget p1, Lcom/android/settings/R$string;->network_connection_connect_successful:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, -0x1

    .line 246
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 247
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->dismissDialogs()V

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    move-result-object v1

    .line 191
    iget-object v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->setRejectCallback(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V

    .line 192
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DIALOG_ERROR_TYPE"

    .line 193
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 194
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 195
    sget-object p1, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    :cond_2
    :goto_0
    return-void
.end method
