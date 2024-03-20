.class public Lcom/android/settings/network/apn/ApnEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/apn/ApnEditor$ApnData;,
        Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;
    }
.end annotation


# static fields
.field static final APN_INDEX:I = 0x2

.field public static final APN_TYPES:[Ljava/lang/String;

.field static final CARRIER_ENABLED_INDEX:I = 0x11

.field static final MCC_INDEX:I = 0x9

.field static final MENU_DELETE:I = 0x1

.field static final MNC_INDEX:I = 0xa

.field static final NAME_INDEX:I = 0x1

.field static final PROTOCOL_INDEX:I = 0x10

.field static final ROAMING_PROTOCOL_INDEX:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field static final TYPE_INDEX:I = 0xf

.field static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;

.field private static final sUIConfigurableItems:[Ljava/lang/String;


# instance fields
.field mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

.field mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mBearerInitialVal:I

.field mBearerMulti:Landroidx/preference/MultiSelectListPreference;

.field mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

.field private mCarrierUri:Landroid/net/Uri;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field mDefaultApnProtocol:Ljava/lang/String;

.field mDefaultApnRoamingProtocol:Ljava/lang/String;

.field mDefaultApnTypes:[Ljava/lang/String;

.field private mIsAddApnAllowed:Z

.field private mIsCarrierIdApn:Z

.field mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field private mNewApn:Z

.field mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

.field private mReadOnlyApn:Z

.field private mReadOnlyApnFields:[Ljava/lang/String;

.field mReadOnlyApnTypes:[Ljava/lang/String;

.field mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field private mSubId:I

.field mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;


# direct methods
.method public static synthetic $r8$lambda$Qmj-c5tCKDlMcgI3mPr9cCI6IS4(Lcom/android/settings/network/apn/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/apn/ApnEditor;->lambda$updateApnDataToDatabase$0(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 27

    .line 75
    const-class v0, Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "default"

    const-string/jumbo v2, "mms"

    const-string/jumbo v3, "supl"

    const-string v4, "dun"

    const-string v5, "hipri"

    const-string v6, "fota"

    const-string v7, "ims"

    const-string v8, "cbs"

    const-string v9, "ia"

    const-string v10, "emergency"

    const-string/jumbo v11, "mcx"

    const-string/jumbo v12, "xcap"

    .line 213
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    const-string v1, "_id"

    const-string/jumbo v2, "name"

    const-string v3, "apn"

    const-string/jumbo v4, "proxy"

    const-string/jumbo v5, "port"

    const-string/jumbo v6, "user"

    const-string/jumbo v7, "server"

    const-string/jumbo v8, "password"

    const-string/jumbo v9, "mmsc"

    const-string/jumbo v10, "mcc"

    const-string/jumbo v11, "mnc"

    const-string/jumbo v12, "numeric"

    const-string/jumbo v13, "mmsproxy"

    const-string/jumbo v14, "mmsport"

    const-string v15, "authtype"

    const-string/jumbo v16, "type"

    const-string/jumbo v17, "protocol"

    const-string v18, "carrier_enabled"

    const-string v19, "bearer"

    const-string v20, "bearer_bitmask"

    const-string/jumbo v21, "roaming_protocol"

    const-string/jumbo v22, "mvno_type"

    const-string/jumbo v23, "mvno_match_data"

    const-string v24, "edited"

    const-string/jumbo v25, "user_editable"

    const-string v26, "carrier_id"

    .line 230
    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    const-string/jumbo v1, "name"

    const-string v2, "apn"

    const-string/jumbo v3, "proxy"

    const-string/jumbo v4, "port"

    const-string/jumbo v5, "user"

    const-string/jumbo v6, "server"

    const-string/jumbo v7, "password"

    const-string/jumbo v8, "mmsc"

    const-string/jumbo v9, "mmsproxy"

    const-string/jumbo v10, "mmsport"

    const-string v11, "authtype"

    const-string/jumbo v12, "type"

    const-string/jumbo v13, "protocol"

    const-string v14, "carrier_enabled"

    const-string v15, "bearer"

    const-string v16, "bearer_bitmask"

    const-string/jumbo v17, "roaming_protocol"

    .line 259
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    return-void
.end method

.method private apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 484
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 488
    :cond_0
    invoke-static {p1}, Lcom/android/settings/network/apn/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 492
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, ","

    .line 493
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 495
    array-length p2, p1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v3, p1, v2

    .line 496
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "apnTypesMatch: true because match found for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    :cond_3
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string p1, "apnTypesMatch: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bearer_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 790
    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_0

    .line 793
    :try_start_0
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    .line 796
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 802
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 803
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static bitmaskHasTech(II)Z
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method private checkAllNoSet()Z
    .locals 2

    .line 1783
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1784
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1785
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1786
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1787
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1788
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1789
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1790
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 1791
    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 1792
    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1793
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1417
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private checkNullforMvnoValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1408
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->apn_not_set_for_mvno:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .line 1377
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1378
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1379
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    :cond_0
    return-void
.end method

.method private disableAllFields()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 595
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private disableFields([Ljava/lang/String;)V
    .locals 4

    .line 564
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 565
    invoke-direct {p0, v3}, Lcom/android/settings/network/apn/ApnEditor;->getPreferenceFromFieldName(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 567
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private disableFieldsForCarrieridApn()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 605
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private fieldValidate(Ljava/lang/String;)Z
    .locals 4

    .line 1457
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sUIConfigurableItems:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 1458
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1461
    :cond_1
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not configurable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private findIndexOfKey(Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    .line 1448
    :goto_0
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_1

    .line 1449
    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static formatInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 434
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 435
    invoke-static {p0}, Lcom/android/settings/network/apn/ApnEditor;->getCorrectDigitsFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private static getBitmaskForTech(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sub-int/2addr p0, v0

    shl-int p0, v0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static getCorrectDigitsFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "%02d"

    return-object p0

    :cond_0
    const-string p0, "%03d"

    return-object p0
.end method

.method private getEditableApnType([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1487
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1491
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    const-string v5, "ia"

    .line 1498
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "emergency"

    .line 1499
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ims"

    .line 1500
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "dun"

    .line 1501
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const-string v5, ","

    .line 1506
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1511
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPreferenceFromFieldName(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 2

    .line 512
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "authtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v0, "mmsport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v0, "proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v0, "port"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "mmsc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v0, "mnc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v0, "mcc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "apn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "server"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_e
    const-string/jumbo v0, "protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_f
    const-string/jumbo v0, "roaming_protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_10
    const-string v0, "bearer_bitmask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_11
    const-string v0, "bearer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_12
    const-string v0, "carrier_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_13
    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_14
    const-string/jumbo v0, "mvno_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 540
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    return-object p0

    .line 526
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 530
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 518
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 522
    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 538
    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 520
    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 514
    :pswitch_7
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 532
    :pswitch_8
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 536
    :pswitch_9
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 534
    :pswitch_a
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 516
    :pswitch_b
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 553
    :pswitch_c
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 524
    :pswitch_d
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 542
    :pswitch_e
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    return-object p0

    .line 544
    :pswitch_f
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    return-object p0

    .line 549
    :pswitch_10
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    return-object p0

    .line 546
    :pswitch_11
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

    return-object p0

    .line 528
    :pswitch_12
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-object p0

    .line 551
    :pswitch_13
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f4962d1 -> :sswitch_14
        -0x747b9085 -> :sswitch_13
        -0x61c86706 -> :sswitch_12
        -0x5307fc9f -> :sswitch_11
        -0x49581165 -> :sswitch_10
        -0x3df71002 -> :sswitch_f
        -0x3af57168 -> :sswitch_e
        -0x35fdd0bd -> :sswitch_d
        -0x1f00dbe7 -> :sswitch_c
        0x17a1f -> :sswitch_b
        0x1a58d -> :sswitch_a
        0x1a6e2 -> :sswitch_9
        0x3333f0 -> :sswitch_8
        0x337a8b -> :sswitch_7
        0x349881 -> :sswitch_6
        0x368f3a -> :sswitch_5
        0x36ebcb -> :sswitch_4
        0x65fca6e -> :sswitch_3
        0x46909dd4 -> :sswitch_2
        0x4889ba9b -> :sswitch_1
        0x556d58e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static hasAllApns([Ljava/lang/String;)Z
    .locals 6

    .line 457
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 461
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "*"

    .line 462
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 463
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "hasAllApns: true because apnList.contains(APN_TYPE_ALL)"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 466
    :cond_1
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 467
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 472
    :cond_3
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "hasAllApns: true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private initApnEditorUi()V
    .locals 2

    .line 1515
    sget v0, Lcom/android/settings/R$xml;->apn_editor:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 1517
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->apn_not_set:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    const-string v0, "apn_name"

    .line 1518
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_apn"

    .line 1519
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_http_proxy"

    .line 1520
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_http_port"

    .line 1521
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_user"

    .line 1522
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_server"

    .line 1523
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_password"

    .line 1524
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_mms_proxy"

    .line 1525
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_mms_port"

    .line 1526
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_mmsc"

    .line 1527
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_mcc"

    .line 1528
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_mnc"

    .line 1529
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "apn_type"

    .line 1530
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    const-string v0, "auth_type"

    .line 1531
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string v0, "apn_protocol"

    .line 1532
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string v0, "apn_roaming_protocol"

    .line 1533
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string v0, "carrier_enabled"

    .line 1536
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

    const-string v0, "bearer_multi"

    .line 1537
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/MultiSelectListPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    const-string/jumbo v0, "mvno_type"

    .line 1538
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string/jumbo v0, "mvno_match_data"

    .line 1539
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    return-void
.end method

.method private synthetic lambda$updateApnDataToDatabase$0(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1268
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t add a new apn to database "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 810
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 811
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return-object v3

    .line 816
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$array;->mvno_type_entries:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 817
    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 819
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string/jumbo v7, "mvno_match_data"

    .line 820
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 821
    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_c

    .line 822
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 823
    aget-object p1, v2, v0

    const-string v1, "SPN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 825
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 826
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 827
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object p1, v1

    .line 833
    :cond_4
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 835
    :cond_5
    aget-object p1, v2, v0

    const-string v1, "IMSI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_8

    .line 836
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 837
    invoke-virtual {p1, v4}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_6

    move-object v4, v1

    goto :goto_2

    .line 839
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-nez p1, :cond_7

    goto :goto_3

    .line 841
    :cond_7
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 842
    :goto_3
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 843
    :cond_8
    aget-object p1, v2, v0

    const-string v4, "GID"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 845
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 846
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 847
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object p1, v1

    .line 851
    :cond_9
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 852
    :cond_a
    aget-object p1, v2, v0

    const-string v4, "ICCID"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 853
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz p1, :cond_c

    .line 854
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMvnoMatchDataStr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_4

    .line 859
    :cond_b
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 864
    :cond_c
    :goto_4
    :try_start_0
    aget-object p0, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v3
.end method

.method private networkTypeToRilRidioTechnology(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/16 p0, 0x14

    return p0

    :pswitch_2
    const/16 p0, 0x13

    return p0

    :pswitch_3
    const/16 p0, 0x12

    return p0

    :pswitch_4
    const/16 p0, 0x11

    return p0

    :pswitch_5
    const/16 p0, 0x10

    return p0

    :pswitch_6
    const/16 p0, 0xf

    return p0

    :pswitch_7
    const/16 p0, 0xd

    return p0

    :pswitch_8
    const/16 p0, 0xe

    return p0

    :pswitch_9
    const/16 p0, 0xc

    return p0

    :pswitch_a
    const/16 p0, 0xb

    return p0

    :pswitch_b
    const/16 p0, 0xa

    return p0

    :pswitch_c
    const/16 p0, 0x9

    return p0

    :pswitch_d
    const/4 p0, 0x6

    return p0

    :pswitch_e
    const/16 p0, 0x8

    return p0

    :pswitch_f
    const/4 p0, 0x7

    return p0

    :pswitch_10
    const/4 p0, 0x5

    return p0

    :pswitch_11
    const/4 p0, 0x3

    return p0

    :pswitch_12
    const/4 p0, 0x2

    return p0

    :pswitch_13
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private protocolDescription(Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)Ljava/lang/String;
    .locals 1

    .line 770
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IPV4"

    .line 771
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "IP"

    .line 772
    :cond_0
    invoke-virtual {p2, p1}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return-object v0

    .line 776
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$array;->apn_protocol_entries:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 778
    :try_start_0
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private setAppData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1441
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->findIndexOfKey(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1443
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->setObject(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setCarrierCustomizedConfigToUi()V
    .locals 3

    .line 1592
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1593
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->getEditableApnType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1594
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1595
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1600
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 1601
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)Ljava/lang/String;

    move-result-object v0

    .line 1605
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1606
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 1607
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setDefaultData()V
    .locals 4

    const-string v0, "carrier_config"

    .line 1422
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1

    .line 1424
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "apn_default_values_strings_array"

    .line 1426
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1428
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1429
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1430
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1431
    invoke-direct {p0, v2}, Lcom/android/settings/network/apn/ApnEditor;->fieldValidate(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1432
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/network/apn/ApnEditor;->setAppData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setLifecycleForAllControllers()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    if-nez v0, :cond_0

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->setLifecycle(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 1384
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 1387
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p1, p0, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    const/16 v1, 0x2a

    .line 1389
    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1391
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 1385
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    return-object p0
.end method

.method private updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 1263
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/network/apn/ApnEditor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method fillUI(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 676
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_c

    .line 617
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v3, v2}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 619
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 620
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 621
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 622
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 623
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 626
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 627
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 628
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 629
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v7, 0xf

    invoke-virtual {v3, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 631
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p1, v6}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 632
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p1, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 634
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 635
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxySubscriptionMgr:Lcom/android/settings/network/ProxySubscriptionManager;

    iget v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 636
    invoke-virtual {p1, v5}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v5, v3

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-nez p1, :cond_1

    move-object p1, v3

    goto :goto_1

    .line 641
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p1

    .line 643
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 645
    iget-object v6, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v6, v5}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 646
    iget-object v6, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v6, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 647
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 648
    iput-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 651
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v5, 0xe

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v6, :cond_3

    .line 653
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v3, p1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_2

    .line 655
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 656
    sget-object v5, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operatorNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-boolean v5, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz v5, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "44020"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 658
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v4}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    goto :goto_2

    .line 660
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v3}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 667
    :goto_2
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_5

    .line 668
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const-string v3, "IPV4V6"

    invoke-virtual {p1, v3}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 669
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v3}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 671
    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 672
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 675
    :goto_3
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    move v3, v0

    :goto_4
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 676
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0x12

    invoke-virtual {p1, v3, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    .line 678
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 679
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, ""

    if-nez v1, :cond_7

    .line 681
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-nez v1, :cond_9

    const-string v1, "0"

    .line 682
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move v4, v2

    :goto_5
    if-eqz v1, :cond_9

    and-int/lit8 v5, v1, 0x1

    if-ne v5, v2, :cond_8

    .line 688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 695
    :cond_9
    :goto_6
    iget v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_a
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 701
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 702
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 703
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 704
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 705
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 706
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 708
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v1, v2}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 710
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 714
    :cond_c
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 715
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 716
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 717
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 718
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 719
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 720
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 721
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 722
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 724
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 725
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->formatInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 726
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 728
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 730
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 731
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1, p1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 733
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$array;->apn_auth_entries:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 734
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    aget-object p1, v1, p1

    invoke-virtual {v3, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 736
    :cond_d
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 738
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 741
    :goto_7
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 742
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 743
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 744
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    .line 745
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 744
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 747
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    .line 748
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 751
    :cond_e
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 752
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 753
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNullforMvnoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$bool;->config_allow_edit_carrier_enabled:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 758
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_8

    .line 760
    :cond_f
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_8
    return-void
.end method

.method getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/apn/ApnEditor$ApnData;
    .locals 6

    .line 1644
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1654
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    new-instance v0, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1644
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    .line 1658
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v0, :cond_2

    .line 1661
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get apnData from Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method protected getCarrierCustomizedConfig(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 1544
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v0, 0x0

    .line 1545
    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1546
    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 1547
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsAddApnAllowed:Z

    const-string v0, "carrier_config"

    .line 1550
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_4

    .line 1552
    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo v0, "read_only_apn_types_string_array"

    .line 1554
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1556
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: read only APN type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1558
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1557
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "read_only_apn_fields_string_array"

    .line 1560
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    const-string v0, "apn_settings_default_apn_types_string_array"

    .line 1563
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    .line 1566
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1567
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: default apn types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "apn.settings_default_protocol_string"

    .line 1570
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    .line 1572
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1573
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: default apn protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "apn.settings_default_roaming_protocol_string"

    .line 1576
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    .line 1578
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1579
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate: default apn roaming protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnRoamingProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "allow_adding_apns_bool"

    .line 1583
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsAddApnAllowed:Z

    if-nez p1, :cond_4

    .line 1585
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onCreate: not allow to add new APN"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0xd

    return p0
.end method

.method getUserEnteredApnType()Ljava/lang/String;
    .locals 3

    .line 1469
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1470
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1471
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*"

    .line 1472
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string/jumbo v0, "ro.miui.customized.region"

    const-string v1, ""

    .line 1474
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "es_telefonica"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1475
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1476
    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->getEditableApnType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1478
    :cond_2
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->APN_TYPES:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->getEditableApnType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1481
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserEnteredApnType: changed apn type to editable apn types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method isUserRestricted()Z
    .locals 3

    .line 1669
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1673
    :cond_0
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1674
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "User is not an admin"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v1, "no_config_mobile_networks"

    .line 1677
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1678
    sget-object p0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "User is not allowed to configure mobile network"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v0
.end method

.method public noModifyApn()Z
    .locals 5

    .line 1750
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1752
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->checkAllNoSet()Z

    move-result p0

    return p0

    .line 1754
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1757
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1760
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1761
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1762
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1763
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1764
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1765
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1766
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1767
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1768
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1769
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1770
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1771
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1772
    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xf

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 1773
    invoke-virtual {v2}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 1774
    invoke-virtual {v2}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x14

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

    .line 1775
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    const/16 v4, 0x11

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    xor-int/2addr v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 1776
    invoke-virtual {v2}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x15

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1777
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    move v1, v3

    .line 1779
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception p0

    .line 1754
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1779
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 315
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->isUserRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 317
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string v0, "This setting isn\'t available due to user restriction."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->setLifecycleForAllControllers()V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_1
    const-string/jumbo v1, "sub_id"

    const/4 v2, -0x1

    .line 330
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    .line 333
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->initApnEditorUi()V

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->getCarrierCustomizedConfig(Landroid/content/Context;)V

    const-string v1, "android.intent.action.EDIT"

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.intent.action.INSERT"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 338
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 339
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 340
    sget-object v0, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Edit request not for carrier table. Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 344
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    .line 346
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    sget-object p1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert request not for carrier table. Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 351
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string/jumbo v1, "mvno_type"

    .line 352
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    const-string/jumbo v1, "mvno_match_data"

    .line 353
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    const/4 p1, 0x0

    :cond_4
    if-eqz p1, :cond_5

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->getApnDataFromUri(Landroid/net/Uri;)Lcom/android/settings/network/apn/ApnEditor$ApnData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    goto :goto_0

    .line 365
    :cond_5
    new-instance p1, Lcom/android/settings/network/apn/ApnEditor$ApnData;

    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->sProjection:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {p1, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    .line 366
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 367
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->setDefaultData()V

    .line 370
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v0, 0x19

    .line 371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 370
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    if-le p1, v2, :cond_7

    move p1, v4

    goto :goto_1

    :cond_7
    move p1, v0

    .line 372
    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsCarrierIdApn:Z

    .line 376
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    if-nez p1, :cond_8

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_8
    const/16 v1, 0x17

    .line 382
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 381
    invoke-virtual {p1, v1, v2}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_9

    move p1, v4

    goto :goto_2

    :cond_9
    move p1, v0

    .line 384
    :goto_2
    sget-object v1, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate: EDITED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Lmiui/enterprise/ApnHelperStub;->getInstance()Lmiui/enterprise/IApnHelper;

    move-result-object v2

    invoke-interface {v2}, Lmiui/enterprise/IApnHelper;->isApnRestriction()Z

    move-result v2

    if-nez p1, :cond_b

    if-nez v2, :cond_b

    .line 389
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v2, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    const/16 v3, 0xf

    .line 390
    invoke-virtual {v2, v3}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/settings/network/apn/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    const-string/jumbo p1, "onCreate: apnTypesMatch; read-only APN"

    .line 392
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iput-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    .line 394
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableAllFields()V

    goto :goto_3

    .line 395
    :cond_b
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 396
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnFields:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->disableFields([Ljava/lang/String;)V

    .line 399
    :cond_c
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsCarrierIdApn:Z

    if-eqz p1, :cond_d

    .line 400
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->disableFieldsForCarrieridApn()V

    .line 403
    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-ge v0, p1, :cond_e

    .line 404
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void

    .line 355
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 944
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 947
    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsAddApnAllowed:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 948
    sget v1, Lcom/android/settings/R$string;->menu_delete:I

    invoke-interface {p1, v0, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    sget v1, Lcom/android/settings/R$drawable;->ic_delete:I

    .line 949
    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 951
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    if-nez p0, :cond_1

    const/4 p0, 0x2

    .line 952
    sget p2, Lcom/android/settings/R$string;->menu_save:I

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p2, 0x108004e    # @android:drawable/ic_menu_save

    .line 953
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const/4 p0, 0x3

    .line 955
    sget p2, Lcom/android/settings/R$string;->menu_cancel:I

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    const p1, 0x1080038    # @android:drawable/ic_menu_close_clear_cancel

    .line 956
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 997
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    return p3

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1001
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 961
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 975
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1

    .line 967
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 968
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return v1

    .line 963
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->deleteApn()V

    .line 964
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 874
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_type"

    .line 875
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 877
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 878
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p2, p1}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 880
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$array;->apn_auth_entries:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 881
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    aget-object p1, p2, p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    return v3

    :cond_0
    const-string v1, "apn_type"

    .line 885
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 886
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    .line 887
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 888
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mDefaultApnTypes:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->getEditableApnType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 889
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 890
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "apn_protocol"

    .line 892
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 893
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v3

    .line 897
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 898
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "apn_roaming_protocol"

    .line 899
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 900
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/network/apn/ApnEditor;->protocolDescription(Ljava/lang/String;Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    return v3

    .line 904
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 905
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v1, "bearer_multi"

    .line 906
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 909
    check-cast p2, Ljava/util/Set;

    .line 910
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return v3

    .line 915
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 916
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 915
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 914
    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->networkTypeToRilRidioTechnology(I)I

    move-result v0

    .line 917
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 918
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 919
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bear_mismatch:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 922
    :cond_8
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0, p2}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 923
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    const-string/jumbo v1, "mvno_type"

    .line 924
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 925
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    return v3

    .line 929
    :cond_a
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 930
    iget-object p2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 931
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->checkNullforMvnoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    const-string v1, "apn_password"

    .line 932
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 933
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    if-eqz p2, :cond_c

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_c
    const-string p2, ""

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_d
    const-string v1, "carrier_enabled"

    .line 934
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2

    :cond_e
    if-eqz p2, :cond_f

    .line 937
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_f
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_2
    return v2
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 1801
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 981
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 982
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p0, 0x1

    .line 983
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 984
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 421
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 425
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->fillUI(Z)V

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnEditor;->setCarrierCustomizedConfigToUi()V

    return-void
.end method

.method setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z
    .locals 0

    .line 1047
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object p0

    if-nez p4, :cond_1

    .line 1055
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    .line 1057
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return p0
.end method

.method setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p0, p5}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p4, :cond_2

    .line 1029
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    .line 1030
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    .line 1033
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method showError()V
    .locals 0

    .line 1373
    invoke-static {p0}, Lcom/android/settings/network/apn/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/network/apn/ApnEditor;)V

    return-void
.end method

.method public validateAndSaveApnData()Z
    .locals 13

    .line 1073
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApn:Z

    const/4 v6, 0x1

    .line 1195
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v0, :cond_0

    return v6

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1078
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1079
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1080
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1082
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->showError()V

    return v11

    .line 1088
    :cond_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1091
    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mNewApn:Z

    const-string/jumbo v2, "name"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v12

    .line 1092
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string v2, "apn"

    const/4 v5, 0x2

    move-object v3, v8

    .line 1098
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "proxy"

    .line 1104
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1106
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    move-object v0, p0

    .line 1104
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "port"

    .line 1110
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1112
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    move-object v0, p0

    .line 1110
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "mmsproxy"

    .line 1116
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsProxy:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1118
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    move-object v0, p0

    .line 1116
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "mmsport"

    .line 1122
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsPort:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1124
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    move-object v0, p0

    .line 1122
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "user"

    .line 1128
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mUser:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1130
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    move-object v0, p0

    .line 1128
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "server"

    .line 1134
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mServer:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1136
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    move-object v0, p0

    .line 1134
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "password"

    .line 1140
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mPassword:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1142
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    move-object v0, p0

    .line 1140
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "mmsc"

    .line 1146
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMmsc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1148
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    move-object v0, p0

    .line 1146
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1152
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mAuthType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "authtype"

    .line 1156
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0xe

    move-object v0, p0

    move-object v1, v12

    .line 1154
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    move v4, v0

    :cond_2
    const-string/jumbo v2, "protocol"

    .line 1161
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 1163
    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    move-object v0, p0

    move-object v1, v12

    .line 1161
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "roaming_protocol"

    .line 1167
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mRoamingProtocol:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 1169
    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x14

    move-object v0, p0

    .line 1167
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "type"

    .line 1175
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    move-object v0, p0

    .line 1173
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "mcc"

    const/16 v5, 0x9

    move-object v3, v9

    .line 1179
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "mnc"

    const/16 v5, 0xa

    move-object v3, v10

    .line 1185
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "numeric"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1194
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "current"

    .line 1195
    invoke-virtual {v12, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1199
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerMulti:Landroidx/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    .line 1201
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1202
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move v8, v11

    goto :goto_1

    .line 1206
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/network/apn/ApnEditor;->getBitmaskForTech(I)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_5
    move v8, v1

    :goto_1
    const-string v2, "bearer_bitmask"

    const/16 v5, 0x13

    move-object v0, p0

    move-object v1, v12

    move v3, v8

    .line 1209
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    if-eqz v8, :cond_7

    .line 1216
    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    if-nez v0, :cond_6

    goto :goto_2

    .line 1218
    :cond_6
    invoke-static {v8, v0}, Lcom/android/settings/network/apn/ApnEditor;->bitmaskHasTech(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1219
    iget v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mBearerInitialVal:I

    move v3, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v11

    :goto_3
    const-string v2, "bearer"

    const/16 v5, 0x12

    move-object v0, p0

    move-object v1, v12

    .line 1226
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v4

    const-string/jumbo v2, "mvno_type"

    .line 1232
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoType:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 1234
    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x15

    move-object v0, p0

    .line 1232
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string/jumbo v2, "mvno_match_data"

    .line 1238
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mMvnoMatchData:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 1240
    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    move-object v0, p0

    .line 1238
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setStringValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    const-string v2, "carrier_enabled"

    .line 1246
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierEnabled:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    const/16 v5, 0x11

    move-object v0, p0

    move-object v1, v12

    .line 1244
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/network/apn/ApnEditor;->setIntValueAndCheckIfDiff(Landroid/content/ContentValues;Ljava/lang/String;IZI)Z

    move-result v0

    const-string v1, "edited"

    .line 1250
    invoke-virtual {v12, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_9

    .line 1253
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mCarrierUri:Landroid/net/Uri;

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1254
    :goto_4
    invoke-direct {p0, v0, v12}, Lcom/android/settings/network/apn/ApnEditor;->updateApnDataToDatabase(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :cond_9
    return v6
.end method

.method validateApnData()Ljava/lang/String;
    .locals 10

    .line 1287
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnEditor;->mName:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnEditor;->mApn:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1289
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mMcc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v2}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1290
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mMnc:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v3}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/apn/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1291
    iget-boolean v4, p0, Lcom/android/settings/network/apn/ApnEditor;->mIsCarrierIdApn:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1292
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1295
    :goto_0
    iget-object v6, p0, Lcom/android/settings/network/apn/ApnEditor;->mApnType:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-virtual {v6}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    .line 1297
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_1

    .line 1298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->error_name_empty:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 1299
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->error_apn_empty:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_2
    const/4 v0, 0x0

    if-eqz v4, :cond_3

    .line 1302
    sget-object v2, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "validateApnData: carrier id APN does not have mcc/mnc defined"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    if-eqz v2, :cond_a

    .line 1304
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz v3, :cond_9

    .line 1306
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0xfffe

    and-int/2addr v2, v3

    if-eq v2, v7, :cond_5

    goto/16 :goto_3

    .line 1309
    :cond_5
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForEsTelefonica()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1310
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1311
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    .line 1312
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1313
    sget-object v3, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateApnData addApnType = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    array-length v3, v2

    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_b

    aget-object v6, v2, v4

    const-string v8, "XCAP"

    .line 1315
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/android/settings/R$string;->error_xcap_not_add:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1322
    :cond_7
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForJpKd()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, ".au-net.ne.jp"

    .line 1323
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1325
    aget-object v2, v2, v5

    .line 1326
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    const-string v2, ""

    .line 1331
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->error_apn_restrict_string:I

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1307
    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->error_mnc_not23:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1305
    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->error_mcc_not3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_5
    if-nez v0, :cond_e

    .line 1341
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    .line 1342
    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnEditor;->getUserEnteredApnType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/network/apn/ApnEditor;->apnTypesMatch([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1344
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnEditor;->mReadOnlyApnTypes:[Ljava/lang/String;

    array-length v3, v2

    :goto_6
    if-ge v5, v3, :cond_c

    aget-object v4, v2, v5

    .line 1345
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    sget-object v6, Lcom/android/settings/network/apn/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "validateApnData: appending type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1349
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v7, :cond_d

    .line 1350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1352
    :cond_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->error_adding_apn_type:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1357
    :cond_e
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrKt()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "phone"

    .line 1358
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1359
    iget v3, p0, Lcom/android/settings/network/apn/ApnEditor;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "45008"

    .line 1360
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$array;->apn_not_allowed_entries:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1362
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->error_apn_not_allowed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_f
    return-object v0
.end method
