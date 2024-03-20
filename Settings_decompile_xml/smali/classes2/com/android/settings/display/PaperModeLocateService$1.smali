.class Lcom/android/settings/display/PaperModeLocateService$1;
.super Ljava/lang/Object;
.source "PaperModeLocateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PaperModeLocateService;->obtainTwilightTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperModeLocateService;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperModeLocateService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService$1;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/settings/display/PaperModeLocateService$1;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    .line 57
    invoke-virtual {v0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/PaperModeSunTimeHelper;->getSunTwilightTime(Landroid/content/Context;)Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/settings/display/PaperModeLocateService$1;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {v1}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$fgetmHandler(Lcom/android/settings/display/PaperModeLocateService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/PaperModeLocateService$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/display/PaperModeLocateService$1$1;-><init>(Lcom/android/settings/display/PaperModeLocateService$1;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
