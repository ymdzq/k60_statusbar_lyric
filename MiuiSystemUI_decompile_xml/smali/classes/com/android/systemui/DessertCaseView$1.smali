.class public final Lcom/android/systemui/DessertCaseView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/DessertCaseView$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/DessertCaseView$1;->$r8$classId:I

    .line 2
    const/16 v1, 0x1f4

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/android/systemui/DessertCaseView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 14
    move-result v0

    .line 17
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Ljava/lang/Object;

    .line 18
    check-cast v2, Lcom/android/systemui/DessertCaseView;

    .line 20
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 22
    move-result-wide v3

    .line 25
    int-to-double v5, v0

    .line 26
    mul-double/2addr v3, v5

    .line 27
    double-to-int v0, v3

    .line 28
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Ljava/lang/Object;

    .line 33
    check-cast v2, Lcom/android/systemui/DessertCaseView;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance v3, Landroid/graphics/Point;

    .line 40
    iget v4, v2, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 42
    const/4 v5, 0x0

    .line 44
    int-to-float v5, v5

    .line 45
    int-to-float v4, v4

    .line 46
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 47
    move-result-wide v6

    .line 50
    double-to-float v6, v6

    .line 51
    invoke-static {v4, v5, v6, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 52
    move-result v4

    .line 55
    float-to-int v4, v4

    .line 56
    iget v6, v2, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 57
    int-to-float v6, v6

    .line 59
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 60
    move-result-wide v7

    .line 63
    double-to-float v7, v7

    .line 64
    invoke-static {v6, v5, v7, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 65
    move-result v5

    .line 68
    float-to-int v5, v5

    .line 69
    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 70
    const/4 v4, 0x1

    .line 73
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Ljava/lang/Object;

    .line 77
    check-cast v0, Lcom/android/systemui/DessertCaseView;

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 81
    iget-object p0, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Ljava/lang/Object;

    .line 84
    check-cast p0, Lcom/android/systemui/DessertCaseView;

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/DessertCaseView;->mStarted:Z

    .line 88
    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView;->mHandler:Landroid/os/Handler;

    .line 92
    iget-object p0, p0, Lcom/android/systemui/DessertCaseView;->mJuggle:Lcom/android/systemui/DessertCaseView$1;

    .line 94
    const-wide/16 v1, 0x7d0

    .line 96
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    :cond_0
    return-void

    .line 101
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/DessertCaseView$1;->this$0:Ljava/lang/Object;

    .line 102
    check-cast p0, Lcom/android/systemui/DessertCaseView$2;

    .line 104
    iget-object p0, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/systemui/DessertCaseView;->fillFreeList(I)V

    .line 108
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 112
.end method
