.class public Lcom/android/settings/wifi/WpsFragment;
.super Lcom/android/settings/BaseFragment;
.source "WpsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WpsFragment$State;,
        Lcom/android/settings/wifi/WpsFragment$WpsListener;
    }
.end annotation


# instance fields
.field private mCenterButton:Landroid/widget/Button;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mIsWpsSetupFinish:Z

.field private mPin:Ljava/lang/String;

.field private mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryButton:Landroid/widget/Button;

.field mState:Lcom/android/settings/wifi/WpsFragment$State;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTimeoutBar:Lmiuix/androidbasewidget/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsIndictor:Landroid/widget/ImageView;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

.field private mWpsSetup:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCenterButton(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mCenterButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/wifi/WpsFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPin(Lcom/android/settings/wifi/WpsFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mPin:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/android/settings/wifi/WpsFragment;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryButton(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mRetryButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummaryText(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mSummaryText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutBar(Lcom/android/settings/wifi/WpsFragment;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mTimeoutBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWpsIndictor(Lcom/android/settings/wifi/WpsFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsIndictor:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPin(Lcom/android/settings/wifi/WpsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/WpsFragment;->mPin:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReceiver(Lcom/android/settings/wifi/WpsFragment;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEvent(Lcom/android/settings/wifi/WpsFragment;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsFragment;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsFragment;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstop(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsFragment;->stop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WpsFragment;->updateState(Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSummaryText(Lcom/android/settings/wifi/WpsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsFragment;->updateSummaryText()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    .line 69
    sget-object v0, Lcom/android/settings/wifi/WpsFragment$State;->WPS_INIT:Lcom/android/settings/wifi/WpsFragment$State;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mState:Lcom/android/settings/wifi/WpsFragment$State;

    return-void
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "networkInfo"

    .line 259
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 261
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 262
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WpsFragment;->mState:Lcom/android/settings/wifi/WpsFragment$State;

    sget-object p2, Lcom/android/settings/wifi/WpsFragment$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsFragment$State;

    if-ne p1, p2, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsFragment;->wpsConnected()V

    :cond_0
    return-void
.end method

.method private start()V
    .locals 8

    .line 143
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mTimer:Ljava/util/Timer;

    .line 144
    new-instance v3, Lcom/android/settings/wifi/WpsFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WpsFragment$3;-><init>(Lcom/android/settings/wifi/WpsFragment;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WpsFragment;->mTimerTask:Ljava/util/TimerTask;

    .line 156
    iget-object v2, p0, Lcom/android/settings/wifi/WpsFragment;->mTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 158
    new-instance v0, Lcom/android/settings/wifi/WpsFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsFragment$4;-><init>(Lcom/android/settings/wifi/WpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WpsFragment;->mFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/wifi/WpsFragment;->mIsWpsSetupFinish:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsFragment;->wpsConnected()V

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 170
    iget v1, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsSetup:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 171
    iget-object v1, p0, Lcom/android/settings/wifi/WpsFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    :goto_0
    return-void
.end method

.method private stop()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mState:Lcom/android/settings/wifi/WpsFragment$State;

    sget-object v1, Lcom/android/settings/wifi/WpsFragment$State;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsFragment$State;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 182
    iput-object v2, p0, Lcom/android/settings/wifi/WpsFragment;->mTimer:Ljava/util/Timer;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 187
    iput-object v2, p0, Lcom/android/settings/wifi/WpsFragment;->mTimerTask:Ljava/util/TimerTask;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    iput-object v2, p0, Lcom/android/settings/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    return-void
.end method

.method private updateState(Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V
    .locals 2

    .line 203
    iput-object p1, p0, Lcom/android/settings/wifi/WpsFragment;->mState:Lcom/android/settings/wifi/WpsFragment$State;

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WpsFragment$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/WpsFragment$5;-><init>(Lcom/android/settings/wifi/WpsFragment;Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSummaryText()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mPin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mSummaryText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_wps_onstart_pin:I

    .line 286
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WpsFragment;->mPin:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 285
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsIndictor:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mSummaryText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_wps_onstart_pbc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object p0, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsIndictor:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private wpsConnected()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_0
    sget v1, Lcom/android/settings/R$string;->wifi_wps_connected:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 278
    iput-boolean v1, p0, Lcom/android/settings/wifi/WpsFragment;->mIsWpsSetupFinish:Z

    .line 279
    sget-object v1, Lcom/android/settings/wifi/WpsFragment$State;->CONNECTED:Lcom/android/settings/wifi/WpsFragment$State;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WpsFragment;->updateState(Lcom/android/settings/wifi/WpsFragment$State;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 97
    sget p0, Lcom/android/settings/R$layout;->wifi_wps:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 80
    iput v1, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsSetup:I

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "wps_setup"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsSetup:I

    .line 84
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 86
    new-instance v0, Lcom/android/settings/wifi/WpsFragment$WpsListener;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsFragment$WpsListener;-><init>(Lcom/android/settings/wifi/WpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WpsFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 88
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "wps_setup_finish"

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WpsFragment;->mIsWpsSetupFinish:Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "wps_setup_finish"

    .line 296
    iget-boolean v1, p0, Lcom/android/settings/wifi/WpsFragment;->mIsWpsSetupFinish:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsFragment;->stop()V

    .line 199
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    sget p2, Lcom/android/settings/R$id;->wps_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsFragment;->mSummaryText:Landroid/widget/TextView;

    .line 106
    sget p2, Lcom/android/settings/R$id;->indictor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsFragment;->mWpsIndictor:Landroid/widget/ImageView;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsFragment;->updateSummaryText()V

    .line 108
    sget p2, Lcom/android/settings/R$id;->wps_timeout_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsFragment;->mTimeoutBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v0, 0x78

    .line 109
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 110
    iget-object p2, p0, Lcom/android/settings/wifi/WpsFragment;->mTimeoutBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    sget p2, Lcom/android/settings/R$id;->wps_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsFragment;->mProgressBar:Lmiuix/androidbasewidget/widget/ProgressBar;

    const/16 v0, 0x8

    .line 113
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    sget p2, Lcom/android/settings/R$id;->center_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/WpsFragment;->mCenterButton:Landroid/widget/Button;

    .line 116
    new-instance v0, Lcom/android/settings/wifi/WpsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WpsFragment$1;-><init>(Lcom/android/settings/wifi/WpsFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget p2, Lcom/android/settings/R$id;->retry_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/WpsFragment;->mRetryButton:Landroid/widget/Button;

    .line 124
    new-instance p2, Lcom/android/settings/wifi/WpsFragment$2;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/WpsFragment$2;-><init>(Lcom/android/settings/wifi/WpsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsFragment;->start()V

    return-void
.end method
