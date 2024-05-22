.class public final Lcom/miui/charge/lollipop/FireworksView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/miui/charge/lollipop/FireworksView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/lollipop/FireworksView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/lollipop/FireworksView$1;->this$0:Lcom/miui/charge/lollipop/FireworksView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/charge/lollipop/FireworksView$1;->this$0:Lcom/miui/charge/lollipop/FireworksView;

    .line 2
    iget-boolean v1, v0, Lcom/miui/charge/lollipop/FireworksView;->mIsAnimationRuning:Z

    .line 4
    if-eqz v1, :cond_4

    .line 6
    iget-wide v1, v0, Lcom/miui/charge/lollipop/FireworksView;->mLastTime:J

    .line 8
    sub-long v1, p1, v1

    .line 10
    const-wide/32 v3, 0xf4240

    .line 12
    div-long/2addr v1, v3

    .line 15
    iput-wide p1, v0, Lcom/miui/charge/lollipop/FireworksView;->mLastTime:J

    .line 16
    iget-object p1, v0, Lcom/miui/charge/lollipop/FireworksView;->mFireworksManager:Lcom/miui/charge/lollipop/FireworksManager;

    .line 18
    if-eqz p1, :cond_3

    .line 20
    iget-object p2, v0, Lcom/miui/charge/lollipop/FireworksView;->mFireList:Ljava/util/List;

    .line 22
    if-nez p2, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    goto :goto_1

    .line 29
    :cond_0
    long-to-float v0, v1

    .line 30
    iget v1, p1, Lcom/miui/charge/lollipop/FireworksManager;->mSpeed:F

    .line 31
    mul-float/2addr v0, v1

    .line 33
    iget-object p1, p1, Lcom/miui/charge/lollipop/FireworksManager;->mFireList:Ljava/util/List;

    .line 34
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 36
    move-result-object v1

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    .line 40
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 49
    check-cast v2, Landroid/graphics/PointF;

    .line 50
    iget v3, v2, Landroid/graphics/PointF;->y:F

    .line 52
    sub-float/2addr v3, v0

    .line 54
    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 55
    const/4 v2, 0x0

    .line 57
    cmpg-float v2, v3, v2

    .line 58
    if-gtz v2, :cond_1

    .line 60
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    check-cast p2, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 68
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    :goto_1
    iget-object p1, p0, Lcom/miui/charge/lollipop/FireworksView$1;->this$0:Lcom/miui/charge/lollipop/FireworksView;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 76
    :cond_3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 79
    move-result-object p1

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 83
    :cond_4
    return-void
    .line 86
.end method
