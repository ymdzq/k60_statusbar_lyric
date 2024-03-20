.class public Lcom/android/settings/smarthome/SmartHomePreferenceManager;
.super Ljava/lang/Object;
.source "SmartHomePreferenceManager.java"


# instance fields
.field private final mAddDeviceLockedFlags:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mFeatureControlsSupported:Z

.field private mHandler:Landroid/os/Handler;

.field private final mIsControlsSupported:Z

.field private final mMiuiDeviceControlVersion:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$15r_SLHEojehFNk_rXE1QESqKxc(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->lambda$updateDeviceControl$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UohWcgaIwhppbfd6Qo2xQvfrVwI(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Lmiuix/preference/DropDownPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->lambda$updateSmartHome$0(Lmiuix/preference/DropDownPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mperformClick(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Lmiuix/preference/DropDownPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->performClick(Lmiuix/preference/DropDownPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 96
    iput-boolean p2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mAddDeviceLockedFlags:Z

    const-string p2, "android.software.controls"

    .line 97
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mFeatureControlsSupported:Z

    .line 98
    invoke-static {p1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->getMiuiDeviceControlVersion(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mMiuiDeviceControlVersion:I

    const-string p2, "SMART_CONTROLS_SUPPORT"

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mIsControlsSupported:Z

    .line 101
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mView:Landroid/view/View;

    .line 102
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getControlsAction()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "android.service.controls.ControlsProviderService"

    return-object p0
.end method

.method private getDefaultValue()Ljava/lang/String;
    .locals 0

    .line 315
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "com.xiaomi.smarthome/com.xiaomi.smarthome.controls.MiControlsProviderService"

    :goto_0
    return-object p0
.end method

.method public static getMiuiDeviceControlVersion(Landroid/content/Context;)I
    .locals 4

    const-string v0, "MiuiDeviceControlSettings"

    const/4 v1, 0x0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v2, "miui.systemui.plugin"

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 322
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "miui_device_control"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    const-string p0, "get miui device control version failed."

    .line 326
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "miui device control version "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDeviceControlEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_controls"

    const/4 v1, -0x1

    .line 240
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "smart_home"

    .line 242
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "none"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_0
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isMiuiDeviceControl()Z
    .locals 2

    .line 197
    iget v0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mMiuiDeviceControlVersion:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mFeatureControlsSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSmartHome()Z
    .locals 2

    .line 193
    iget v0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mMiuiDeviceControlVersion:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mIsControlsSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateDeviceControl$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->setDeviceControlEnabled(Landroid/content/Context;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$updateSmartHome$0(Lmiuix/preference/DropDownPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 126
    check-cast p3, Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "smart_home"

    .line 129
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private performClick(Lmiuix/preference/DropDownPreference;)V
    .locals 6

    .line 202
    :try_start_0
    const-class v0, Lmiuix/preference/DropDownPreference;

    const-string/jumbo v1, "performClick"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 205
    iget-object p0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mView:Landroid/view/View;

    aput-object p0, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiDeviceControlSettings"

    const-string p1, "Call DropDownPreference.performClick failed."

    .line 207
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private reloadServices(Lmiuix/preference/DropDownPreference;)V
    .locals 6

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 256
    iget-boolean v2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mAddDeviceLockedFlags:Z

    if-eqz v2, :cond_0

    const v2, 0xc0084

    goto :goto_0

    :cond_0
    const/16 v2, 0x84

    .line 260
    :goto_0
    iget-object v3, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 261
    new-instance v4, Landroid/content/Intent;

    .line 262
    invoke-direct {p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->getControlsAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v3, v4, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 264
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 265
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.permission.BIND_CONTROLS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->reloadSmartHome(Lmiuix/preference/DropDownPreference;Ljava/util/List;)V

    return-void
.end method

.method private reloadSmartHome(Lmiuix/preference/DropDownPreference;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/preference/DropDownPreference;",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 282
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 283
    new-array v2, v1, [Ljava/lang/String;

    .line 284
    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "none"

    const/4 v5, 0x0

    .line 285
    aput-object v4, v2, v5

    .line 286
    iget-object v4, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->smart_home_value_none:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    move v4, v5

    :goto_0
    if-ge v4, v0, :cond_0

    .line 288
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ServiceInfo;

    add-int/lit8 v4, v4, 0x1

    .line 289
    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 291
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x80

    .line 292
    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 291
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 295
    iget-object v7, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->smart_home_value_unknown:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 296
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1, v2}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {p1, v3}, Lmiuix/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 301
    iget-object p2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "smart_home"

    .line 302
    invoke-static {p2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 303
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->getDefaultValue()Ljava/lang/String;

    move-result-object p2

    .line 306
    :cond_1
    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_3

    if-lt p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, p0

    .line 310
    :cond_3
    :goto_1
    invoke-virtual {p1, v5}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    :cond_4
    return-void
.end method

.method public static setDeviceControlEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_controls"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onCreate(Lmiuix/preference/DropDownPreference;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public updateDeviceControl(Landroidx/preference/CheckBoxPreference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->isMiuiDeviceControl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->isDeviceControlEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 158
    new-instance v0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/smarthome/SmartHomePreferenceManager;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 163
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public updateSmartHome(Lmiuix/preference/DropDownPreference;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->isSmartHome()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 125
    new-instance v2, Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Lmiuix/preference/DropDownPreference;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->reloadServices(Lmiuix/preference/DropDownPreference;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_show_apps"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 135
    iget-object v2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_1

    .line 137
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/smarthome/SmartHomePreferenceManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager$1;-><init>(Lcom/android/settings/smarthome/SmartHomePreferenceManager;Lmiuix/preference/DropDownPreference;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_0
    return-void
.end method
