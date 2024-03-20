.class Lcom/android/settings/backup/CustomBackupPreference$1$1;
.super Ljava/lang/Object;
.source "CustomBackupPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/backup/CustomBackupPreference$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/backup/CustomBackupPreference$1;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/CustomBackupPreference$1;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/backup/CustomBackupPreference$1$1;->this$1:Lcom/android/settings/backup/CustomBackupPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/backup/CustomBackupPreference$1$1;->this$1:Lcom/android/settings/backup/CustomBackupPreference$1;

    iget-object p0, p0, Lcom/android/settings/backup/CustomBackupPreference$1;->this$0:Lcom/android/settings/backup/CustomBackupPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "local_backup_disable_service"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method
