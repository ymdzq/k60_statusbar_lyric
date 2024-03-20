.class Lcom/android/settings/ai/LongPressAiPreference$1;
.super Ljava/lang/Object;
.source "LongPressAiPreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/ai/LongPressAiPreference;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/android/settings/ai/LongPressAiPreference$1;->this$0:Lcom/android/settings/ai/LongPressAiPreference;

    iput-object p2, p0, Lcom/android/settings/ai/LongPressAiPreference$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 59
    new-instance v0, Lcom/android/settings/ai/LongPressAiPreference$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ai/LongPressAiPreference$1$1;-><init>(Lcom/android/settings/ai/LongPressAiPreference$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 71
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
