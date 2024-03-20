.class public Lcom/android/settings/nfc/NfcPaymentPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NfcPaymentPreferenceController.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/nfc/NfcPaymentPreference$Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "nfc_payment"

.field private static final TAG:Ljava/lang/String; = "NfcPaymentController"


# instance fields
.field private labels:[Ljava/lang/String;

.field private final mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mPreference:Lmiuix/preference/DropDownPreference;

.field private mSettingsButtonView:Landroid/widget/ImageView;

.field private selectedPosition:I

.field private summaries:[Ljava/lang/String;

.field private valueIndex:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPaymentBackend(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    new-instance p2, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;-><init>(Lcom/android/settings/nfc/NfcPaymentPreferenceController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcPaymentPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getLabels()[Ljava/lang/String;
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 237
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->nfc_payment_default_not_set:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 238
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v2, p0, :cond_1

    .line 239
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz p0, :cond_0

    .line 240
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 241
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSelectAppIndex()I
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 277
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 279
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 280
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 281
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    iget-object v4, p0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    return v1
.end method

.method private getSummaries()[Ljava/lang/String;
    .locals 4

    .line 251
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 252
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 253
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    .line 254
    aput-object v1, v0, v2

    .line 255
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 256
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->description:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 258
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValueIndex([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 267
    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    new-array p1, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V
    .locals 1

    .line 409
    iget-boolean v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method private updateSettingsVisibility()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 224
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->getLabels()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->labels:[Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->getSummaries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->summaries:[Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->labels:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->getValueIndex([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->valueIndex:[Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->getSelectAppIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->selectedPosition:I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    .line 125
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->labels:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->summaries:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v2, v0

    array-length v1, v1

    if-ne v2, v1, :cond_1

    .line 126
    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->valueIndex:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    sget-boolean p1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->summaries:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setSummaries([Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->getSelectAppIndex()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 135
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    iget p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->selectedPosition:I

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 106
    :cond_2
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 107
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x0

    :cond_3
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 143
    sget v0, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mSettingsButtonView:Landroid/widget/ImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object p1, p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 196
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NfcPaymentController"

    const-string p1, "Settings activity not found."

    .line 200
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onPaymentAppsChanged()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "nfc_payment"

    .line 207
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 209
    iget-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p2}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 211
    iget-object p0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    .line 213
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->makeDefault(Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    :goto_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/PaymentBackend;->unregisterCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    :cond_0
    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 159
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController$NfcPaymentAdapter;->updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPaymentPreferenceController;->updateSettingsVisibility()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
