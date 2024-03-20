.class Lcom/android/settings/emergency/service/LocationService$7;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/emergency/service/LocationService;->playAudioAfterCallConnected()V
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

    .line 648
    iput-object p1, p0, Lcom/android/settings/emergency/service/LocationService$7;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/settings/emergency/service/LocationService$7;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {v0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmAudioTrackManager(Lcom/android/settings/emergency/service/LocationService;)Lcom/android/settings/emergency/service/AudioTrackManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/emergency/service/LocationService$7;->this$0:Lcom/android/settings/emergency/service/LocationService;

    invoke-static {p0}, Lcom/android/settings/emergency/service/LocationService;->-$$Nest$fgetmCacheDirPath(Lcom/android/settings/emergency/service/LocationService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/emergency_contact.wav"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/emergency/service/AudioTrackManager;->startPlay(Ljava/lang/String;)V

    return-void
.end method
