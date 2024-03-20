.class public Lcom/android/settings/MiuiMasterClear$UninstallTask;
.super Landroid/os/AsyncTask;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UninstallTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;,
        Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiMasterClear;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiMasterClear;)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1308
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$UninstallTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .line 1351
    new-instance p1, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;

    const/16 v0, 0x1388

    invoke-direct {p1, p0, v0}, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;-><init>(Lcom/android/settings/MiuiMasterClear$UninstallTask;I)V

    .line 1352
    new-instance v0, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/MiuiMasterClear$UninstallTask$DeleteObserver;-><init>(Lcom/android/settings/MiuiMasterClear$UninstallTask;Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;)V

    .line 1353
    iget-object v1, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1354
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1357
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v4, "package_delete_by_restore_phone"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 1359
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1360
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1364
    invoke-virtual {p1}, Lcom/android/settings/MiuiMasterClear$UninstallTask$Waitor;->waitInterval()V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1308
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiMasterClear$UninstallTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 1372
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmFactoryResetDialog(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1373
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$fgetmFactoryResetDialog(Lcom/android/settings/MiuiMasterClear;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1375
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClear$UninstallTask;->this$0:Lcom/android/settings/MiuiMasterClear;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClear;->-$$Nest$mdoFactoryReset(Lcom/android/settings/MiuiMasterClear;)V

    return-void
.end method
