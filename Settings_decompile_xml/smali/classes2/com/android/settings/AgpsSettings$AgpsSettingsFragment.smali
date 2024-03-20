.class public Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AgpsSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AgpsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AgpsSettingsFragment"
.end annotation


# instance fields
.field private mAssistedType:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFirstTime:Z

.field private mNetworkType:Ljava/lang/String;

.field private mPort:Landroidx/preference/EditTextPreference;

.field private mResetType:Ljava/lang/String;

.field private mServer:Landroidx/preference/EditTextPreference;


# direct methods
.method static bridge synthetic -$$Nest$mrestoreAgpsParam(Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->restoreAgpsParam()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveAgpsParams(Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->saveAgpsParams()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private SetValue(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "host"

    .line 383
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "port"

    .line 384
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "providerid"

    .line 385
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "network"

    .line 386
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "resettype"

    .line 387
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "assisted_gps_supl_host"

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 389
    iget-object v5, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->location_agps_def_supl_host:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    const-string v0, "assisted_gps_supl_port"

    if-eqz v1, :cond_1

    .line 396
    iget-object v4, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->location_agps_def_supl_port:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-static {v1, v0, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    if-eqz v2, :cond_2

    .line 402
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_position_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    if-eqz v3, :cond_3

    .line 406
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz p1, :cond_6

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "HOT"

    .line 411
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "2"

    goto :goto_2

    :cond_4
    const-string v0, "WARM"

    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "1"

    goto :goto_2

    :cond_5
    const-string p1, "0"

    .line 418
    :goto_2
    iget-object p0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "assisted_gps_reset_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 184
    invoke-static {}, Lcom/android/settings/AgpsSettings;->-$$Nest$sfgetsNotSet()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {}, Lcom/android/settings/AgpsSettings;->-$$Nest$sfgetsNotSet()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private fillUi(Z)V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mFirstTime:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mFirstTime:Z

    .line 157
    iget-object p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mServer:Landroidx/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->getSuplServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mPort:Landroidx/preference/EditTextPreference;

    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->getSuplPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->setPrefAgpsType()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->setPrefAgpsNetwork()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->setPrefAgpsResetType()V

    return-void
.end method

.method private getPrefAgpsResetType()Ljava/lang/String;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_reset_type"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "2"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "HOT"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WARM"

    goto :goto_0

    :cond_1
    const-string v0, "COLD"

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 236
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->location_agps_def_reset_type:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getPrefAgpsType()Ljava/lang/String;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_position_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->location_agps_def_location_mode:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getPrefNetwork()Ljava/lang/String;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->location_agps_def_network_mode:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getSuplPort()Ljava/lang/String;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_supl_port"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->location_agps_def_supl_port:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getSuplServer()Ljava/lang/String;
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assisted_gps_supl_host"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->location_agps_def_supl_host:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "SUPL_HOST"

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->getPropertyFromGpsConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_0
    sget-boolean p0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    :cond_3
    return-object v1
.end method

.method private restoreAgpsParam()V
    .locals 7

    const-string v0, "AGPSSettings"

    .line 318
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 321
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 322
    new-instance v4, Ljava/io/File;

    const-string v5, "/etc/gps.conf"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "host"

    const-string v6, "SUPL_HOST"

    .line 325
    invoke-virtual {v3, v6, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "port"

    const-string v6, "SUPL_PORT"

    .line 326
    invoke-virtual {v3, v6, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    .line 329
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_0

    goto :goto_0

    :catch_2
    :cond_0
    :goto_2
    const-string v2, "MSB"

    .line 338
    iput-object v2, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mAssistedType:Ljava/lang/String;

    const-string v3, "HOME"

    .line 339
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mNetworkType:Ljava/lang/String;

    const-string v3, "HOT"

    .line 340
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    const-string/jumbo v4, "providerid"

    .line 341
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "network"

    .line 342
    iget-object v4, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    const-string/jumbo v4, "resettype"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, v1}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->SetValue(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    .line 345
    invoke-direct {p0, v2}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->fillUi(Z)V

    const-string v2, "location"

    .line 347
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 348
    iget-object v5, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "2"

    .line 349
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 350
    :cond_1
    iget-object p0, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    const-string v3, "WARM"

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "1"

    .line 351
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string p0, "0"

    .line 353
    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p0, "gps"

    const-string v3, "agps_parms_changed"

    .line 355
    invoke-virtual {v2, p0, v3, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendExtraCommand ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    move-object v2, v5

    :goto_4
    if-eqz v2, :cond_3

    .line 333
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 337
    :catch_3
    :cond_3
    throw p0
.end method

.method private saveAgpsParams()V
    .locals 4

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mServer:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mPort:Landroidx/preference/EditTextPreference;

    invoke-virtual {v1}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "providerid"

    .line 300
    iget-object v2, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mAssistedType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "network"

    .line 301
    iget-object v2, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->SetValue(Landroid/os/Bundle;)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    const-string v2, "HOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "resettype"

    if-nez v1, :cond_0

    const-string v1, "2"

    .line 304
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    const-string v3, "WARM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    .line 306
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "0"

    .line 308
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "location"

    .line 311
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "agps_parms_changed"

    .line 312
    invoke-virtual {p0, v1, v2, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendExtraCommand ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AGPSSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setPrefAgpsNetwork()V
    .locals 3

    const-string v0, "agps_network"

    .line 122
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 123
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->agps_network_entries:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->getPrefNetwork()Ljava/lang/String;

    move-result-object v2

    .line 126
    iput-object v2, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mNetworkType:Ljava/lang/String;

    const-string p0, "ALL"

    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    .line 128
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 129
    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 131
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 132
    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setPrefAgpsResetType()V
    .locals 3

    const-string v0, "agps_reset_type"

    .line 137
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 138
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->agps_reset_type_entries:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->getPrefAgpsResetType()Ljava/lang/String;

    move-result-object v2

    .line 141
    iput-object v2, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    const-string p0, "COLD"

    .line 142
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "2"

    .line 143
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 144
    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p0, "WARM"

    .line 145
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    .line 146
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 147
    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p0, "0"

    .line 149
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 150
    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setPrefAgpsType()V
    .locals 3

    const-string v0, "agps_pref"

    .line 102
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 103
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->agps_si_mode_entries:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->getPrefAgpsType()Ljava/lang/String;

    move-result-object v2

    .line 108
    iput-object v2, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mAssistedType:Ljava/lang/String;

    const-string p0, "MSB"

    .line 109
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0"

    .line 110
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 111
    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p0, "MSA"

    .line 112
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    .line 113
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 114
    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p0, "2"

    .line 116
    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const-string p0, ""

    .line 117
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPropertyFromGpsConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    .line 364
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 365
    new-instance v1, Ljava/io/File;

    const-string v2, "/etc/gps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 368
    invoke-virtual {v0, p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, p0

    :goto_1
    :try_start_3
    const-string v0, "AGPSSettings"

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open GPS configuration file /etc/gps.conf, e="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_2
    :cond_0
    :goto_2
    return-object p0

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v2, :cond_1

    .line 374
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 378
    :catch_3
    :cond_1
    throw p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mFirstTime:Z

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 80
    sget p1, Lcom/android/settings/R$xml;->agps_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "server_addr"

    .line 82
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    iput-object p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mServer:Landroidx/preference/EditTextPreference;

    const-string/jumbo p1, "server_port"

    .line 83
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    iput-object p1, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mPort:Landroidx/preference/EditTextPreference;

    const/4 p1, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->fillUi(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 97
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 248
    instance-of v0, p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 249
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 250
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 252
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 253
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "agps_network"

    .line 255
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$array;->agps_network_entries:I

    .line 257
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_0

    const-string v3, "HOME"

    .line 259
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mNetworkType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne v2, v1, :cond_1

    const-string v3, "ALL"

    .line 261
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mNetworkType:Ljava/lang/String;

    :cond_1
    :goto_0
    if-ne v2, v1, :cond_7

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v3, Lcom/android/settings/R$string;->location_agps_roaming_help:I

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const-string v3, "agps_reset_type"

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$array;->agps_reset_type_entries:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_3

    const-string v3, "HOT"

    .line 271
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-ne v2, v1, :cond_4

    const-string v3, "WARM"

    .line 273
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, "COLD"

    .line 275
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mResetType:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v3, "agps_pref"

    .line 277
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$array;->agps_si_mode_entries:I

    .line 279
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_6

    const-string v3, "MSB"

    .line 281
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mAssistedType:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-ne v2, v1, :cond_7

    const-string v3, "MSA"

    .line 283
    iput-object v3, p0, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->mAssistedType:Ljava/lang/String;

    .line 289
    :cond_7
    :goto_1
    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 290
    aget-object p0, v0, v2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :cond_8
    return v1
.end method

.method public onResume()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 90
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 171
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/AgpsSettings$AgpsSettingsFragment;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
