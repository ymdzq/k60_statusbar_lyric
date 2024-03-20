.class public final Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $clipLayer:Landroid/graphics/drawable/ClipDrawable;

.field public final synthetic $colorOffset:I

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/ClipDrawable;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 4
    iput p3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->$colorOffset:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/service/controls/templates/ThumbnailTemplate;->getThumbnail()Landroid/graphics/drawable/Icon;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 14
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 16
    move-result-object v1

    .line 19
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 28
    move-result-object v1

    .line 31
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 32
    new-instance v2, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;

    .line 34
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 36
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 38
    iget p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;->$colorOffset:I

    .line 40
    invoke-direct {v2, v3, v4, v0, p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;-><init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/ClipDrawable;Landroid/graphics/drawable/Drawable;I)V

    .line 42
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 47
    return-void
    .line 50
.end method
