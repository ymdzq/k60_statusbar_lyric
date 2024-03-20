.class public final Lcom/android/systemui/media/controls/ui/MediaViewController$configurationListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public lastOrientation:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/MediaViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaViewController$configurationListener$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/android/systemui/media/controls/ui/MediaViewController$configurationListener$1;->lastOrientation:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaViewController$configurationListener$1;->this$0:Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRawLayoutDirection()I

    .line 10
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 14
    move-result v2

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-nez v1, :cond_2

    .line 23
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 25
    if-nez v1, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 30
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 34
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaViewController;->refreshState()V

    .line 37
    :cond_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 40
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaViewController$configurationListener$1;->lastOrientation:I

    .line 42
    if-eq v1, p1, :cond_4

    .line 44
    iput p1, p0, Lcom/android/systemui/media/controls/ui/MediaViewController$configurationListener$1;->lastOrientation:I

    .line 46
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/MediaViewController;->type:Lcom/android/systemui/media/controls/ui/MediaViewController$TYPE;

    .line 48
    sget-object p1, Lcom/android/systemui/media/controls/ui/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/controls/ui/MediaViewController$TYPE;

    .line 50
    if-ne p0, p1, :cond_3

    .line 52
    sget-object p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->backgroundIds:Ljava/util/Set;

    .line 54
    goto :goto_2

    .line 56
    :cond_3
    sget p0, Lcom/android/systemui/media/controls/models/recommendation/RecommendationViewHolder;->backgroundId:I

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 63
    move-result-object p0

    .line 66
    :goto_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p0

    .line 70
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 80
    check-cast p1, Ljava/lang/Number;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 83
    move-result p1

    .line 86
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 87
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 89
    move-result-object p1

    .line 92
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 93
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaViewController;->context:Landroid/content/Context;

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 97
    move-result-object v1

    .line 100
    const v2, 0x7f070fcf    # @dimen/qs_media_session_height_expanded '168.0dp'

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    move-result v1

    .line 107
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    .line 108
    goto :goto_3

    .line 110
    :cond_4
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/MediaViewController;->configurationChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda1;

    .line 111
    if-eqz p0, :cond_5

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaViewController;->refreshState()V

    .line 118
    :cond_5
    return-void
    .line 121
.end method
