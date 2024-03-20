.class Lcom/android/settings/emergency/service/LocationService$1;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->sendSosAroundVoice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/emergency/service/LocationService;


# direct methods
.method constructor <init>(Lcom/android/settings/emergency/service/LocationService;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$1;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 190
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$1;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmAudioRecordManager(Lcom/android/settings/emergency/service/LocationService;)Lsrc/com/android/settings/emergency/util/AudioRecordManager;

    move-result-object p0

    invoke-virtual {p0}, Lsrc/com/android/settings/emergency/util/AudioRecordManager;->stopRecordAndSend()V

    const-string p0, "SOS-LocationService"

    const-string/jumbo v0, "sendSosAroundVoice: stopRecordAndSend"

    .line 191
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
