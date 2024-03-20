.class Lcom/android/settings/backup/ToggleBackupSettingFragment$2;
.super Ljava/lang/Object;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/backup/ToggleBackupSettingFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 156
    check-cast p2, Ljava/lang/Boolean;

    .line 157
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 158
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-static {p0}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->-$$Nest$mshowEraseBackupDialog(Lcom/android/settings/backup/ToggleBackupSettingFragment;)V

    return p2

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/ToggleBackupSettingFragment$2;->this$0:Lcom/android/settings/backup/ToggleBackupSettingFragment;

    invoke-static {p0, p2}, Lcom/android/settings/backup/ToggleBackupSettingFragment;->-$$Nest$msetBackupEnabled(Lcom/android/settings/backup/ToggleBackupSettingFragment;Z)V

    return p2
.end method
