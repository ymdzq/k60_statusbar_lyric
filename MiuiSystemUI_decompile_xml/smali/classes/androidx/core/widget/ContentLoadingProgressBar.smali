.class public Landroidx/core/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDelayedHide:Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

.field public final mDelayedShow:Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/ContentLoadingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    .line 4
    new-instance p1, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;-><init>(Landroidx/core/widget/ContentLoadingProgressBar;I)V

    iput-object p1, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedHide:Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    iget-object v0, p0, Landroidx/core/widget/ContentLoadingProgressBar;->mDelayedShow:Landroidx/core/widget/ContentLoadingProgressBar$$ExternalSyntheticLambda0;

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method
