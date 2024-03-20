.class Lcom/android/settings/ai/LongPressAiPreference$2;
.super Ljava/lang/Object;
.source "LongPressAiPreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ai/LongPressAiPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ai/LongPressAiPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ai/LongPressAiPreference;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/ai/LongPressAiPreference$2;->this$0:Lcom/android/settings/ai/LongPressAiPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/ai/LongPressAiPreference$2;->this$0:Lcom/android/settings/ai/LongPressAiPreference;

    invoke-static {v0}, Lcom/android/settings/ai/LongPressAiPreference;->-$$Nest$fgetmHandler(Lcom/android/settings/ai/LongPressAiPreference;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/ai/LongPressAiPreference$2;->this$0:Lcom/android/settings/ai/LongPressAiPreference;

    invoke-static {v0}, Lcom/android/settings/ai/LongPressAiPreference;->-$$Nest$fgetmHandler(Lcom/android/settings/ai/LongPressAiPreference;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ai/LongPressAiPreference$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/ai/LongPressAiPreference$2$1;-><init>(Lcom/android/settings/ai/LongPressAiPreference$2;Landroid/media/MediaPlayer;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
