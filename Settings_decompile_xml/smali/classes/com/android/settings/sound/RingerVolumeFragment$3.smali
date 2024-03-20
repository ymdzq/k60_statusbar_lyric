.class Lcom/android/settings/sound/RingerVolumeFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sound/RingerVolumeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sound/RingerVolumeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/RingerVolumeFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$3;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    .line 186
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/sound/RingerVolumeFragment$3;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {v0}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$3;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/os/Handler;

    move-result-object p0

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v1, 0x66

    .line 188
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
