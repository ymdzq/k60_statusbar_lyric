.class public final Lcom/android/keyguard/clock/ViewPreviewer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/ViewPreviewer;

.field public final synthetic val$height:I

.field public final synthetic val$view:Landroid/view/View;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/ViewPreviewer;IILandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->this$0:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 2
    iput p2, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$width:I

    .line 4
    iput p3, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$height:I

    .line 6
    iput-object p4, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$view:Landroid/view/View;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2
    iget v1, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$width:I

    .line 4
    iget v2, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$height:I

    .line 6
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 8
    move-result-object v0

    .line 11
    new-instance v3, Landroid/graphics/Canvas;

    .line 12
    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    const/high16 v4, -0x1000000

    .line 17
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 19
    iget-object v4, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->this$0:Lcom/android/keyguard/clock/ViewPreviewer;

    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object p0, p0, Lcom/android/keyguard/clock/ViewPreviewer$1;->val$view:Landroid/view/View;

    .line 27
    const/4 v4, 0x1

    .line 29
    invoke-static {p0, v4}, Lcom/android/keyguard/clock/ViewPreviewer;->dispatchVisibilityAggregated(Landroid/view/View;Z)V

    .line 30
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 35
    move-result v5

    .line 38
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    move-result v4

    .line 42
    invoke-virtual {p0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 43
    const/4 v4, 0x0

    .line 46
    invoke-virtual {p0, v4, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 47
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 50
    return-object v0
    .line 53
.end method
