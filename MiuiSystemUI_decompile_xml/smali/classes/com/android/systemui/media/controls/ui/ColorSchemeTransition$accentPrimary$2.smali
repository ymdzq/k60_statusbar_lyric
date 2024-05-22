.class final Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;

    .line 8
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/models/GutsViewHolder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    .line 21
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 23
    iget-object v2, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 28
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;

    .line 36
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->multiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    .line 38
    iget-object v0, v0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;->multipleRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->getRipples()Ljava/util/ArrayList;

    .line 42
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    .line 60
    iget-object v2, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->config:Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    .line 62
    iput p1, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;->color:I

    .line 64
    invoke-virtual {v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->applyConfigToShader()V

    .line 66
    goto :goto_0

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition$accentPrimary$2;->this$0:Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;

    .line 70
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/ColorSchemeTransition;->turbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->state:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    .line 74
    sget-object v1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;->NOT_PLAYING:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    .line 76
    if-ne v0, v1, :cond_1

    .line 78
    goto :goto_1

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->noiseConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    .line 83
    if-eqz v0, :cond_2

    .line 85
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->turbulenceNoiseShader:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader;

    .line 87
    const/16 v0, 0x33

    .line 89
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 91
    move-result p1

    .line 94
    const-string v0, "in_color"

    .line 95
    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    .line 97
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    return-object p0
    .line 102
.end method
