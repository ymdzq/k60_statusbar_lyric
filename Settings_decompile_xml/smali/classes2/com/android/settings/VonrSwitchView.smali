.class public Lcom/android/settings/VonrSwitchView;
.super Ljava/lang/Object;
.source "VonrSwitchView.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "VonrSwitchView"


# instance fields
.field private mButtonVonr:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPrefGroup:Landroidx/preference/PreferenceGroup;

.field private mSlotId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonVonr(Lcom/android/settings/VonrSwitchView;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/VonrSwitchView;->mButtonVonr:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/VonrSwitchView;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/VonrSwitchView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misVoNREnabled(Lcom/android/settings/VonrSwitchView;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/VonrSwitchView;->isVoNREnabled(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;Landroid/content/Context;I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/settings/VonrSwitchView;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/android/settings/VonrSwitchView;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 31
    iput-object p2, p0, Lcom/android/settings/VonrSwitchView;->mContext:Landroid/content/Context;

    .line 32
    iput p3, p0, Lcom/android/settings/VonrSwitchView;->mSlotId:I

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "vonr_switch"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/settings/VonrSwitchView;->mSlotId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/VonrSwitchView;->mButtonVonr:Landroidx/preference/SwitchPreference;

    .line 34
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/VonrSwitchView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isUserFiveGSaEnabled(I)Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    const-string/jumbo v0, "miui.telephony.TelephonyManagerEx"

    .line 110
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefault"

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 113
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isUserFiveGSaEnabled"

    new-array v4, v3, [Ljava/lang/Class;

    .line 114
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p0

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private isVoNREnabled(I)Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    const-string/jumbo v0, "miui.telephony.TelephonyManagerEx"

    .line 140
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefault"

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 143
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isVoNREnabled"

    new-array v4, v3, [Ljava/lang/Class;

    .line 144
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p0

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private setUserVoNREnabled(IZ)V
    .locals 7

    :try_start_0
    const-string/jumbo p0, "miui.telephony.TelephonyManagerEx"

    .line 155
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getDefault"

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 158
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setUserVoNREnabled"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 159
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSubId(I)I
    .locals 2

    .line 99
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 102
    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 104
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubId sudId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/VonrSwitchView;->log(Ljava/lang/String;)V

    return p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 95
    sget-object p0, Lcom/android/settings/VonrSwitchView;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const/4 p2, 0x0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView;->mButtonVonr:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 42
    iget p1, p0, Lcom/android/settings/VonrSwitchView;->mSlotId:I

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/VonrSwitchView;->setUserVoNREnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public shouldEnableVonrSwitch()Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 84
    :goto_0
    iget v3, p0, Lcom/android/settings/VonrSwitchView;->mSlotId:I

    invoke-static {v3}, Lcom/android/settings/msim/MSimUtils;->isIccCardActivated(I)Z

    move-result v3

    if-nez v0, :cond_3

    if-nez v3, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    iget v0, p0, Lcom/android/settings/VonrSwitchView;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/settings/VonrSwitchView;->isUserFiveGSaEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "disable vonr button because sa is turned off"

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/VonrSwitchView;->log(Ljava/lang/String;)V

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public updateVonrButtonUI()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView;->mButtonVonr:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vonr_switch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/VonrSwitchView;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/VonrSwitchView;->mButtonVonr:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 59
    :cond_2
    iget v0, p0, Lcom/android/settings/VonrSwitchView;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/VonrSwitchView;->getSubId(I)I

    move-result v0

    const v2, 0x7fffffff

    if-gt v0, v2, :cond_3

    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    .line 61
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/VonrSwitchView$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/VonrSwitchView$1;-><init>(Lcom/android/settings/VonrSwitchView;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/android/settings/VonrSwitchView;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/VonrSwitchView;->mButtonVonr:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 77
    iget-object p0, p0, Lcom/android/settings/VonrSwitchView;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method
