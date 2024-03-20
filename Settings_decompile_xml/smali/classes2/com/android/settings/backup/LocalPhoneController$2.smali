.class Lcom/android/settings/backup/LocalPhoneController$2;
.super Ljava/lang/Object;
.source "LocalPhoneController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/LocalPhoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/LocalPhoneController;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/LocalPhoneController;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/backup/LocalPhoneController$2;->this$0:Lcom/android/settings/backup/LocalPhoneController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string/jumbo v0, "phone_backup"

    .line 55
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 56
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.backup.LOCAL_HOME_ACTIVITY"

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.backup"

    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/android/settings/backup/LocalPhoneController$2;->this$0:Lcom/android/settings/backup/LocalPhoneController;

    invoke-static {v1}, Lcom/android/settings/backup/LocalPhoneController;->-$$Nest$fgetmContext(Lcom/android/settings/backup/LocalPhoneController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    .line 60
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/android/settings/backup/LocalPhoneController$2;->this$0:Lcom/android/settings/backup/LocalPhoneController;

    invoke-static {v1}, Lcom/android/settings/backup/LocalPhoneController;->-$$Nest$fgetmContext(Lcom/android/settings/backup/LocalPhoneController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/settings/MiuiUtils;->isIntentActivityExistAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object p0, p0, Lcom/android/settings/backup/LocalPhoneController$2;->this$0:Lcom/android/settings/backup/LocalPhoneController;

    invoke-static {p0}, Lcom/android/settings/backup/LocalPhoneController;->-$$Nest$fgetmContext(Lcom/android/settings/backup/LocalPhoneController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
