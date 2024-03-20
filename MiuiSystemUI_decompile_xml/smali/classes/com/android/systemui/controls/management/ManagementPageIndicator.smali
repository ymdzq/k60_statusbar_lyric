.class public final Lcom/android/systemui/controls/management/ManagementPageIndicator;
.super Lcom/android/systemui/qs/PageIndicator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public visibilityListener:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object p1, Lcom/android/systemui/controls/management/ManagementPageIndicator$visibilityListener$1;->INSTANCE:Lcom/android/systemui/controls/management/ManagementPageIndicator$visibilityListener$1;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/controls/management/ManagementPageIndicator;->visibilityListener:Lkotlin/jvm/functions/Function1;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getVisibilityListener()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ManagementPageIndicator;->visibilityListener:Lkotlin/jvm/functions/Function1;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/controls/management/ManagementPageIndicator;->visibilityListener:Lkotlin/jvm/functions/Function1;

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p1

    .line 16
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public setLocation(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v0

    .line 12
    sub-int/2addr v0, v1

    .line 13
    int-to-float v0, v0

    .line 14
    sub-float/2addr v0, p1

    .line 15
    invoke-super {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 20
    :goto_0
    return-void
    .line 23
.end method

.method public final setVisibilityListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ManagementPageIndicator;->visibilityListener:Lkotlin/jvm/functions/Function1;

    .line 2
    return-void
    .line 4
.end method
