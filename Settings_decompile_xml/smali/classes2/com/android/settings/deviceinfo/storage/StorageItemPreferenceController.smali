.class public Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StorageItemPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$OnEmptyTrashCompleteListener;


# static fields
.field static final APPS_KEY:Ljava/lang/String; = "pref_apps"

.field static final AUDIO_KEY:Ljava/lang/String; = "pref_audio"

.field static final DOCUMENTS_AND_OTHER_KEY:Ljava/lang/String; = "pref_documents_and_other"

.field static final GAMES_KEY:Ljava/lang/String; = "pref_games"

.field static final IMAGES_KEY:Ljava/lang/String; = "pref_images"

.field static final PUBLIC_STORAGE_KEY:Ljava/lang/String; = "pref_public_storage"

.field static final SYSTEM_KEY:Ljava/lang/String; = "pref_system"

.field static final TRASH_KEY:Ljava/lang/String; = "pref_trash"

.field static final VIDEOS_KEY:Ljava/lang/String; = "pref_videos"


# instance fields
.field mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mAudioUri:Landroid/net/Uri;

.field mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mDocumentsAndOtherUri:Landroid/net/Uri;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mImagesUri:Landroid/net/Uri;

.field private mIsDocumentsPrefShown:Z

.field private mIsPreferenceOrderedBySize:Z

.field private mIsWorkProfile:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrivateStorageItemPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/StorageItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field mPublicStoragePreference:Landroidx/preference/Preference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

.field private final mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

.field mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mTotalSize:J

.field mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field private mUsedBytes:J

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

.field final mVideosUri:Landroid/net/Uri;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroid/os/storage/VolumeInfo;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Z)V
    .locals 1

    .line 147
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 149
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 150
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 151
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 152
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    .line 153
    iput-boolean p5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    .line 154
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getCurrentUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "StorageItemPreference"

    const-string p4, "StorageItemPreferenceController: "

    .line 160
    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isDocumentsPrefShown()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsDocumentsPrefShown:Z

    .line 165
    new-instance p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p4, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-direct {p2, p3, p4}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->config_images_storage_category_uri:I

    .line 168
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 167
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesUri:Landroid/net/Uri;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->config_videos_storage_category_uri:I

    .line 170
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosUri:Landroid/net/Uri;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->config_audio_storage_category_uri:I

    .line 172
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioUri:Landroid/net/Uri;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->config_documents_and_other_storage_category_uri:I

    .line 174
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherUri:Landroid/net/Uri;

    return-void
.end method

.method private getSizeInfo(Landroid/util/SparseArray;I)Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;I)",
            "Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 424
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->retrieveCachedSize()Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    move-result-object p0

    return-object p0

    .line 426
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    .line 427
    new-instance v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;-><init>()V

    .line 428
    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->imagesSize:J

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->imagesSize:J

    .line 429
    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->videosSize:J

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->videosSize:J

    .line 430
    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->audioSize:J

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->audioSize:J

    .line 431
    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->allAppsExceptGamesSize:J

    .line 432
    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->gamesSize:J

    .line 433
    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->documentsAndOtherSize:J

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->documentsAndOtherSize:J

    .line 434
    iget-wide v1, p2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->trashSize:J

    iput-wide v1, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->trashSize:J

    const-wide/16 v1, 0x0

    const/4 p2, 0x0

    .line 438
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p2, v3, :cond_1

    .line 439
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;

    .line 440
    iget-wide v4, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->gamesSize:J

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->audioSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->videosSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->imagesSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->documentsAndOtherSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->trashSize:J

    add-long/2addr v4, v6

    iget-wide v6, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->allAppsExceptGamesSize:J

    add-long/2addr v4, v6

    add-long/2addr v1, v4

    .line 448
    iget-wide v3, v3, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;->duplicateCodeSize:J

    sub-long/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 450
    :cond_1
    sget-object p1, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide p1

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->systemSize:J

    return-object v0
.end method

.method private getWorkAnnotatedBundle(I)Landroid/os/Bundle;
    .locals 1

    .line 508
    new-instance v0, Landroid/os/Bundle;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(I)V

    .line 510
    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    const-string p1, ":settings:show_fragment_tab"

    .line 509
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private isDocumentsPrefShown()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSvp:Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, p0}, Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidPrivateVolume()Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 256
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 257
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isValidPublicVolume()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 265
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 266
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 267
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchActivityWithUri(Landroid/net/Uri;)V
    .locals 2

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 474
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private launchAppsIntent()V
    .locals 3

    const/4 v0, 0x3

    .line 478
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 479
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 479
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeUuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "volumeName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 484
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->apps_storage:I

    .line 485
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 486
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 487
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    .line 489
    iget v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method private launchGamesIntent()V
    .locals 3

    const/4 v0, 0x1

    .line 494
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getWorkAnnotatedBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 495
    const-class v1, Lcom/android/settings/Settings$GamesStorageActivity;

    .line 496
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "classname"

    .line 495
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 498
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->game_storage_settings:I

    .line 499
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 500
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 501
    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    .line 503
    iget v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 504
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method

.method private launchPublicStorageIntent()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private launchTrashIntent()V
    .locals 10

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VIEW_TRASH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getStorageSize()J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    .line 520
    new-instance v0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    iget v6, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    move-object v4, v0

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;-><init>(Landroidx/fragment/app/Fragment;IJLcom/android/settings/deviceinfo/storage/EmptyTrashFragment$OnEmptyTrashCompleteListener;)V

    .line 521
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->show()V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->storage_trash_dialog_empty_message:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 524
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method private updatePrivateStorageCategoryPreferencesOrder()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isValidPrivateVolume()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    .line 306
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 316
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 317
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 318
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 319
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 320
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 321
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 322
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 325
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    new-instance v1, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController$$ExternalSyntheticLambda0;-><init>()V

    .line 326
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPrivateStorageItemPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0xc8

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageItemPreference;

    add-int/lit8 v3, v1, -0x1

    .line 329
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 330
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 371
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "pref_public_storage"

    .line 372
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPublicStoragePreference:Landroidx/preference/Preference;

    const-string/jumbo v0, "pref_images"

    .line 373
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string/jumbo v0, "pref_videos"

    .line 374
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string/jumbo v0, "pref_audio"

    .line 375
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string/jumbo v0, "pref_apps"

    .line 376
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string/jumbo v0, "pref_games"

    .line 377
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string/jumbo v0, "pref_documents_and_other"

    .line 378
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string/jumbo v0, "pref_system"

    .line 379
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const-string/jumbo v0, "pref_trash"

    .line 380
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageItemPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    return-void
.end method

.method getCurrentUserId()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->getCurrentUserId(Landroid/os/UserManager;Z)I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 189
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "pref_videos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v2, "pref_system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "pref_documents_and_other"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "pref_images"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "pref_public_storage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "pref_apps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "pref_trash"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "pref_games"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v4, v3

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "pref_audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 200
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v3

    .line 215
    :pswitch_1
    new-instance p1, Lcom/android/settings/deviceinfo/storage/StorageUtils$SystemInfoFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils$SystemInfoFragment;-><init>()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 217
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SystemInfo"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    .line 212
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v3

    .line 197
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v3

    .line 194
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchPublicStorageIntent()V

    return v3

    .line 206
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchAppsIntent()V

    return v3

    .line 220
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchTrashIntent()V

    return v3

    .line 209
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchGamesIntent()V

    return v3

    .line 203
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->launchActivityWithUri(Landroid/net/Uri;)V

    return v3

    :sswitch_data_0
    .sparse-switch
        -0x6228c546 -> :sswitch_8
        -0x61dd2e5b -> :sswitch_7
        -0x611e6de4 -> :sswitch_6
        -0x4d7d40f2 -> :sswitch_5
        -0x36b1fbbf -> :sswitch_4
        0x2a44c014 -> :sswitch_3
        0x377565c5 -> :sswitch_2
        0x3c06afcb -> :sswitch_1
        0x403cb8f4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onEmptyTrashComplete()V
    .locals 6

    .line 533
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    .line 536
    iget-wide v3, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    .line 537
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->updatePrivateStorageCategoryPreferencesOrder()V

    return-void
.end method

.method public onLoadFinished(Landroid/util/SparseArray;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$StorageResult;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 393
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsPreferenceOrderedBySize:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 395
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->getSizeInfo(Landroid/util/SparseArray;I)Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;

    move-result-object p2

    .line 397
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->imagesSize:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    .line 398
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->videosSize:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    .line 399
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->audioSize:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    .line 400
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->allAppsExceptGamesSize:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    .line 401
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->gamesSize:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    .line 402
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->documentsAndOtherSize:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    .line 404
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-wide v3, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->trashSize:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    .line 405
    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    if-eqz v2, :cond_1

    .line 406
    iget-wide v3, p2, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;->systemSize:J

    iget-wide v5, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setStorageSize(JJZ)V

    :cond_1
    if-eqz p1, :cond_2

    .line 410
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mStorageCacheHelper:Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;

    invoke-virtual {p1, p2}, Lcom/android/settings/deviceinfo/storage/StorageCacheHelper;->cacheSizeInfo(Lcom/android/settings/deviceinfo/storage/StorageCacheHelper$StorageCache;)V

    .line 414
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsPreferenceOrderedBySize:Z

    if-nez p1, :cond_3

    .line 415
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->updatePrivateStorageCategoryPreferencesOrder()V

    .line 416
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsPreferenceOrderedBySize:Z

    .line 418
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setPrivateStorageCategoryPreferencesVisibility(Z)V

    return-void
.end method

.method setPrivateStorageCategoryPreferencesVisibility(Z)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mImagesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVideosPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAudioPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mAppsPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mGamesPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mSystemPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTrashPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsDocumentsPrefShown:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mDocumentsAndOtherPreference:Lcom/android/settings/deviceinfo/StorageItemPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 460
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mTotalSize:J

    return-void
.end method

.method public setUsedSize(J)V
    .locals 0

    .line 456
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mUsedBytes:J

    return-void
.end method

.method public setVolume(Landroid/os/storage/VolumeInfo;)V
    .locals 2

    .line 237
    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 239
    iget-object p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mPublicStoragePreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isValidPublicVolume()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsWorkProfile:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isValidPrivateVolume()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->isDocumentsPrefShown()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->mIsDocumentsPrefShown:Z

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;->setPrivateStorageCategoryPreferencesVisibility(Z)V

    :goto_1
    return-void
.end method
