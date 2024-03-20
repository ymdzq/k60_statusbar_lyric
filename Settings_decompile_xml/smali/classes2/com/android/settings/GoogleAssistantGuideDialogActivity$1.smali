.class Lcom/android/settings/GoogleAssistantGuideDialogActivity$1;
.super Ljava/lang/Object;
.source "GoogleAssistantGuideDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GoogleAssistantGuideDialogActivity;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GoogleAssistantGuideDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/GoogleAssistantGuideDialogActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settings/GoogleAssistantGuideDialogActivity$1;->this$0:Lcom/android/settings/GoogleAssistantGuideDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 41
    iget-object p2, p0, Lcom/android/settings/GoogleAssistantGuideDialogActivity$1;->this$0:Lcom/android/settings/GoogleAssistantGuideDialogActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "launch_google_search"

    const/4 v1, -0x2

    const-string v2, "long_press_power_key"

    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 44
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    .line 45
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    const-string/jumbo p1, "search"

    .line 48
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object p1

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {p1, v0, p2}, Landroid/app/ISearchManager;->launchAssist(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/settings/GoogleAssistantGuideDialogActivity$1;->this$0:Lcom/android/settings/GoogleAssistantGuideDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
