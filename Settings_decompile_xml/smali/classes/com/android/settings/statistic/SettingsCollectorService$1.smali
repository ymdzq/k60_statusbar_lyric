.class Lcom/android/settings/statistic/SettingsCollectorService$1;
.super Landroid/os/AsyncTask;
.source "SettingsCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/statistic/SettingsCollectorService;->onStartJob(Landroid/app/job/JobParameters;)Z
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
.field final synthetic this$0:Lcom/android/settings/statistic/SettingsCollectorService;


# direct methods
.method constructor <init>(Lcom/android/settings/statistic/SettingsCollectorService;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/statistic/SettingsCollectorService$1;->this$0:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/statistic/SettingsCollectorService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settings/statistic/SettingsCollectorService$1;->this$0:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-static {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->-$$Nest$mcollectData(Lcom/android/settings/statistic/SettingsCollectorService;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/statistic/SettingsCollectorService$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/settings/statistic/SettingsCollectorService$1;->this$0:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-static {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->-$$Nest$fgetmJobParameters(Lcom/android/settings/statistic/SettingsCollectorService;)Landroid/app/job/JobParameters;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settings/statistic/SettingsCollectorService$1;->this$0:Lcom/android/settings/statistic/SettingsCollectorService;

    invoke-static {p0}, Lcom/android/settings/statistic/SettingsCollectorService;->-$$Nest$minitializeSpecialSettings(Lcom/android/settings/statistic/SettingsCollectorService;)V

    return-void
.end method
