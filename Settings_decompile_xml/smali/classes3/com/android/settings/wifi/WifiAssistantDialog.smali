.class public Lcom/android/settings/wifi/WifiAssistantDialog;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "WifiAssistantDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCommandMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mUserCommand:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/android/settings/wifi/WifiAssistantDialog;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mUserCommand:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mCommandMapping:Ljava/util/Map;

    return-void
.end method

.method private buildButton(Landroid/widget/LinearLayout;III)V
    .locals 1

    .line 190
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(I)V

    .line 193
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mCommandMapping:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createDialog(I)V
    .locals 7

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 142
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mCommandMapping:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiAssistantDialog -> createDialog* , candidateType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", hasCandidateWifi: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasCandidateData: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "WifiAssistantDialog"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v4, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p1, p0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 149
    sget v4, Lcom/android/settings/R$string;->wifi_assistant_confirm_connection_title:I

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 150
    sget v4, Lcom/android/settings/R$layout;->wifi_assistant_no_network:I

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 152
    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 153
    sget v5, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 155
    sget v0, Lcom/android/settings/R$string;->wifi_assistant_explicitly_confirm_wifi_message:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 156
    sget v0, Lcom/android/settings/R$id;->wifi_candidate:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_switch_data:I

    invoke-direct {p0, v4, v0, v3, v6}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    .line 158
    sget v0, Lcom/android/settings/R$id;->wifi_positive:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_switch_wifi:I

    invoke-direct {p0, v4, v0, v3, v5}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    .line 160
    sget v0, Lcom/android/settings/R$id;->wifi_negative:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_keep_connection:I

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 163
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAssistantDialog;->isSlaveWifiConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 164
    sget v0, Lcom/android/settings/R$string;->wifi_assistant_explicitly_confirm_wifi_message:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 165
    sget v0, Lcom/android/settings/R$id;->wifi_positive:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_switch_wifi:I

    invoke-direct {p0, v4, v0, v3, v5}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    .line 167
    sget v0, Lcom/android/settings/R$id;->wifi_negative:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_keep_connection:I

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 170
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAssistantDialog;->getCurrentWifiSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 171
    sget v0, Lcom/android/settings/R$id;->wifi_positive:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_switch_data:I

    invoke-direct {p0, v4, v0, v3, v6}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    .line 173
    sget v0, Lcom/android/settings/R$id;->wifi_negative:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_keep_connection:I

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    goto :goto_2

    .line 176
    :cond_4
    sget v0, Lcom/android/settings/R$string;->wifi_assistant_explicitly_confirm_disconnect:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 177
    sget v0, Lcom/android/settings/R$id;->wifi_positive:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_disconnect:I

    const/4 v5, 0x4

    invoke-direct {p0, v4, v0, v3, v5}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    .line 179
    sget v0, Lcom/android/settings/R$id;->wifi_negative:I

    sget v3, Lcom/android/settings/R$string;->wifi_assistant_keep_connection:I

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/android/settings/wifi/WifiAssistantDialog;->buildButton(Landroid/widget/LinearLayout;III)V

    .line 183
    :goto_2
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 185
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 186
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getCurrentWifiSsid()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSlaveWifiConnected()Z
    .locals 0

    .line 198
    invoke-static {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mCommandMapping:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mUserCommand:I

    const-string v0, "WifiAssistantDialog"

    if-gtz p1, :cond_0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, unknown command: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mUserCommand:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, command: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mUserCommand:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mUserCommand:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1, v0, v0}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    goto :goto_0

    .line 230
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v2, v1, v0}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 232
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_4

    .line 233
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 234
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 248
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 65
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "WifiAssistantDialog"

    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.action.PROMPT_UNVALIDATED"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "netId"

    const/4 v2, -0x1

    .line 72
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "candidate"

    const/4 v3, 0x0

    .line 73
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v2, " | "

    if-gez v1, :cond_1

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid network id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 80
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate, network id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "wifi"

    .line 81
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 83
    invoke-virtual {v2}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 84
    iput-object v2, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetwork:Landroid/net/Network;

    const-string v1, "connectivity"

    .line 90
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mConnManager:Landroid/net/ConnectivityManager;

    .line 91
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 92
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Lcom/android/settings/wifi/WifiAssistantDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiAssistantDialog$1;-><init>(Lcom/android/settings/wifi/WifiAssistantDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 114
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiAssistantDialog;->createDialog(I)V

    return-void

    .line 93
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not connected: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 86
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t determine network: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 68
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnExpected intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 135
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mUserCommand:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiAssistantDialog"

    .line 214
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAssistantDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    .line 126
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
