.class public final Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 2
    iget-object p2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 9
    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 10
    if-eqz p2, :cond_4

    .line 12
    instance-of p3, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 14
    if-nez p3, :cond_0

    .line 16
    goto/16 :goto_1

    .line 18
    :cond_0
    move-object p3, p1

    .line 20
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 21
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 23
    iget-object p4, p4, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    .line 27
    move-result p5

    .line 30
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    .line 31
    move-result p6

    .line 34
    const/4 p7, 0x0

    .line 35
    invoke-virtual {p4, p7, p7, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    invoke-virtual {p3, p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Landroid/graphics/Rect;)V

    .line 39
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 42
    iget-object p4, p4, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 46
    move-result p4

    .line 49
    invoke-virtual {p2, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabDiameter(I)V

    .line 50
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 53
    move-result-object p5

    .line 56
    iget-object p5, p5, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 57
    new-instance p6, Landroid/graphics/RectF;

    .line 59
    iget-object p8, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 61
    iget-object p8, p8, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;

    .line 63
    invoke-direct {p6, p8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 65
    invoke-interface {p5, p6}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 68
    move-result p5

    .line 71
    invoke-virtual {p2, p5}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabCornerSize(F)V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    move-result-object p1

    .line 78
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 79
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 81
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->originalBottomMargin:I

    .line 83
    if-nez p0, :cond_3

    .line 85
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    .line 87
    move-result p0

    .line 90
    sub-int/2addr p0, p4

    .line 91
    div-int/lit8 p0, p0, 0x2

    .line 92
    iget p4, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I

    .line 94
    const/4 p5, 0x1

    .line 96
    if-ne p4, p5, :cond_1

    .line 97
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p4

    .line 102
    const p5, 0x7f070c4e    # @dimen/mtrl_bottomappbar_fab_bottom_margin '16.0dp'

    .line 103
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 106
    move-result p7

    .line 109
    :cond_1
    sub-int/2addr p7, p0

    .line 110
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 111
    move-result p0

    .line 114
    add-int/2addr p0, p7

    .line 115
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 116
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2900(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 118
    move-result p0

    .line 121
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 122
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 124
    move-result p0

    .line 127
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 128
    invoke-static {p3}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 130
    move-result p0

    .line 133
    if-eqz p0, :cond_2

    .line 134
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 136
    iget p2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    .line 138
    add-int/2addr p0, p2

    .line 140
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 144
    iget p2, p2, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I

    .line 146
    add-int/2addr p0, p2

    .line 148
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 149
    :cond_3
    :goto_0
    return-void

    .line 151
    :cond_4
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 152
    return-void
    .line 155
.end method
