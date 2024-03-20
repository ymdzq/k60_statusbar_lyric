.class public Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "MiuiMiscBluetoothPreference.java"


# instance fields
.field private mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Z)V

    .line 38
    new-instance v0, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference$1;-><init>(Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;->mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 14
    sget v0, Lcom/android/settings/R$layout;->preference_bt_rarely_used:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 15
    sget v0, Lcom/android/settings/R$drawable;->ic_bt_rarely_used:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 17
    sget v0, Lcom/android/settings/R$string;->bt_rarely_used_device_title:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "misc_devices"

    .line 19
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/16 p1, 0x64

    .line 20
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 21
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;->mPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 1

    .line 31
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method protected setDeviceCount(I)V
    .locals 2

    .line 25
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bt_rarely_used_device_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
