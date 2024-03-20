.class public final synthetic Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    .line 4
    sub-int/2addr p4, p2

    .line 6
    sub-int/2addr p5, p3

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-direct {p1, p2, p2, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setUnrestrictedPreferKeepClearRects(Ljava/util/List;)V

    .line 16
    return-void
    .line 19
.end method
