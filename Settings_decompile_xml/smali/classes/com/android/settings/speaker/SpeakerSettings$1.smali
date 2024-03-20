.class Lcom/android/settings/speaker/SpeakerSettings$1;
.super Ljava/lang/Object;
.source "SpeakerSettings.java"

# interfaces
.implements Lcom/android/settings/speaker/HeadSetHelper$OnHeadSetChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/speaker/SpeakerSettings;->onCreate(Landroid/os/Bundle;)V
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

    .line 123
    iput-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$1;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadSetChange(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device connecting state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeakerSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$1;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-static {p1}, Lcom/android/settings/speaker/SpeakerSettings;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/speaker/SpeakerSettings;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$1;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-static {p1}, Lcom/android/settings/speaker/SpeakerSettings;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/speaker/SpeakerSettings;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$1;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-static {p1}, Lcom/android/settings/speaker/SpeakerSettings;->-$$Nest$mstopCleanSound(Lcom/android/settings/speaker/SpeakerSettings;)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/speaker/SpeakerSettings$1;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/speaker/SpeakerSettings$1;->this$0:Lcom/android/settings/speaker/SpeakerSettings;

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->toast_disconnect_earphone:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 132
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
