.class public final synthetic Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
