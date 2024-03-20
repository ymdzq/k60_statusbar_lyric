.class public final synthetic Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

.field public final synthetic f$1:Landroid/widget/ImageButton;

.field public final synthetic f$2:Lcom/android/systemui/media/controls/models/player/MediaAction;

.field public final synthetic f$3:Lcom/android/systemui/media/controls/ui/AnimationBindHandler;

.field public final synthetic f$4:Lcom/android/systemui/media/controls/models/player/MediaButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/models/player/MediaAction;Lcom/android/systemui/media/controls/ui/AnimationBindHandler;Lcom/android/systemui/media/controls/models/player/MediaButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$1:Landroid/widget/ImageButton;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$2:Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$3:Lcom/android/systemui/media/controls/ui/AnimationBindHandler;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$4:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$1:Landroid/widget/ImageButton;

    .line 8
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$2:Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 10
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$3:Lcom/android/systemui/media/controls/ui/AnimationBindHandler;

    .line 12
    if-eqz v3, :cond_3

    .line 14
    iget-object v5, v4, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;->rebindId:Ljava/lang/Integer;

    .line 16
    iget-object v6, v3, Lcom/android/systemui/media/controls/models/player/MediaAction;->rebindId:Ljava/lang/Integer;

    .line 18
    if-eqz v5, :cond_0

    .line 20
    if-eqz v6, :cond_0

    .line 22
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    :cond_0
    iput-object v6, v4, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;->rebindId:Ljava/lang/Integer;

    .line 30
    const/4 v1, 0x1

    .line 32
    :cond_1
    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v4}, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;->unregisterAll()V

    .line 35
    iget-object v1, v3, Lcom/android/systemui/media/controls/models/player/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    .line 38
    instance-of v5, v1, Landroid/graphics/drawable/Animatable2;

    .line 40
    if-eqz v5, :cond_2

    .line 42
    check-cast v1, Landroid/graphics/drawable/Animatable2;

    .line 44
    invoke-interface {v1, v4}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 46
    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;->registrations:Ljava/util/List;

    .line 49
    check-cast v4, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->bindButtonCommon(Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/models/player/MediaAction;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/media/controls/ui/AnimationBindHandler;->unregisterAll()V

    .line 60
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 70
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_4
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getId()I

    .line 76
    move-result v1

    .line 79
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda7;->f$4:Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 80
    invoke-virtual {v0, v1, v3, p0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->setSemanticButtonVisibleAndAlpha(ILcom/android/systemui/media/controls/models/player/MediaAction;Lcom/android/systemui/media/controls/models/player/MediaButton;)V

    .line 82
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    return-object p0
    .line 87
.end method
