.class public Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# instance fields
.field public final mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;


# direct methods
.method public static synthetic $r8$lambda$z2tzVSS17HYjY_wGHC7WJRNYNFc(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    move-result p1

    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;I)V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;I)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;I)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    new-instance p1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance p2, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;I)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    return-void
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public setShouldBlockVisibilityChanges(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->mLaunchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    .line 4
    return-void
    .line 7
.end method
