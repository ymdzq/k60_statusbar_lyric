.class Lcom/android/settings/SettingsApplication$InitTask;
.super Landroid/os/AsyncTask;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/SettingsApplication;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsApplication;Landroid/content/Context;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 426
    iput-object p2, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 431
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isAlienTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/TabletUtils;->attachApplication(Landroid/content/Context;)V

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->initMiStatistics(Landroid/content/Context;)V

    .line 436
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->init(Landroid/content/Context;)V

    .line 437
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-static {p1}, Lcom/android/settings/SettingsApplication;->-$$Nest$mensureOpenSmMonitor(Lcom/android/settings/SettingsApplication;)V

    .line 438
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/personal/FullScreenDisplayController;->initInfinityDisplaySettings(Landroid/content/Context;)V

    .line 441
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    iget-object v0, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/SettingsApplication;->-$$Nest$mdeleteV5Shortcuts(Lcom/android/settings/SettingsApplication;Landroid/content/Context;)V

    .line 444
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    iget-object v0, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsApplication;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.settings:remote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 449
    :cond_1
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/recommend/RecommendManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/recommend/RecommendManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/recommend/RecommendManager;->loadRecommendList()V

    .line 452
    :goto_0
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_2

    const p1, 0xabed

    .line 454
    invoke-static {p1}, Lcom/android/settings/JobDispatcher;->addJobToSchedule(I)V

    .line 458
    :cond_2
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/SDCardStateUploader;->canUploadSDCardState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 459
    new-instance p1, Lcom/android/settings/deviceinfo/SDCardStateUploader;

    iget-object v0, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/deviceinfo/SDCardStateUploader;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/SDCardStateUploader;->upload()V

    .line 464
    :cond_3
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->enableShowCredentials()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0xabe4

    .line 465
    invoke-static {p1}, Lcom/android/settings/JobDispatcher;->addJobToSchedule(I)V

    .line 468
    :cond_4
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->isDangerousOptionsHintEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0xabeb

    .line 469
    invoke-static {p1}, Lcom/android/settings/JobDispatcher;->addJobToSchedule(I)V

    .line 473
    :cond_5
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/JobDispatcher;->commit(Landroid/content/Context;)Z

    .line 476
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/settings/SettingsApplication;->PROC_USER_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/SettingsApplication;->-$$Nest$sfgetHEADSETPLUGIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SettingsApplication;->-$$Nest$sfgetHEADSETPLUGIN_ENABLE()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 478
    iget-object v0, p0, Lcom/android/settings/SettingsApplication$InitTask;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-static {}, Lcom/android/settings/SettingsApplication;->-$$Nest$sfgetHEADSETPLUGIN_ENABLE()I

    move-result v1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/settings/SettingsApplication;->-$$Nest$mupdateCloud(Lcom/android/settings/SettingsApplication;ZLandroid/content/Context;)V

    .line 481
    iget-object p0, p0, Lcom/android/settings/SettingsApplication$InitTask;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibility/MiuiAccessibilityUtil;->doShieldShortcut(Landroid/content/Context;)V

    .line 482
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 421
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsApplication$InitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 421
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsApplication$InitTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
