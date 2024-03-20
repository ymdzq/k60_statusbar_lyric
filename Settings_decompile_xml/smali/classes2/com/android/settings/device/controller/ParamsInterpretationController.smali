.class public Lcom/android/settings/device/controller/ParamsInterpretationController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ParamsInterpretationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;
    }
.end annotation


# static fields
.field private static final ASSETS_JSON:Ljava/lang/String; = "device_link.json"

.field public static final AUTHORITY:Ljava/lang/String; = "content://com.xiaomi.vipaccount.provider/device_link"

.field private static final MI_FEN_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.vipaccount"

.field private static final PREF_FILE:Ljava/lang/String; = "ParamsInterpretationPref"

.field private static final PREF_KEY_PARAMS:Ljava/lang/String; = "PREF_KEY_PARAMS"

.field private static final TAG:Ljava/lang/String; = "ParamsInterpretationCon"


# instance fields
.field private deviceEntranceBean:Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;


# direct methods
.method static bridge synthetic -$$Nest$mqueryRemoteMifenDeviceInfo(Lcom/android/settings/device/controller/ParamsInterpretationController;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/ParamsInterpretationController;->queryRemoteMifenDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveDeviceInfo(Lcom/android/settings/device/controller/ParamsInterpretationController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/ParamsInterpretationController;->saveDeviceInfo(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUi(Lcom/android/settings/device/controller/ParamsInterpretationController;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/device/controller/ParamsInterpretationController;->updateUi(Landroidx/preference/Preference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "device_params_interpretation"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settings/device/controller/ParamsInterpretationController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->isNotSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->syncDeviceBean()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/device/controller/ParamsInterpretationController;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private queryRemoteMifenDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const-string v0, "h5Url"

    const-string/jumbo v1, "mioUrl"

    const-string v2, "ParamsInterpretationCon"

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "queryRemoteMifenDeviceInfo"

    .line 199
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string p1, "content://com.xiaomi.vipaccount.provider/device_link"

    .line 201
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 p1, 0x3

    new-array v7, p1, [Ljava/lang/String;

    const-string p1, "deviceNo"

    const/4 v4, 0x0

    aput-object p1, v7, v4

    const/4 p1, 0x1

    aput-object v1, v7, p1

    const/4 p1, 0x2

    aput-object v0, v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 204
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device: query success,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v4, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    invoke-direct {v4}, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :try_start_2
    iput-object v0, v4, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->h5Url:Ljava/lang/String;

    .line 210
    iput-object v1, v4, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->mioUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, p1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v3

    :goto_0
    move-object v3, p1

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz p1, :cond_2

    .line 216
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v3

    :goto_2
    :try_start_3
    const-string p1, "Device: query failed, %s"

    .line 213
    invoke-static {v2, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 216
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v3, v4

    .line 219
    :cond_2
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/settings/device/controller/ParamsInterpretationController;->jsonObjToString(Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_4
    if-eqz v3, :cond_3

    .line 216
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_3
    throw p0
.end method

.method private saveDeviceInfo(Ljava/lang/String;)V
    .locals 2

    .line 176
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "ParamsInterpretationPref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 177
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "PREF_KEY_PARAMS"

    .line 178
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startMifenApp(Ljava/lang/String;)V
    .locals 2

    .line 140
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateUi(Landroidx/preference/Preference;)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->syncDeviceBean()V

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->isShowEntrance()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected deviceJsonObjToBean(Lorg/json/JSONObject;)Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;
    .locals 1

    .line 111
    new-instance p0, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    invoke-direct {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "h5Url"

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->h5Url:Ljava/lang/String;

    const-string/jumbo v0, "mioUrl"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->mioUrl:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->isNotSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/device/controller/ParamsInterpretationController;->syncMifenDeviceInfo(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->isNotSupport()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->isShowEntrance()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->isShowEntrance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->isMifenAppSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController;->deviceEntranceBean:Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    iget-object v0, v0, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->mioUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController;->deviceEntranceBean:Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    iget-object v0, v0, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->h5Url:Ljava/lang/String;

    .line 73
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "link"

    .line 74
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "miui_settings_mifen"

    .line 75
    invoke-static {v2, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->startMifenApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    const-string v1, "ParamsInterpretationCon"

    const-string/jumbo v2, "stat mifen app error"

    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected isMifenAppSupport()Z
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xiaomi.vipaccount"

    invoke-static {v0, v1}, Lcom/android/settings/usagestats/utils/CommonUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/android/settings/usagestats/utils/CommonUtils;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v3, 0x4e20

    cmp-long p0, v0, v3

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isNotSupport()Z
    .locals 0

    .line 232
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method protected isShowEntrance()Z
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController;->deviceEntranceBean:Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method protected jsonObjToString(Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "h5Url"

    .line 125
    iget-object v2, p1, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->h5Url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "mioUrl"

    .line 126
    iget-object p1, p1, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->mioUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "jsonObjToString"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ParamsInterpretationCon"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p0
.end method

.method protected queryDeviceBean()Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;
    .locals 4

    const-string v0, "ParamsInterpretationCon"

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->queryLocalDeviceInfo()Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "device_link.json"

    invoke-static {v2, v3}, Lcom/android/settings/utils/AssetsResourcesLoadUtil;->loadJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/settings/device/controller/ParamsInterpretationController;->deviceJsonObjToBean(Lorg/json/JSONObject;)Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    move-result-object v1

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json parse success"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->mioUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json parse error==>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public queryLocalDeviceInfo()Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "ParamsInterpretationPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_KEY_PARAMS"

    const-string v2, ""

    .line 184
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 189
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/device/controller/ParamsInterpretationController;->deviceJsonObjToBean(Lorg/json/JSONObject;)Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method protected syncDeviceBean()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->queryDeviceBean()Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController;->deviceEntranceBean:Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->jsonObjToString(Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->saveDeviceInfo(Ljava/lang/String;)V

    return-void
.end method

.method protected syncMifenDeviceInfo(Landroidx/preference/Preference;)V
    .locals 1

    .line 146
    new-instance v0, Lcom/android/settings/device/controller/ParamsInterpretationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/device/controller/ParamsInterpretationController$1;-><init>(Lcom/android/settings/device/controller/ParamsInterpretationController;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
