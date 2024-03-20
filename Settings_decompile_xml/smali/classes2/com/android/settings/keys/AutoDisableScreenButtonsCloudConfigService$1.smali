.class Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;
.super Landroid/os/AsyncTask;
.source "AutoDisableScreenButtonsCloudConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;


# direct methods
.method constructor <init>(Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;->this$0:Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 38
    iget-object p1, p0, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;->this$0:Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;

    invoke-virtual {p1}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;->-$$Nest$smgetCloudConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;->-$$Nest$fputmCloudConfig(Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;->this$0:Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;

    invoke-virtual {p1}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;->this$0:Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;

    invoke-static {p0}, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;->-$$Nest$fgetmCloudConfig(Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "auto_disable_screen_button_cloud_setting"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;->this$0:Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;

    invoke-static {p1}, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;->-$$Nest$fgetmParams(Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;)Landroid/app/job/JobParameters;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService$1;->this$0:Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;

    invoke-static {p0}, Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;->-$$Nest$fgetmCloudConfig(Lcom/android/settings/keys/AutoDisableScreenButtonsCloudConfigService;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method
