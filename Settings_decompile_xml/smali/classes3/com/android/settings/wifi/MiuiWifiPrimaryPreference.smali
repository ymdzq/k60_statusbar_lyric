.class public Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiWifiPrimaryPreference.java"


# instance fields
.field private mBand:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mEasyTetherDeviceName:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mEasyTetherDeviceName:Ljava/lang/String;

    .line 26
    sget p2, Lcom/android/settings/R$layout;->wifi_primary_preference:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 27
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mBand:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mEasyTetherDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mTitle:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mBand:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mBand:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->band_wifi_24g:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mBand:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mBand:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$drawable;->band_wifi_5g:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 75
    :cond_5
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mBand:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 33
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    sget v0, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mTitle:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/android/settings/R$id;->wifi_band:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mBand:Landroid/widget/ImageView;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->updateUI()V

    return-void
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 46
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->mEasyTetherDeviceName:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->updateUI()V

    return-void
.end method
