.class public final Landroidx/cardview/widget/CardView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCardBackground:Landroid/graphics/drawable/Drawable;

.field public final synthetic this$0:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>(Landroidx/cardview/widget/CardView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final setShadowPadding(IIII)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 11
    add-int/2addr p1, v1

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 14
    add-int/2addr p2, v1

    .line 16
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 17
    add-int/2addr p3, v1

    .line 19
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 20
    add-int/2addr p4, v0

    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->access$001(Landroidx/cardview/widget/CardView;IIII)V

    .line 23
    return-void
    .line 26
.end method
