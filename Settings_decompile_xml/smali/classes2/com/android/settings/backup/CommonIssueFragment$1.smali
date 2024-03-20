.class Lcom/android/settings/backup/CommonIssueFragment$1;
.super Ljava/lang/Object;
.source "CommonIssueFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/backup/CommonIssueFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/CommonIssueFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/backup/CommonIssueFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/settings/backup/CommonIssueFragment$1;->this$0:Lcom/android/settings/backup/CommonIssueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->getBugreportIntent()Landroid/content/Intent;

    move-result-object p1

    .line 81
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/backup/CommonIssueFragment$1;->this$0:Lcom/android/settings/backup/CommonIssueFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CommonIssueFragment-TAG"

    const-string v0, "jump to bugreport erro: "

    .line 83
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string p0, "backup_help_button"

    .line 85
    invoke-static {p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 86
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
