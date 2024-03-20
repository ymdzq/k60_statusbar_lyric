.class Lcom/android/settings/sound/RingerVolumeFragment$2;
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

    .line 167
    iput-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$2;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/android/settings/sound/RingerVolumeFragment$2;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {p1}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/sound/RingerVolumeFragment$2;->this$0:Lcom/android/settings/sound/RingerVolumeFragment;

    invoke-static {p0}, Lcom/android/settings/sound/RingerVolumeFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/sound/RingerVolumeFragment;)Landroid/os/Handler;

    move-result-object p0

    const-string v0, "android.media.EXTRA_RINGER_MODE"

    const/4 v1, -0x1

    .line 172
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x65

    .line 171
    invoke-virtual {p0, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
