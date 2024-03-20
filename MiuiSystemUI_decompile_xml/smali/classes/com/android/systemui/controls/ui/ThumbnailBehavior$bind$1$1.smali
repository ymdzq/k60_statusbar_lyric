.class public final Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $clipLayer:Landroid/graphics/drawable/ClipDrawable;

.field public final synthetic $colorOffset:I

.field public final synthetic $drawable:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/ClipDrawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->$drawable:Landroid/graphics/drawable/Drawable;

    .line 6
    iput p4, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->$colorOffset:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 13
    const v1, 0x7f07020e    # @dimen/control_corner_radius '14.0dp'

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 22
    new-instance v2, Lcom/android/systemui/controls/ui/CornerDrawable;

    .line 24
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->$drawable:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-direct {v2, v3, v0}, Lcom/android/systemui/controls/ui/CornerDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ClipDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->$clipLayer:Landroid/graphics/drawable/ClipDrawable;

    .line 34
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    .line 36
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 38
    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 40
    move-result-object v2

    .line 43
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v2

    .line 49
    const v3, 0x7f0600d3    # @color/control_thumbnail_tint '#33000000'

    .line 50
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 53
    move-result v2

    .line 56
    sget-object v3, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    .line 57
    invoke-direct {v1, v2, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 65
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 67
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    .line 71
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    .line 73
    if-eqz v1, :cond_0

    .line 75
    goto :goto_0

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    invoke-virtual {v1}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    .line 79
    move-result v1

    .line 82
    iget p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1$1;->$colorOffset:I

    .line 83
    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(IZZ)V

    .line 86
    return-void
    .line 89
.end method
