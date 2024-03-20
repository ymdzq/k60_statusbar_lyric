.class public Lcom/android/settings/wifi/AddNetworkFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AddNetworkFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase2;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final CANCEL_BUTTON_ID:I = 0x102001a

.field static final SSID_SCANNER_BUTTON_ID:I

.field static final SUBMIT_BUTTON_ID:I = 0x1020019


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mSubmitBtn:Landroid/widget/Button;

.field private mUIController:Lcom/android/settings/wifi/WifiConfigController2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget v0, Lcom/android/settings/R$id;->ssid_scanner_button:I

    sput v0, Lcom/android/settings/wifi/AddNetworkFragment;->SSID_SCANNER_BUTTON_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private successfullyFinish(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:save_when_submit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 208
    new-instance v1, Lcom/android/settings/wifi/AddNetworkFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/AddNetworkFragment$1;-><init>(Lcom/android/settings/wifi/AddNetworkFragment;Landroid/app/Activity;)V

    .line 227
    const-class p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 229
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "wifi_config_key"

    .line 230
    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 231
    invoke-virtual {v0, p1, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 232
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleSubmitAction()V

    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    return-object p0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x614

    return p0
.end method

.method public getMode()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    return-object p0
.end method

.method handleCancelAction()V
    .locals 1

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method handleSubmitAction()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AddNetworkFragment;->successfullyFinish(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 131
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const-string p1, "key_wifi_configuration"

    .line 137
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AddNetworkFragment;->successfullyFinish(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020019    # @android:id/button1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleSubmitAction()V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102001a    # @android:id/button2

    if-ne v0, v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleCancelAction()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/wifi/AddNetworkFragment;->SSID_SCANNER_BUTTON_ID:I

    if-ne v0, v1, :cond_2

    .line 119
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 77
    sget p3, Lcom/android/settings/R$layout;->wifi_add_network_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102001b    # @android:id/button3

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 81
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const p2, 0x1020019    # @android:id/button1

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    const p2, 0x102001a    # @android:id/button2

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    .line 86
    sget p2, Lcom/android/settings/wifi/AddNetworkFragment;->SSID_SCANNER_BUTTON_ID:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    .line 87
    iget-object p3, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p3, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance p2, Lcom/android/settings/wifi/WifiConfigController2;

    const/4 p3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->getMode()I

    move-result v0

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/android/settings/wifi/WifiConfigController2;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase2;Landroid/view/View;Lcom/android/wifitrackerlib/WifiEntry;I)V

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController2;

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController2;->showSecurityFields(ZZ)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 109
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController2;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
