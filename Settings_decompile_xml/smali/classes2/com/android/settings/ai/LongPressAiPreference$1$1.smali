.class Lcom/android/settings/ai/LongPressAiPreference$1$1;
.super Ljava/lang/Object;
.source "LongPressAiPreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ai/LongPressAiPreference$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ai/LongPressAiPreference$1;


# direct methods
.method constructor <init>(Lcom/android/settings/ai/LongPressAiPreference$1;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/ai/LongPressAiPreference$1$1;->this$1:Lcom/android/settings/ai/LongPressAiPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onInfo, what = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "LongPressAiPreference"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/settings/ai/LongPressAiPreference$1$1;->this$1:Lcom/android/settings/ai/LongPressAiPreference$1;

    iget-object p0, p0, Lcom/android/settings/ai/LongPressAiPreference$1;->val$view:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->img_long_press_place_holder:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
