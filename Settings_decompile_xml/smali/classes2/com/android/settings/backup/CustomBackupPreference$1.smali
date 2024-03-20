.class Lcom/android/settings/backup/CustomBackupPreference$1;
.super Ljava/lang/Object;
.source "CustomBackupPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/backup/CustomBackupPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/CustomBackupPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/CustomBackupPreference;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/backup/CustomBackupPreference$1;->this$0:Lcom/android/settings/backup/CustomBackupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 39
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/backup/CustomBackupPreference$1;->this$0:Lcom/android/settings/backup/CustomBackupPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->enable_local_backup_title:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 40
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->enable_local_backup_message_intledition:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->enable_local_backup_message:I

    :goto_0
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->enable_local_backup_cancel:I

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->enable_local_backup_ok:I

    new-instance v1, Lcom/android/settings/backup/CustomBackupPreference$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/backup/CustomBackupPreference$1$1;-><init>(Lcom/android/settings/backup/CustomBackupPreference$1;)V

    .line 42
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
