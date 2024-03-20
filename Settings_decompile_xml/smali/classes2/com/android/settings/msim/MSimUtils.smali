.class public Lcom/android/settings/msim/MSimUtils;
.super Lcom/android/settings/MiuiUtils;
.source "MSimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/msim/MSimUtils$SubscriptionInfoComparable;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIM_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    sput v0, Lcom/android/settings/msim/MSimUtils;->DEFAULT_SIM_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/MiuiUtils;-><init>()V

    return-void
.end method

.method public static getAvailableSubscriptionInfoBySlot(I)Lmiui/telephony/SubscriptionInfo;
    .locals 1

    .line 240
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/msim/MSimUtils;->getSubscriptionInfoBySlot(Ljava/util/List;I)Lmiui/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getCommonFeatures()I
    .locals 2

    const-string/jumbo v0, "ro.vendor.radio.features_common"

    const/4 v1, 0x0

    .line 244
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSubscriptionInfoBySlot(Ljava/util/List;I)Lmiui/telephony/SubscriptionInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;I)",
            "Lmiui/telephony/SubscriptionInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 231
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 232
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static isIccCardActivated(I)Z
    .locals 0

    .line 223
    invoke-static {p0}, Lcom/android/settings/msim/MSimUtils;->getAvailableSubscriptionInfoBySlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 224
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSmartDualSimSwitchSupported()Z
    .locals 1

    .line 253
    invoke-static {}, Lcom/android/settings/msim/MSimUtils;->getCommonFeatures()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isViceSlotActivated()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 214
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 215
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 216
    invoke-static {v1}, Lcom/android/settings/msim/MSimUtils;->isIccCardActivated(I)Z

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public addSimLockPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 6

    .line 54
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    .line 55
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 56
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 57
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 61
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    invoke-static {p2, v2}, Lcom/android/settings/security/VirtualSimUtils;->isVirtualSim(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 69
    :cond_2
    new-instance p1, Lcom/android/settings/msim/MSimUtils$SubscriptionInfoComparable;

    invoke-direct {p1}, Lcom/android/settings/msim/MSimUtils$SubscriptionInfoComparable;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    .line 71
    new-instance v1, Landroidx/preference/Preference;

    invoke-direct {v1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$IccLockSettingsActivity"

    .line 74
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 76
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 77
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 79
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-virtual {v2, v4}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 81
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    invoke-virtual {v2, v4}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v3, 0x0

    .line 85
    :cond_4
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget v0, Lcom/android/settings/R$string;->sim_radio_off:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public getSimSlotList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    .line 97
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getSubscriptionInfoComparable()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance p0, Lcom/android/settings/msim/MSimUtils$SubscriptionInfoComparable;

    invoke-direct {p0}, Lcom/android/settings/msim/MSimUtils$SubscriptionInfoComparable;-><init>()V

    return-object p0
.end method

.method public hasDualSim(Landroid/content/Context;)Z
    .locals 2

    .line 169
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 170
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 171
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method
