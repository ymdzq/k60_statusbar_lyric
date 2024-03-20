.class Lcom/android/settings/speaker/SpeakerSettings$4;
.super Ljava/lang/Object;
.source "SpeakerSettings.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/speaker/SpeakerSettings;->playCleanSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/speaker/SpeakerSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/speaker/SpeakerSettings;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$4;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const-string p0, "SpeakerSettings"

    const-string p1, "Error on playing speaker clean sound. "

    .line 267
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
