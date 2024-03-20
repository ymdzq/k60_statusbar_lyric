.class public Lcom/android/settings/CarrierNameSettings;
.super Lcom/android/settings/BaseEditFragment;
.source "CarrierNameSettings.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierView:[Lmiuix/androidbasewidget/widget/StateEditText;

.field private mContext:Landroid/content/Context;

.field private mHasMobileDataFeature:Z

.field private mParent:Landroid/view/ViewGroup;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneCount:I

.field private mSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private savedData:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSubscriptionManager(Lcom/android/settings/CarrierNameSettings;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/CarrierNameSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSubInfos(Lcom/android/settings/CarrierNameSettings;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/CarrierNameSettings;->mSubInfos:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCarriersState(Lcom/android/settings/CarrierNameSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/CarrierNameSettings;->updateCarriersState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 106
    new-instance v0, Lcom/android/settings/CarrierNameSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CarrierNameSettings$1;-><init>(Lcom/android/settings/CarrierNameSettings;)V

    iput-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateCarrier(Lmiuix/androidbasewidget/widget/StateEditText;ILandroid/telephony/SubscriptionInfo;)V
    .locals 4

    .line 138
    iget v0, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->status_bar_settings_carrier_sim:I

    add-int/lit8 v3, p2, 0x1

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 139
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/androidbasewidget/widget/StateEditText;->setLabel(Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/CarrierNameSettings;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 144
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v0, 0x32

    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setMaxEms(I)V

    .line 146
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-eqz p3, :cond_2

    .line 149
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 151
    :cond_2
    sget p3, Lcom/android/settings/R$string;->status_bar_carrier_settings_no_sim_card:I

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHint(I)V

    :goto_1
    const-string p3, ""

    if-nez v1, :cond_3

    .line 155
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-ltz p2, :cond_4

    .line 156
    iget v0, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    if-ge p2, v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->savedData:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_carrier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_bar_custom_carrier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-static {p0, p2, p3}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p0, :cond_4

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateCarriersState()V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mSubInfos:Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_0
    iget v2, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    if-ge v1, v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/android/settings/CarrierNameSettings;->mCarrierView:[Lmiuix/androidbasewidget/widget/StateEditText;

    if-eqz v2, :cond_3

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/settings/CarrierNameSettings;->mSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_2

    .line 126
    iget-object v5, p0, Lcom/android/settings/CarrierNameSettings;->mSubInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-ne v6, v1, :cond_1

    move-object v3, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/android/settings/CarrierNameSettings;->mCarrierView:[Lmiuix/androidbasewidget/widget/StateEditText;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/settings/CarrierNameSettings;->updateCarrier(Lmiuix/androidbasewidget/widget/StateEditText;ILandroid/telephony/SubscriptionInfo;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public doInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 69
    sget p3, Lcom/android/settings/R$layout;->status_bar_settings_carrier:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    sget p3, Lcom/android/settings/R$id;->carriers_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/settings/CarrierNameSettings;->mParent:Landroid/view/ViewGroup;

    .line 71
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/settings/CarrierNameSettings;->mParent:Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->pad_custom_carrier_page_margin_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 72
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 76
    iget-object p3, p0, Lcom/android/settings/CarrierNameSettings;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/settings/CarrierNameSettings;->mParent:Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->pad_custom_carrier_page_margin_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 76
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 81
    :cond_0
    iget p3, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    new-array p3, p3, [Lmiuix/androidbasewidget/widget/StateEditText;

    iput-object p3, p0, Lcom/android/settings/CarrierNameSettings;->mCarrierView:[Lmiuix/androidbasewidget/widget/StateEditText;

    move p3, v0

    .line 82
    :goto_0
    iget v1, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    if-ge p3, v1, :cond_1

    .line 83
    sget v1, Lcom/android/settings/R$layout;->status_bar_settings_custom_carrier:I

    iget-object v2, p0, Lcom/android/settings/CarrierNameSettings;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/settings/CarrierNameSettings;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    iget-object v2, p0, Lcom/android/settings/CarrierNameSettings;->mCarrierView:[Lmiuix/androidbasewidget/widget/StateEditText;

    sget v3, Lcom/android/settings/R$id;->edit_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/androidbasewidget/widget/StateEditText;

    aput-object v1, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 93
    sget v0, Lcom/android/settings/R$string;->custom_carrier_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mPhone:Landroid/telephony/TelephonyManager;

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/CarrierNameSettings;->mHasMobileDataFeature:Z

    .line 53
    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 55
    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/CarrierNameSettings;->savedData:Landroid/os/Bundle;

    goto :goto_0

    .line 59
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/android/settings/CarrierNameSettings;->savedData:Landroid/os/Bundle;

    .line 61
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/CarrierNameSettings;->mHasMobileDataFeature:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    if-nez p1, :cond_3

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    :cond_3
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/CarrierNameSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroyView()V

    return-void
.end method

.method public onSave(Landroid/os/Bundle;)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 176
    :goto_0
    iget v1, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status_bar_custom_carrier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/CarrierNameSettings;->mCarrierView:[Lmiuix/androidbasewidget/widget/StateEditText;

    aget-object v3, v3, v0

    .line 179
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 187
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 189
    :goto_0
    iget v1, p0, Lcom/android/settings/CarrierNameSettings;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/settings/CarrierNameSettings;->mCarrierView:[Lmiuix/androidbasewidget/widget/StateEditText;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_carrier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CarrierNameSettings;->mCarrierView:[Lmiuix/androidbasewidget/widget/StateEditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/android/settings/CarrierNameSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/CarrierNameSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/android/settings/CarrierNameSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/CarrierNameSettings;->mSubInfos:Ljava/util/List;

    .line 103
    invoke-direct {p0}, Lcom/android/settings/CarrierNameSettings;->updateCarriersState()V

    return-void
.end method
