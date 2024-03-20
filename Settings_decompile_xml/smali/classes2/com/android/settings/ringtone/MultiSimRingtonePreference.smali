.class public Lcom/android/settings/ringtone/MultiSimRingtonePreference;
.super Lcom/android/settingslib/miuisettings/preference/ValuePreference;
.source "MultiSimRingtonePreference.java"


# instance fields
.field private final MSG_UPDATE_TITLE:I

.field private final MSG_UPDATE_VALUE:I

.field private mExtraRingtoneType:I

.field private mHandler:Landroid/os/Handler;

.field private mUpdateUIRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRingtoneTitle(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/util/Pair;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->getRingtoneTitle()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRingtoneValue(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->getRingtoneValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->MSG_UPDATE_TITLE:I

    const/4 p2, 0x1

    .line 32
    iput p2, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->MSG_UPDATE_VALUE:I

    .line 34
    new-instance v0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference$1;-><init>(Lcom/android/settings/ringtone/MultiSimRingtonePreference;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;-><init>(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)V

    iput-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mUpdateUIRunnable:Ljava/lang/Runnable;

    .line 54
    iput p1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    .line 58
    invoke-virtual {p0, p2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void
.end method

.method private getDeviceSlotID()I
    .locals 1

    .line 156
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->isSlot1Position()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->isSlot2Position()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 161
    :cond_1
    sget p0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    return p0
.end method

.method private getRingtoneIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->isSlot1Position()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->sim_slot_1_icon:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->isSlot2Position()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->sim_slot_2_icon:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRingtoneTitle()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->ringtone_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v3, v2

    move-object v2, p0

    move-object p0, v3

    goto :goto_1

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 126
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sms_delivered_sound_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 128
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sms_received_sound_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 130
    :cond_2
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->getDeviceSlotID()I

    move-result p0

    invoke-virtual {v0, p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 132
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionInfo;->getDisplayNumber()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v2

    .line 136
    :goto_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getRingtoneValue()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    invoke-static {v0, p0}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSlot1Position()Z
    .locals 1

    .line 144
    iget p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x400

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

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

.method private isSlot2Position()Z
    .locals 1

    .line 150
    iget p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x800

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-ne p0, v0, :cond_0

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


# virtual methods
.method getRingtonePickerIntent()Landroid/content/Intent;
    .locals 7

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    iget v1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    const/4 v2, 0x0

    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const-string v4, "android.intent.extra.ringtone.TYPE"

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_0

    const/16 v6, 0x10

    if-eq v1, v6, :cond_0

    const/16 v6, 0x40

    if-eq v1, v6, :cond_1

    const/16 v6, 0x80

    if-eq v1, v6, :cond_1

    const/16 v6, 0x100

    if-eq v1, v6, :cond_0

    const/16 v6, 0x200

    if-eq v1, v6, :cond_0

    const/16 v6, 0x400

    if-eq v1, v6, :cond_0

    const/16 v6, 0x800

    if-eq v1, v6, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->addMiuiNaturalSound(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 99
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    invoke-static {v1, p0}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 103
    invoke-virtual {v0, p0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "com.android.thememanager"

    const-string v1, "com.android.thememanager.activity.ThemeTabActivity"

    .line 104
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 64
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 65
    sget p1, Lcom/android/settings/R$id;->value_right:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p1, 0x3

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public updateUI(I)V
    .locals 1

    .line 73
    iget v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    if-eq v0, p1, :cond_0

    .line 74
    iput p1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mExtraRingtoneType:I

    .line 75
    invoke-direct {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->getRingtoneIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->mUpdateUIRunnable:Ljava/lang/Runnable;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
