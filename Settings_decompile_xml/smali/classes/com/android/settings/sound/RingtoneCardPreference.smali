.class public Lcom/android/settings/sound/RingtoneCardPreference;
.super Landroidx/preference/Preference;
.source "RingtoneCardPreference.java"

# interfaces
.implements Lmiuix/preference/PreferenceExtraPadding;


# instance fields
.field private alarmsPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

.field private isHideRingtoneCall:Z

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/sound/coolsound/RingtonePicker;",
            ">;"
        }
    .end annotation
.end field

.field private mIsThemeRingtoneAccess:Z

.field private final mListener:Landroid/view/View$OnClickListener;

.field private notificationPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

.field private ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

.field private ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

.field private ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

.field private telephonePicker:Lcom/android/settings/sound/coolsound/RingtonePicker;


# direct methods
.method public static synthetic $r8$lambda$mHq7rCDs5G55keZauceOYTGPeO4(Lcom/android/settings/sound/RingtoneCardPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/sound/RingtoneCardPreference;->lambda$init$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/sound/RingtoneCardPreference;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsThemeRingtoneAccess(Lcom/android/settings/sound/RingtoneCardPreference;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mIsThemeRingtoneAccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPicker(Lcom/android/settings/sound/RingtoneCardPreference;I)Lcom/android/settings/sound/coolsound/RingtonePicker;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingtoneCardPreference;->getPicker(I)Lcom/android/settings/sound/coolsound/RingtonePicker;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 92
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mData:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mIsThemeRingtoneAccess:Z

    .line 303
    new-instance v0, Lcom/android/settings/sound/RingtoneCardPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingtoneCardPreference$1;-><init>(Lcom/android/settings/sound/RingtoneCardPreference;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mListener:Landroid/view/View$OnClickListener;

    .line 93
    iput-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->isHideRingtoneCall:Z

    .line 95
    invoke-direct {p0}, Lcom/android/settings/sound/RingtoneCardPreference;->getResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 96
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/sound/RingtoneCardPreference;->init()V

    return-void
.end method

.method private checkGlobalRingtoneAccess()Z
    .locals 4

    .line 203
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.android.thememanager.theme_provider"

    .line 206
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "getRingtoneService"

    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0, v0, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "theme_ringtone_access"

    .line 209
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public static getDefaultAlarmRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x4

    .line 399
    :try_start_0
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getPicker(I)Lcom/android/settings/sound/coolsound/RingtonePicker;
    .locals 2

    .line 237
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/coolsound/RingtonePicker;

    .line 238
    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getResType()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getResourceId()I
    .locals 2

    .line 101
    sget v0, Lcom/android/settings/R$layout;->ringtone_settings_card_layout:I

    .line 102
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->isHideRingtoneCall:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 106
    sget v0, Lcom/android/settings/R$layout;->ringtone_settings_card_layout_ring_pad:I

    :cond_0
    return v0
.end method

.method private init()V
    .locals 6

    .line 112
    new-instance v0, Lcom/android/settings/sound/RingtoneCardPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/sound/RingtoneCardPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sound/RingtoneCardPreference;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->ringtone_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->alarm_sound_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->notification_remind:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v3, Lcom/android/settings/sound/coolsound/RingtonePicker;

    const/4 v4, 0x0

    sget v5, Lcom/android/settings/R$drawable;->ic_telephone_ring:I

    invoke-direct {v3, v4, v5, v0}, Lcom/android/settings/sound/coolsound/RingtonePicker;-><init>(IILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/sound/RingtoneCardPreference;->telephonePicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    .line 119
    new-instance v0, Lcom/android/settings/sound/coolsound/RingtonePicker;

    const/4 v3, 0x3

    sget v4, Lcom/android/settings/R$drawable;->ic_alarms_ring:I

    invoke-direct {v0, v3, v4, v1}, Lcom/android/settings/sound/coolsound/RingtonePicker;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->alarmsPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    .line 121
    new-instance v0, Lcom/android/settings/sound/coolsound/RingtonePicker;

    const/4 v1, 0x5

    sget v3, Lcom/android/settings/R$drawable;->ic_ringtone_notification:I

    invoke-direct {v0, v1, v3, v2}, Lcom/android/settings/sound/coolsound/RingtonePicker;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->notificationPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    .line 123
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->telephonePicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sound/coolsound/CoolSoundUtils;->isSupportCoolAlarm(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sound/coolsound/CoolSoundUtils;->isSupportAllAlarm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->alarmsPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mData:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->notificationPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/android/settings/sound/RingtoneCardPreference;->checkGlobalRingtoneAccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mIsThemeRingtoneAccess:Z

    return-void
.end method

.method private useFolme(Landroid/view/View;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 194
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 195
    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getUri(I)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 220
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoCount()I

    move-result v1

    if-le v1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 224
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 227
    :cond_1
    invoke-static {p1}, Lcom/android/settings/sound/coolsound/CoolSoundUtils;->transferToRingtoneType(I)I

    move-result p1

    .line 228
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoCount()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 229
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/util/SimRingtoneUtils;->isDefaultSoundUniform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    .line 230
    invoke-static {p1, v0}, Lmiui/util/SimRingtoneUtils;->getExtraRingtoneTypeBySlot(II)I

    move-result p1

    .line 233
    :cond_2
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isViewDisable(I)Z
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingtoneCardPreference;->getPicker(I)Lcom/android/settings/sound/coolsound/RingtonePicker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/sound/coolsound/RingtonePicker;->isDisable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 133
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 137
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/sound/RingtoneCardPreference;->isHideRingtoneCall:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->ringtone_settings_card_height_no_call:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 144
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    sget v1, Lcom/android/settings/R$id;->ringtone_call:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/coolsound/RingtoneItem;

    iput-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    .line 147
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->isHideRingtoneCall:Z

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    :cond_1
    sget v1, Lcom/android/settings/R$id;->ringtone_alarm:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/coolsound/RingtoneItem;

    iput-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    .line 151
    sget v1, Lcom/android/settings/R$id;->ringtone_notification:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    iput-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    .line 153
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    if-eqz p1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-virtual {p1, v0}, Lcom/android/settings/sound/coolsound/RingtoneItem;->setType(I)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingtoneCardPreference;->useFolme(Landroid/view/View;)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->telephonePicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    if-eqz p1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    iget-object v1, v1, Lcom/android/settings/sound/coolsound/RingtoneItem;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getDrawableId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    iget-object p1, p1, Lcom/android/settings/sound/coolsound/RingtoneItem;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->telephonePicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {v1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getRingtoneTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    iget-object p1, p1, Lcom/android/settings/sound/coolsound/RingtoneItem;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->telephonePicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {v1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getRingtoneValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->telephonePicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->isDisable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/settings/sound/RingtoneCardPreference;->setItemViewDisable(I)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 168
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    if-eqz p1, :cond_4

    .line 169
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/settings/sound/coolsound/RingtoneItem;->setType(I)V

    .line 171
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingtoneCardPreference;->useFolme(Landroid/view/View;)V

    .line 172
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->alarmsPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    if-eqz p1, :cond_4

    .line 173
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    iget-object v0, v0, Lcom/android/settings/sound/coolsound/RingtoneItem;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getDrawableId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 174
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    iget-object p1, p1, Lcom/android/settings/sound/coolsound/RingtoneItem;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->alarmsPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getRingtoneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    iget-object p1, p1, Lcom/android/settings/sound/coolsound/RingtoneItem;->summary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->alarmsPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getRingtoneValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_4
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    if-eqz p1, :cond_5

    .line 179
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->setType(I)V

    .line 181
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingtoneCardPreference;->useFolme(Landroid/view/View;)V

    .line 182
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->notificationPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    if-eqz p1, :cond_5

    .line 183
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    iget-object v0, v0, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->imageView:Landroid/widget/ImageView;

    .line 184
    invoke-virtual {p1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getDrawableId()I

    move-result p1

    .line 183
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 185
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    iget-object p1, p1, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->notificationPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getRingtoneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    iget-object p1, p1, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->summary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->notificationPicker:Lcom/android/settings/sound/coolsound/RingtonePicker;

    invoke-virtual {p0}, Lcom/android/settings/sound/coolsound/RingtonePicker;->getRingtoneValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 2

    .line 409
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_mask_padding_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 411
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miuix_preference_checkable_item_bg_padding_end:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, p2

    float-to-int p1, p1

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setDisable(I)V
    .locals 2

    .line 270
    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingtoneCardPreference;->getPicker(I)Lcom/android/settings/sound/coolsound/RingtonePicker;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 272
    invoke-virtual {v0, v1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->setDisable(Z)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/RingtoneCardPreference;->setItemViewDisable(I)V

    :cond_0
    return-void
.end method

.method public setItemViewDisable(I)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 291
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void

    .line 294
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getType()I

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    if-ne v0, p1, :cond_1

    .line 295
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getType()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 297
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->getType()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 299
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setValue(ILjava/lang/CharSequence;)V
    .locals 2

    .line 254
    invoke-direct {p0, p1}, Lcom/android/settings/sound/RingtoneCardPreference;->getPicker(I)Lcom/android/settings/sound/coolsound/RingtonePicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/coolsound/RingtonePicker;->setRingtoneValue(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/sound/RingtoneCardPreference;->updateItemView(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateItemView(ILjava/lang/CharSequence;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 279
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneCallView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItem;->getType()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 281
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneAlarmView:Lcom/android/settings/sound/coolsound/RingtoneItem;

    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneItem;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->getType()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 283
    iget-object p0, p0, Lcom/android/settings/sound/RingtoneCardPreference;->ringtoneNotification:Lcom/android/settings/sound/coolsound/RingtoneItemNotification;

    iget-object p0, p0, Lcom/android/settings/sound/coolsound/RingtoneItemNotification;->summary:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
