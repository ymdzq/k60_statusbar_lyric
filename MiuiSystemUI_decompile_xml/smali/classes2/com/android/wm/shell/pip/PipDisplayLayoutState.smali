.class public final Lcom/android/wm/shell/pip/PipDisplayLayoutState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayId:I

.field public final mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mContext:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/android/wm/shell/common/DisplayLayout;

    .line 7
    invoke-direct {p1}, Lcom/android/wm/shell/common/DisplayLayout;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final getDisplayBounds()Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 4
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 6
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    return-object v0
    .line 14
.end method

.method public final getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 4
    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 6
    return-object v0
    .line 9
.end method

.method public final rotateTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/DisplayLayout;->rotateTo(ILandroid/content/res/Resources;)V

    .line 10
    return-void
    .line 13
.end method
