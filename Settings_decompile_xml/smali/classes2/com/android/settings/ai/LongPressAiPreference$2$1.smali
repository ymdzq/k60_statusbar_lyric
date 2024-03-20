.class Lcom/android/settings/ai/LongPressAiPreference$2$1;
.super Ljava/lang/Object;
.source "LongPressAiPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ai/LongPressAiPreference$2;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ai/LongPressAiPreference$2;

.field final synthetic val$mp:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/settings/ai/LongPressAiPreference$2;Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/android/settings/ai/LongPressAiPreference$2$1;->this$1:Lcom/android/settings/ai/LongPressAiPreference$2;

    iput-object p2, p0, Lcom/android/settings/ai/LongPressAiPreference$2$1;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ai/LongPressAiPreference$2$1;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LongPressAiPreference"

    const-string/jumbo v1, "release mp"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/settings/ai/LongPressAiPreference$2$1;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 87
    iget-object p0, p0, Lcom/android/settings/ai/LongPressAiPreference$2$1;->this$1:Lcom/android/settings/ai/LongPressAiPreference$2;

    iget-object p0, p0, Lcom/android/settings/ai/LongPressAiPreference$2;->this$0:Lcom/android/settings/ai/LongPressAiPreference;

    invoke-static {p0}, Lcom/android/settings/ai/LongPressAiPreference;->-$$Nest$fgetmHandler(Lcom/android/settings/ai/LongPressAiPreference;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
