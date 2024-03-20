.class Lcom/android/settings/backup/MiuiLocalBackupController$1;
.super Ljava/lang/Object;
.source "MiuiLocalBackupController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/backup/MiuiLocalBackupController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/MiuiLocalBackupController;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/MiuiLocalBackupController;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/backup/MiuiLocalBackupController$1;->this$0:Lcom/android/settings/backup/MiuiLocalBackupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 36
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 37
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/MiuiLocalBackupController$1;->this$0:Lcom/android/settings/backup/MiuiLocalBackupController;

    invoke-static {v0}, Lcom/android/settings/backup/MiuiLocalBackupController;->access$000(Lcom/android/settings/backup/MiuiLocalBackupController;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/backup/MiuiLocalBackupController$1;->this$0:Lcom/android/settings/backup/MiuiLocalBackupController;

    .line 38
    invoke-static {v0}, Lcom/android/settings/backup/MiuiLocalBackupController;->access$100(Lcom/android/settings/backup/MiuiLocalBackupController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000000

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/MiuiLocalBackupController$1;->this$0:Lcom/android/settings/backup/MiuiLocalBackupController;

    invoke-static {p0}, Lcom/android/settings/backup/MiuiLocalBackupController;->access$200(Lcom/android/settings/backup/MiuiLocalBackupController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
