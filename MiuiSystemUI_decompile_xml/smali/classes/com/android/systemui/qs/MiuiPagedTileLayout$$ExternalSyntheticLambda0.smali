.class public final synthetic Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/MiuiPagedTileLayout;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiPagedTileLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 5
    iput p2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 2
    iget p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    sget-object v1, Lcom/android/systemui/qs/MiuiPagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda1;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setCurrentItem(IZ)V

    .line 9
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 19
    return-void
    .line 22
.end method
