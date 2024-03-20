.class final Lcom/android/settings/sound/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Lcom/android/settings/sound/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/android/settings/sound/SeekBarVolumizer;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;->this$0:Lcom/android/settings/sound/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sound/SeekBarVolumizer;Lcom/android/settings/sound/SeekBarVolumizer$Receiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;-><init>(Lcom/android/settings/sound/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance v0, Lcom/android/settings/sound/SeekBarVolumizer$Receiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/sound/SeekBarVolumizer$Receiver$1;-><init>(Lcom/android/settings/sound/SeekBarVolumizer$Receiver;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 189
    iget-boolean v0, p0, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 190
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_1

    .line 192
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 194
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;->this$0:Lcom/android/settings/sound/SeekBarVolumizer;

    invoke-static {v0}, Lcom/android/settings/sound/SeekBarVolumizer;->-$$Nest$fgetmContext(Lcom/android/settings/sound/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/android/settings/sound/SeekBarVolumizer$Receiver;->this$0:Lcom/android/settings/sound/SeekBarVolumizer;

    invoke-static {p1}, Lcom/android/settings/sound/SeekBarVolumizer;->-$$Nest$fgetmContext(Lcom/android/settings/sound/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method
