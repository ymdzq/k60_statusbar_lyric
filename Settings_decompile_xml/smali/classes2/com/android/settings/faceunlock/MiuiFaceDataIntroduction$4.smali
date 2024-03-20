.class Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$4;
.super Ljava/lang/Object;
.source "MiuiFaceDataIntroduction.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$4;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$4;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$4;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 181
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction$4;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/faceunlock/MiuiFaceDataIntroduction;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method
