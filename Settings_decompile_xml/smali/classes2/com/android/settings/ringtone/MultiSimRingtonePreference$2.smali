.class Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;
.super Ljava/lang/Object;
.source "MultiSimRingtonePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ringtone/MultiSimRingtonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->-$$Nest$fgetmHandler(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->-$$Nest$fgetmHandler(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v2}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->-$$Nest$mgetRingtoneTitle(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    iget-object v0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->-$$Nest$fgetmHandler(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {v1}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->-$$Nest$fgetmHandler(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/ringtone/MultiSimRingtonePreference$2;->this$0:Lcom/android/settings/ringtone/MultiSimRingtonePreference;

    invoke-static {p0}, Lcom/android/settings/ringtone/MultiSimRingtonePreference;->-$$Nest$mgetRingtoneValue(Lcom/android/settings/ringtone/MultiSimRingtonePreference;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
