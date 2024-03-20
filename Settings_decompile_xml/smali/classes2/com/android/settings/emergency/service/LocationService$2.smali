.class Lcom/android/settings/emergency/service/LocationService$2;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Lcom/android/settings/emergency/service/AudioTrackManager$OnPlayCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->initConfig()V
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

    .line 334
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$2;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayComplete()V
    .locals 2

    const-string v0, "SOS AUDIO PLAY COMPLETE"

    const-string v1, "SOS-LocationService"

    .line 337
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "end call after sos audio!"

    .line 339
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$2;->this$0:Lcom/android/settings/emergency/service/LocationService;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 341
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->endCall()Z

    return-void
.end method
