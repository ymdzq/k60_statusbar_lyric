.class public final Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;
.super Ljava/lang/Object;
.source "AndroidViewHolder.android.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/AndroidViewHolder;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field final synthetic $this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;


# direct methods
.method constructor <init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final intrinsicHeight(I)I
    .locals 3

    .line 363
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 364
    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    move-result p1

    .line 365
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 363
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 367
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private final intrinsicWidth(I)I
    .locals 5

    .line 345
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    const/4 v1, 0x0

    .line 346
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 347
    iget-object v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v1, p1, v4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    move-result p1

    .line 345
    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->measure(II)V

    .line 349
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurables"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->intrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurables"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->intrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    const-string v0, "$this$measure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurables"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 311
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 313
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p2

    if-eqz p2, :cond_1

    .line 314
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 317
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 319
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    .line 320
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    .line 321
    iget-object v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 318
    invoke-static {p2, v0, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    move-result v0

    .line 323
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 324
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    .line 325
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p3

    .line 326
    iget-object p4, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {p4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    invoke-static {v1, v2, p3, p4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I

    move-result p3

    .line 317
    invoke-virtual {p2, v0, p3}, Landroid/view/ViewGroup;->measure(II)V

    .line 329
    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5$measure$1;

    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$this_run:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v4, p2, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5$measure$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurables"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->intrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "measurables"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;->intrinsicWidth(I)I

    move-result p0

    return p0
.end method
