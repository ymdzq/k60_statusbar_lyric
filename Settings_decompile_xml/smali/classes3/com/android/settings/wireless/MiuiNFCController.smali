.class public Lcom/android/settings/wireless/MiuiNFCController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MiuiNFCController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final KEY_MIUI_NFC:Ljava/lang/String; = "miui_nfc"

.field private static final TAG:Ljava/lang/String; = "MiuiNFCController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPreference:Landroidx/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/wireless/MiuiNFCController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    new-instance p2, Lcom/android/settings/wireless/MiuiNFCController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/wireless/MiuiNFCController$1;-><init>(Lcom/android/settings/wireless/MiuiNFCController;)V

    iput-object p2, p0, Lcom/android/settings/wireless/MiuiNFCController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNFCController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 54
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNFCController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/wireless/MiuiNFCController;->isNfcAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNFCController;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    .line 60
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNFCController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MiuiNFCController: mNfcAdapter = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiNFCController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "miui_nfc"

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wireless/MiuiNFCController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wireless/MiuiNFCController;->isNfcAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "miui_nfc"

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
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->accessibility_feature_state_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 87
    sget p0, Lcom/android/settings/R$string;->accessibility_feature_state_on:I

    goto :goto_0

    .line 88
    :cond_1
    sget p0, Lcom/android/settings/R$string;->accessibility_feature_state_off:I

    .line 85
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isNfcAvailable()Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowMiuiNFC()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

.method public onStart()V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wireless/MiuiNFCController;->isNfcAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wireless/MiuiNFCController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wireless/MiuiNFCController;->isNfcAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wireless/MiuiNFCController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
