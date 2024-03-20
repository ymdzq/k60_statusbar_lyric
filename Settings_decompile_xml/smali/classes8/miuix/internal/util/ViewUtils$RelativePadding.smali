.class public Lmiuix/internal/util/ViewUtils$RelativePadding;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/util/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativePadding"
.end annotation


# instance fields
.field public bottom:I

.field public clipToPadding:Z

.field public end:I

.field public start:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->clipToPadding:Z

    .line 220
    iput p1, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 221
    iput p2, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 222
    iput p3, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 223
    iput p4, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->clipToPadding:Z

    .line 213
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 215
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/util/ViewUtils$RelativePadding;)V
    .locals 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->clipToPadding:Z

    .line 227
    iget v0, p1, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    .line 228
    iget v0, p1, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    .line 229
    iget v0, p1, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    iput v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    .line 230
    iget p1, p1, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    iput p1, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    return-void
.end method


# virtual methods
.method public applyToScrollingView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 239
    invoke-virtual {p0, p1}, Lmiuix/internal/util/ViewUtils$RelativePadding;->applyToView(Landroid/view/View;)V

    const/4 p0, 0x1

    .line 240
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 3

    .line 235
    iget v0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->start:I

    iget v1, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->top:I

    iget v2, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->end:I

    iget p0, p0, Lmiuix/internal/util/ViewUtils$RelativePadding;->bottom:I

    invoke-static {p1, v0, v1, v2, p0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method
