.class Lcom/android/settings/FramesSequenceAnimation$1;
.super Ljava/lang/Object;
.source "FramesSequenceAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FramesSequenceAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FramesSequenceAnimation;


# direct methods
.method constructor <init>(Lcom/android/settings/FramesSequenceAnimation;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v0}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmImageViewSoftReference(Lcom/android/settings/FramesSequenceAnimation;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    iget-object v1, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v1}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmAnimationShouldPlay(Lcom/android/settings/FramesSequenceAnimation;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fputmAnimationPlaying(Lcom/android/settings/FramesSequenceAnimation;Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v1}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmHandler(Lcom/android/settings/FramesSequenceAnimation;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v3}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmDelayedMillis(Lcom/android/settings/FramesSequenceAnimation;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 129
    iget-object v1, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v1}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$mgetNextFrame(Lcom/android/settings/FramesSequenceAnimation;)I

    move-result v1

    .line 131
    iget-object v3, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v3}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmAnimationPlayed(Lcom/android/settings/FramesSequenceAnimation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v3}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmAnimationListener(Lcom/android/settings/FramesSequenceAnimation;)Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/FramesSequenceAnimation$AnimationListener;->onAnimationPlayed()V

    .line 133
    iget-object v3, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v3, v2}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fputmAnimationPlayed(Lcom/android/settings/FramesSequenceAnimation;Z)V

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v3}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmAnimationBackgroundChange(Lcom/android/settings/FramesSequenceAnimation;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v3}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmAnimationListener(Lcom/android/settings/FramesSequenceAnimation;)Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/FramesSequenceAnimation$AnimationListener;->onAnimationBackgroundChange()V

    .line 138
    iget-object v3, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v3, v2}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fputmAnimationBackgroundChange(Lcom/android/settings/FramesSequenceAnimation;Z)V

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v2}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmBitmap(Lcom/android/settings/FramesSequenceAnimation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 144
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v4}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmOptions(Lcom/android/settings/FramesSequenceAnimation;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 147
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 150
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v0}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmBitmap(Lcom/android/settings/FramesSequenceAnimation;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    iget-object p0, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {p0, v2}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fputmBitmap(Lcom/android/settings/FramesSequenceAnimation;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    return-void

    .line 115
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v0, v2}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fputmAnimationPlaying(Lcom/android/settings/FramesSequenceAnimation;Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {v0}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmAnimationListener(Lcom/android/settings/FramesSequenceAnimation;)Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 117
    iget-object p0, p0, Lcom/android/settings/FramesSequenceAnimation$1;->this$0:Lcom/android/settings/FramesSequenceAnimation;

    invoke-static {p0}, Lcom/android/settings/FramesSequenceAnimation;->-$$Nest$fgetmAnimationListener(Lcom/android/settings/FramesSequenceAnimation;)Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/FramesSequenceAnimation$AnimationListener;->onAnimationStopped()V

    :cond_7
    const-string p0, "FramesSequenceAnimation"

    const-string v0, "animation stop"

    .line 120
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
