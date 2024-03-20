.class Lcom/android/settings/display/PaperModeLocateService$1$1;
.super Ljava/lang/Object;
.source "PaperModeLocateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PaperModeLocateService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/display/PaperModeLocateService$1;

.field final synthetic val$sunTime:Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeLocateService$1;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService$1$1;->this$1:Lcom/android/settings/display/PaperModeLocateService$1;

    iput-object p2, p0, Lcom/android/settings/display/PaperModeLocateService$1$1;->val$sunTime:Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/display/PaperModeLocateService$1$1;->val$sunTime:Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    if-nez v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService$1$1;->this$1:Lcom/android/settings/display/PaperModeLocateService$1;

    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService$1;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {p0}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$mrequestLocation(Lcom/android/settings/display/PaperModeLocateService;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/PaperModeLocateService$1$1;->this$1:Lcom/android/settings/display/PaperModeLocateService$1;

    iget-object v1, v1, Lcom/android/settings/display/PaperModeLocateService$1;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {v1, v0}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$mbroadcastSunTime(Lcom/android/settings/display/PaperModeLocateService;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V

    .line 65
    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService$1$1;->this$1:Lcom/android/settings/display/PaperModeLocateService$1;

    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService$1;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {p0}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$fgetmJobParameters(Lcom/android/settings/display/PaperModeLocateService;)Landroid/app/job/JobParameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_0
    return-void
.end method
