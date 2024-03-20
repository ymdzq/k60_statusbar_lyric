.class Lcom/android/settings/backup/PrivacySettings$2;
.super Landroid/database/ContentObserver;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/PrivacySettings;Landroid/os/Handler;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/settings/backup/PrivacySettings$2;->this$0:Lcom/android/settings/backup/PrivacySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 219
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 220
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "local_backup_disable_service"

    .line 221
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings$2;->this$0:Lcom/android/settings/backup/PrivacySettings;

    invoke-virtual {p0}, Lcom/android/settings/backup/PrivacySettings;->updatePreferenceStates()V

    :cond_0
    return-void
.end method
