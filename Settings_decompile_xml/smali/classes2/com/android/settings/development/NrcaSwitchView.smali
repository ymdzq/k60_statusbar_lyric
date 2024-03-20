.class public Lcom/android/settings/development/NrcaSwitchView;
.super Ljava/lang/Object;
.source "NrcaSwitchView.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final IS_MTK:Z


# instance fields
.field private mButtonNrca:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPrefGroup:Landroidx/preference/PreferenceGroup;

.field private mSlotId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmButtonNrca(Lcom/android/settings/development/NrcaSwitchView;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/NrcaSwitchView;->mButtonNrca:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/development/NrcaSwitchView;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/NrcaSwitchView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/android/settings/development/NrcaSwitchView;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/development/NrcaSwitchView;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$misNrCAEnabled(Lcom/android/settings/development/NrcaSwitchView;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/NrcaSwitchView;->isNrCAEnabled(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "vendor"

    .line 26
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/development/NrcaSwitchView;->IS_MTK:Z

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;Landroid/content/Context;I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/settings/development/NrcaSwitchView;->mHandler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lcom/android/settings/development/NrcaSwitchView;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 38
    iput p3, p0, Lcom/android/settings/development/NrcaSwitchView;->mSlotId:I

    .line 39
    iput-object p2, p0, Lcom/android/settings/development/NrcaSwitchView;->mContext:Landroid/content/Context;

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "nrca_switch"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/settings/development/NrcaSwitchView;->mSlotId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/NrcaSwitchView;->mButtonNrca:Landroidx/preference/SwitchPreference;

    .line 41
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/NrcaSwitchView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getSubId(I)I
    .locals 1

    .line 151
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    array-length p1, p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 154
    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private isNrCAEnabled(I)Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    const-string/jumbo v0, "miui.telephony.TelephonyManagerEx"

    .line 116
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefault"

    const/4 v2, 0x0

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 119
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isNrCAEnabled"

    new-array v4, v3, [Ljava/lang/Class;

    .line 120
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p0

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "NrcaSwitchView"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNrCAEnabled rst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private isUserFiveGEnabled(I)Z
    .locals 6

    const/4 p0, 0x0

    :try_start_0
    const-string/jumbo v0, "miui.telephony.TelephonyManagerEx"

    .line 101
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDefault"

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 103
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 104
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isUserFiveGEnabled"

    new-array v4, v3, [Ljava/lang/Class;

    .line 105
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, p0

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 107
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

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private setUserNrCAEnabled(II)V
    .locals 9

    .line 132
    invoke-direct {p0, p2}, Lcom/android/settings/development/NrcaSwitchView;->getSubId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "miui.telephony.TelephonyManagerEx"

    .line 135
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    .line 136
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 138
    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "setUserNrCAEnabled"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 139
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v5, [Ljava/lang/Object;

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p0, p0, Lcom/android/settings/development/NrcaSwitchView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "button_5G_carrier_aggregation"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 145
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    const/4 p2, 0x0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/NrcaSwitchView;->mButtonNrca:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 49
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 50
    :goto_0
    iget v0, p0, Lcom/android/settings/development/NrcaSwitchView;->mSlotId:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/NrcaSwitchView;->setUserNrCAEnabled(II)V

    .line 52
    :cond_1
    sget-boolean p1, Lcom/android/settings/development/NrcaSwitchView;->IS_MTK:Z

    if-eqz p1, :cond_2

    .line 53
    iget-object p0, p0, Lcom/android/settings/development/NrcaSwitchView;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->nrca_need_reset:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v1

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public shouldEnableNrcaSwitch()Z
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/settings/development/NrcaSwitchView;->mContext:Landroid/content/Context;

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

    .line 89
    :goto_0
    iget v3, p0, Lcom/android/settings/development/NrcaSwitchView;->mSlotId:I

    invoke-static {v3}, Lcom/android/settings/msim/MSimUtils;->isIccCardActivated(I)Z

    move-result v3

    if-nez v0, :cond_3

    if-nez v3, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    iget v0, p0, Lcom/android/settings/development/NrcaSwitchView;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/settings/development/NrcaSwitchView;->isUserFiveGEnabled(I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "NrcaSwitchView"

    const-string v0, "disable vonr button because sa is turned off"

    .line 93
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public updateNrcaButtonUI()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/NrcaSwitchView;->mButtonNrca:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/NrcaSwitchView;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nrca_switch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/development/NrcaSwitchView;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/settings/development/NrcaSwitchView;->mPrefGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/development/NrcaSwitchView;->mButtonNrca:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/development/NrcaSwitchView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/NrcaSwitchView$1;-><init>(Lcom/android/settings/development/NrcaSwitchView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
