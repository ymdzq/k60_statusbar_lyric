.class public Lcom/android/settings/network/apn/ApnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;,
        Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;
    }
.end annotation


# static fields
.field private static final CARRIERS_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field static final IS_JP_SB:Z

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private bearerBitmaskCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowAddingApns:Z

.field private mCallState:I

.field private mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

.field private mHideApnsWithIccidRule:[Ljava/lang/String;

.field private mHideApnsWithRule:[Ljava/lang/String;

.field private mHideDunApn:Z

.field private mHideEmergencyApn:Z

.field private mHideImsApn:Z

.field private mHideMmsApn:Z

.field private mHidePresetApnDetails:Z

.field private mHideXcapApn:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAirplaneEnabled:Z

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mOptionMenu:Landroid/view/Menu;

.field private mPhoneId:I

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallState(Lcom/android/settings/network/apn/ApnSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCallState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/android/settings/network/apn/ApnSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/android/settings/network/apn/ApnSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAirplaneEnabled(Lcom/android/settings/network/apn/ApnSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsAirplaneEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubId(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mfillList(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSubscriptionInfo(Lcom/android/settings/network/apn/ApnSettings;I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUriForCurrSubId(Lcom/android/settings/network/apn/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrestartPhoneStateListener(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/apn/ApnSettings;->restartPhoneStateListener(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRestoreDefaultApnDialog(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->showRestoreDefaultApnDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateApnListEnableState(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->updateApnListEnableState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULTAPN_URI()Landroid/net/Uri;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/network/apn/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmRestoreDefaultApnMode()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmRestoreDefaultApnMode(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const-string v0, "_id"

    const-string/jumbo v1, "name"

    const-string v2, "apn"

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "mvno_type"

    const-string/jumbo v5, "mvno_match_data"

    const-string v6, "edited"

    const-string v7, "bearer"

    const-string v8, "bearer_bitmask"

    .line 124
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    const-string v0, "content://telephony/carriers/restore"

    .line 163
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    .line 164
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const-string/jumbo v0, "ro.miui.customized.region"

    .line 220
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp_sb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->IS_JP_SB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_mobile_networks"

    .line 223
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->bearerBitmaskCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsAirplaneEnabled:Z

    .line 169
    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCallState:I

    .line 226
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$1;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 257
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$2;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/apn/ApnSettings;I)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/apn/ApnSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addNewApn()V
    .locals 3

    .line 963
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 964
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const-string/jumbo v2, "sub_id"

    .line 966
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 967
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 968
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "mvno_type"

    .line 969
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mvno_match_data"

    .line 970
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private appendFilter(Ljava/lang/StringBuilder;)V
    .locals 9

    .line 764
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    const-string v1, "ApnSettings"

    const-string v2, "include_common_rules"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apn hidden rules specified iccid, include common rule: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 774
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 775
    invoke-static {v5}, Lcom/android/settings/Utils;->carrierTableFieldValidate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 776
    iget-object v6, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    invoke-virtual {v6, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " <> \""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move v0, v3

    .line 795
    :cond_2
    iget-object v4, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsWithIccidRule:[Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 796
    invoke-direct {p0, v4}, Lcom/android/settings/network/apn/ApnSettings;->getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 797
    iget-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v5, :cond_3

    const-string v5, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    .line 798
    :goto_1
    invoke-direct {p0, v4, v5}, Lcom/android/settings/network/apn/ApnSettings;->isOperatorIccid(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 799
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    .line 800
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    .line 801
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apn hidden rules in iccids, include common rule: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-direct {p0, v4, p1}, Lcom/android/settings/network/apn/ApnSettings;->filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    move v0, v3

    :cond_6
    if-eqz v0, :cond_7

    .line 813
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsWithRule:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 814
    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 815
    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/apn/ApnSettings;->filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    :cond_7
    return-void
.end method

.method private fillList()V
    .locals 20

    move-object/from16 v0, p0

    .line 525
    iget-object v1, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 528
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 529
    :goto_1
    iget-object v4, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    :goto_2
    const-string v2, ""

    .line 531
    :goto_3
    sget-object v4, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    .line 532
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 531
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL)) AND user_visible!=0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 541
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 542
    invoke-static {v6, v5}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v5

    .line 543
    invoke-virtual {v5}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    .line 551
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lmiui/telephony/TelephonyManager;->isChinaTelecomTest(Ljava/lang/String;)Z

    move-result v5

    const-string v6, " AND NOT (type=\'mms\')"

    const-string v8, " AND NOT (type=\'ims\')"

    if-eqz v5, :cond_5

    .line 552
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/TelephonyManager;->isDualVolteSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 554
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    .line 555
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v6

    .line 554
    invoke-virtual {v5, v6}, Lmiui/telephony/TelephonyManager;->isVolteEnabledByUser(I)Z

    move-result v5

    goto :goto_4

    .line 556
    :cond_4
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/telephony/TelephonyManager;->isVolteEnabledByUser()Z

    move-result v5

    :goto_4
    if-nez v5, :cond_9

    .line 558
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 560
    :cond_5
    sget-boolean v5, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v5, :cond_6

    .line 561
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v5

    .line 562
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v6

    .line 561
    invoke-virtual {v5, v6}, Lmiui/telephony/TelephonyManager;->isVolteEnabledByPlatform(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 564
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 567
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnSettings;->isHideImsApn()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 568
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_7
    iget-boolean v5, v0, Lcom/android/settings/network/apn/ApnSettings;->mHideDunApn:Z

    if-eqz v5, :cond_8

    const-string v5, " AND NOT (type=\'dun\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_8
    iget-boolean v5, v0, Lcom/android/settings/network/apn/ApnSettings;->mHideMmsApn:Z

    if-eqz v5, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_9
    :goto_5
    iget-boolean v5, v0, Lcom/android/settings/network/apn/ApnSettings;->mHideXcapApn:Z

    if-eqz v5, :cond_a

    const-string v5, " AND NOT (type=\'xcap\')"

    .line 574
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_a
    iget-boolean v5, v0, Lcom/android/settings/network/apn/ApnSettings;->mHideEmergencyApn:Z

    if-eqz v5, :cond_b

    const-string v5, " AND NOT (type=\'emergency\')"

    .line 578
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_b
    invoke-direct {v0, v4}, Lcom/android/settings/network/apn/ApnSettings;->appendFilter(Ljava/lang/StringBuilder;)V

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "where = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v12, "ApnSettings"

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "73002"

    .line 587
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    .line 589
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "_id"

    .line 588
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_6

    .line 592
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/settings/network/apn/ApnSettings;->CARRIERS_PROJECTION:[Ljava/lang/String;

    .line 593
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string/jumbo v11, "name ASC"

    .line 592
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_6
    if-eqz v4, :cond_28

    const-string v5, "apn_list"

    .line 599
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Landroidx/preference/PreferenceGroup;

    .line 600
    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 605
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 606
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/network/apn/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 614
    invoke-static {v8}, Lcom/android/settings/network/apn/ApnPreference;->setSelectedKey(Ljava/lang/String;)V

    .line 615
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v8, v3

    .line 616
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_22

    const/4 v9, 0x1

    .line 617
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    .line 618
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 620
    iget-object v13, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v13, :cond_d

    .line 621
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    iget-object v14, v0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v14

    .line 620
    invoke-static {v13, v14, v11}, Lcom/android/settings/security/VirtualSimUtils;->isValidApnForMiSim(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 622
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    goto/16 :goto_a

    :cond_d
    const/4 v13, 0x0

    .line 626
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    .line 627
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x6

    .line 628
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v9, 0x4

    .line 629
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoType:Ljava/lang/String;

    const/4 v9, 0x5

    .line 630
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/network/apn/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 632
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    const-string/jumbo v7, "name = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",apn = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",type ="

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    move-object/from16 v18, v10

    const/4 v9, 0x1

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/settings/Utils;->getLocalizedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 636
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    move-object v10, v7

    goto :goto_8

    :cond_e
    move-object/from16 v10, v18

    .line 640
    :goto_8
    iget-object v7, v0, Lcom/android/settings/network/apn/ApnSettings;->bearerBitmaskCache:Ljava/util/HashMap;

    const/16 v9, 0x8

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v9, 0x7

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v19

    or-int v18, v18, v19

    move-object/from16 v19, v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0x8

    .line 642
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 643
    invoke-static {v7}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v9

    or-int/2addr v9, v8

    move-object/from16 v18, v6

    .line 644
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 645
    invoke-virtual {v6, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v6

    .line 644
    invoke-direct {v0, v6}, Lcom/android/settings/network/apn/ApnSettings;->networkTypeToRilRidioTechnology(I)I

    move-result v6

    .line 646
    invoke-static {v9, v6}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v9

    if-nez v9, :cond_13

    if-nez v7, :cond_f

    if-eqz v8, :cond_13

    :cond_f
    const-string v8, "20801"

    .line 649
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string/jumbo v8, "orange"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v9, 0x1

    goto :goto_9

    :cond_10
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_11

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOrangeApn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_11
    if-nez v6, :cond_12

    if-nez v7, :cond_13

    if-nez v6, :cond_13

    .line 655
    :cond_12
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    :goto_a
    move-object/from16 v7, v17

    move-object/from16 v6, v18

    move-object/from16 v8, v19

    goto/16 :goto_7

    :cond_13
    :goto_b
    if-eqz v15, :cond_15

    const-string/jumbo v6, "mms"

    .line 661
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_c

    :cond_14
    const/4 v9, 0x0

    goto :goto_d

    :cond_15
    :goto_c
    const/4 v9, 0x1

    .line 663
    :goto_d
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lmiui/telephony/TelephonyManager;->isChinaTelecomTest(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    if-eqz v15, :cond_17

    const-string v6, "ims"

    .line 664
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_e

    :cond_16
    const/4 v9, 0x0

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v9, 0x1

    :cond_18
    :goto_f
    const-string v6, "dun"

    .line 666
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$bool;->config_disable_dun_apn:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    goto :goto_10

    :cond_19
    const/4 v6, 0x0

    :goto_10
    if-eqz v9, :cond_1a

    .line 669
    new-instance v7, Lcom/android/settings/MiuiApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/MiuiApnPreference;-><init>(Landroid/content/Context;)V

    .line 670
    sget v8, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 671
    invoke-virtual {v7, v6}, Lcom/android/settings/MiuiApnPreference;->setApnReadOnly(Z)V

    const/4 v8, 0x1

    goto :goto_11

    .line 673
    :cond_1a
    new-instance v7, Landroidx/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    .line 674
    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 677
    :goto_11
    invoke-virtual {v7, v14}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v7, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    .line 679
    invoke-virtual {v7, v10}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 680
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 695
    sget-boolean v16, Lcom/android/settings/network/apn/ApnSettings;->IS_JP_SB:Z

    if-eqz v16, :cond_1b

    if-nez v13, :cond_1b

    invoke-virtual {v0, v11}, Lcom/android/settings/network/apn/ApnSettings;->apnNameEncryptionDisplay(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    :cond_1b
    invoke-virtual {v7, v11}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_1f

    if-nez v6, :cond_1d

    .line 703
    move-object v6, v7

    check-cast v6, Lcom/android/settings/MiuiApnPreference;

    iget-object v9, v0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v9, :cond_1c

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    move v9, v8

    goto :goto_12

    :cond_1c
    move v9, v10

    :goto_12
    invoke-virtual {v6, v9}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 704
    invoke-virtual {v6, v1}, Lcom/android/settings/MiuiApnPreference;->setSubId(I)V

    .line 706
    invoke-virtual {v6, v15}, Lcom/android/settings/MiuiApnPreference;->setApnType(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v6, v13}, Lcom/android/settings/MiuiApnPreference;->setEdited(I)V

    :cond_1d
    if-nez v3, :cond_1e

    .line 710
    new-instance v3, Landroidx/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v6, "apn_general_list"

    .line 711
    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 712
    sget v6, Lcom/android/settings/R$string;->apn_general:I

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setTitle(I)V

    .line 713
    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1e
    move-object/from16 v6, v18

    .line 716
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v17

    move-object/from16 v8, v19

    goto :goto_14

    :cond_1f
    move-object/from16 v6, v18

    if-nez v19, :cond_21

    .line 720
    new-instance v8, Landroidx/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v9, "apn_mms_list"

    .line 721
    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lmiui/telephony/TelephonyManager;->isChinaTelecomTest(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 723
    sget v9, Lcom/android/settings/R$string;->apn_mms:I

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setTitle(I)V

    .line 725
    :cond_20
    invoke-virtual {v5, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-object/from16 v9, v17

    goto :goto_13

    :cond_21
    move-object/from16 v9, v17

    move-object/from16 v8, v19

    .line 728
    :goto_13
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    :goto_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-object v7, v9

    goto/16 :goto_7

    :cond_22
    move-object v9, v7

    move-object/from16 v19, v8

    .line 732
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 735
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    if-eqz v3, :cond_23

    .line 736
    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 738
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz v19, :cond_24

    move-object/from16 v8, v19

    .line 739
    invoke-virtual {v5, v8}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_15

    :cond_24
    move-object/from16 v8, v19

    .line 743
    :goto_15
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    if-eqz v3, :cond_25

    .line 747
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_16

    .line 751
    :cond_26
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    if-eqz v8, :cond_27

    .line 755
    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_17

    :cond_28
    return-void
.end method

.method private filterWithKey(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 821
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 822
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 823
    invoke-static {v0}, Lcom/android/settings/Utils;->carrierTableFieldValidate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 825
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ","

    .line 826
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 827
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 828
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " <> \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getApnRuleMap([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 836
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 838
    array-length v0, p1

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ruleArray size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApnSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    .line 840
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 842
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 6

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1045
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1046
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 1047
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1049
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 1083
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 1085
    :goto_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private isCallStateIdle()Z
    .locals 0

    .line 254
    iget p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mCallState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHideImsApn()Z
    .locals 2

    .line 1184
    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->IS_JP_SB:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "radio.editims.secretcode"

    .line 1185
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 1187
    iget-boolean p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideImsApn:Z

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isOperatorIccid(Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string p0, "iccid"

    .line 851
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 852
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, ","

    .line 853
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 854
    array-length p1, p0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    .line 855
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
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

.method private restartPhoneStateListener(I)V
    .locals 3

    .line 346
    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 351
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 357
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 359
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x1000

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 361
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .line 1055
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/16 v0, 0x3e9

    .line 1058
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1059
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->showRestoreDefaultApnDialog()V

    :cond_0
    const/4 v0, 0x1

    .line 1062
    sput-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 1064
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_1

    .line 1065
    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler-IA;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    .line 1068
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_3

    .line 1069
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Restore default APN Handler: Process Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 1071
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1072
    new-instance v1, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 1073
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    .line 1076
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;

    .line 1077
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 3

    .line 1032
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 1033
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1035
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "apn_id"

    .line 1036
    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    sget-object v1, Lcom/android/settings/network/apn/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/settings/network/apn/ApnSettings;->getUriForCurrSubId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private showRestoreDefaultApnDialog()V
    .locals 1

    const/16 v0, 0x3e9

    .line 1177
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 1178
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private updateApnListEnableState()V
    .locals 6

    const-string v0, "apn_list"

    .line 319
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 320
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsAirplaneEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->isCallStateIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 321
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateApnListEnableState: mIsAirplaneEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsAirplaneEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCallStateIdle():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->isCallStateIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ApnSettings"

    .line 321
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 327
    invoke-static {}, Lcom/miui/enterprise/ApplicationHelper;->getAPNActiveMode()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 328
    invoke-static {}, Lmiui/enterprise/ApnHelperStub;->getInstance()Lmiui/enterprise/IApnHelper;

    move-result-object v4

    invoke-interface {v4}, Lmiui/enterprise/IApnHelper;->isAPNActiveMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 329
    invoke-static {}, Lmiui/enterprise/ApnHelperStub;->getInstance()Lmiui/enterprise/IApnHelper;

    move-result-object v4

    invoke-interface {v4}, Lmiui/enterprise/IApnHelper;->isApnRestriction()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    if-eqz v4, :cond_3

    .line 331
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 335
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mOptionMenu:Landroid/view/Menu;

    if-eqz v0, :cond_5

    .line 337
    invoke-static {}, Lmiui/enterprise/ApnHelperStub;->getInstance()Lmiui/enterprise/IApnHelper;

    move-result-object v0

    invoke-interface {v0}, Lmiui/enterprise/IApnHelper;->isApnRestriction()Z

    move-result v0

    .line 339
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mOptionMenu:Landroid/view/Menu;

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-interface {p0, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :cond_5
    return-void
.end method


# virtual methods
.method public apnNameEncryptionDisplay(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    move p1, p0

    goto :goto_0

    .line 1194
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    if-ge p0, p1, :cond_1

    const/16 v1, 0x2a

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 1200
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 0
    const/16 p0, 0x3e9

    if-ne p1, p0, :cond_0

    const/16 p0, 0x243

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0xc

    return p0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 513
    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 515
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 444
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->apn_settings_not_available:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    xor-int/lit8 p1, p1, 0x1

    .line 448
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 449
    iget-boolean p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    .line 450
    sget p1, Lcom/android/settings/R$xml;->placeholder_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void

    .line 454
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->apn_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 372
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 380
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    .line 382
    invoke-static {p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getPhoneId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneId:I

    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 386
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "miui.intent.action.ACTION_UPDATE_CLOUD_APN_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIsAirplaneEnabled:Z

    .line 400
    invoke-virtual {p0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 402
    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 403
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "carrier_config"

    .line 406
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 407
    iget v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "hide_ims_apn_bool"

    .line 408
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideImsApn:Z

    const-string v1, "hide_xcap_apn_bool"

    .line 410
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideXcapApn:Z

    const-string v1, "config_hide_mms_apn"

    .line 411
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideMmsApn:Z

    const-string v1, "config_hide_dun_apn"

    .line 412
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideDunApn:Z

    const-string v1, "hide_emergency_apn_bool"

    .line 413
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideEmergencyApn:Z

    const-string v1, "allow_adding_apns_bool"

    .line 415
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    const-string v1, "apn_hide_rule_strings_array"

    .line 417
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsWithRule:[Ljava/lang/String;

    const-string v1, "apn_hide_rule_strings_with_iccids_array"

    .line 418
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsWithIccidRule:[Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const-string v3, "ApnSettings"

    if-eqz v1, :cond_3

    .line 420
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lmiui/telephony/TelephonyUtils;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mHideApnsGroupByIccid:Landroid/os/PersistableBundle;

    .line 426
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "read_only_apn_types_string_array"

    .line 427
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v1}, Lcom/android/settings/network/apn/ApnEditor;->hasAllApns([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "not allowing adding APN because all APN types are read only"

    .line 431
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iput-boolean v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    :cond_4
    const-string v1, "hide_preset_apn_details_bool"

    .line 435
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mHidePresetApnDetails:Z

    .line 436
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 438
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1141
    new-instance p1, Lcom/android/settings/network/apn/ApnSettings$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/network/apn/ApnSettings$3;-><init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/content/Context;)V

    .line 1146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->restore_default_apn:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1147
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 1150
    new-instance v0, Lcom/android/settings/network/apn/ApnSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/network/apn/ApnSettings$4;-><init>(Lcom/android/settings/network/apn/ApnSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    .line 910
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_5

    .line 912
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustForKrLgu()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 913
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "radio.newapn.secretcode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCustForKrLgu mAllowAddingApns: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ApnSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mAllowAddingApns:Z

    if-eqz v0, :cond_4

    .line 919
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/settings/security/VirtualSimUtils;->isMiSimEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 921
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->menu_new:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 924
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$attr;->actionBarNewIcon:I

    invoke-static {v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 925
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 928
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->menu_restore:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    .line 927
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->action_button_clear:I

    .line 931
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 932
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 936
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 938
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings;->mOptionMenu:Landroid/view/Menu;

    .line 939
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->updateApnListEnableState()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 496
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 506
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->bearerBitmaskCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 945
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 959
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 952
    :cond_0
    sget-boolean p1, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez p1, :cond_1

    .line 953
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->restoreDefaultApn()Z

    :cond_1
    return v1

    .line 947
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->addNewApn()V

    return v1
.end method

.method public onPause()V
    .locals 2

    .line 476
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 478
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 483
    :cond_0
    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e9

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceChange(): Preference - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue type - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApnSettings"

    .line 1021
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1025
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/network/apn/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 978
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 980
    instance-of v1, p1, Lcom/android/settings/MiuiApnPreference;

    if-eqz v1, :cond_5

    .line 981
    iget-object v1, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 985
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 986
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 987
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "radioTech = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ApnSettings"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v3, v4

    .line 990
    :goto_0
    iget-object v5, p0, Lcom/android/settings/network/apn/ApnSettings;->bearerBitmaskCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v3}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 991
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 992
    check-cast p1, Lcom/android/settings/MiuiApnPreference;

    .line 993
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 994
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->forbidden_switch_apn_string:I

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v4

    :cond_1
    if-eqz v1, :cond_3

    .line 997
    iget-object v3, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1006
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/settings/MiuiApnPreference;

    .line 1007
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 999
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/apn/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 1000
    instance-of v2, v1, Lcom/android/settings/MiuiApnPreference;

    if-eqz v2, :cond_4

    .line 1001
    check-cast v1, Lcom/android/settings/MiuiApnPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1004
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    goto :goto_2

    .line 1010
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1011
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1012
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1015
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 461
    iget-boolean v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget v0, p0, Lcom/android/settings/network/apn/ApnSettings;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->restartPhoneStateListener(I)V

    .line 469
    sget-boolean v0, Lcom/android/settings/network/apn/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/android/settings/network/apn/ApnSettings;->fillList()V

    :cond_1
    return-void
.end method
