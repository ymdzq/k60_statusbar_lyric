.class Lcom/android/settings/display/PaperModeLocateService$LocationListener;
.super Ljava/lang/Object;
.source "PaperModeLocateService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PaperModeLocateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperModeLocateService;


# direct methods
.method private constructor <init>(Lcom/android/settings/display/PaperModeLocateService;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/settings/display/PaperModeLocateService$LocationListener;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/PaperModeLocateService;Lcom/android/settings/display/PaperModeLocateService$LocationListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperModeLocateService$LocationListener;-><init>(Lcom/android/settings/display/PaperModeLocateService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLocationUpdates returns, location is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PaperModeLocateService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/display/PaperModeLocateService$LocationListener;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {v0, p1}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$fputmLocation(Lcom/android/settings/display/PaperModeLocateService;Landroid/location/Location;)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/display/PaperModeLocateService$LocationListener;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$fgetmLocation(Lcom/android/settings/display/PaperModeLocateService;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$mbroadcastLocationChanged(Lcom/android/settings/display/PaperModeLocateService;Landroid/location/Location;)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/display/PaperModeLocateService$LocationListener;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {p1}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$mremoveLocationUpdates(Lcom/android/settings/display/PaperModeLocateService;)V

    .line 118
    iget-object p0, p0, Lcom/android/settings/display/PaperModeLocateService$LocationListener;->this$0:Lcom/android/settings/display/PaperModeLocateService;

    invoke-static {p0}, Lcom/android/settings/display/PaperModeLocateService;->-$$Nest$fgetmJobParameters(Lcom/android/settings/display/PaperModeLocateService;)Landroid/app/job/JobParameters;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method
