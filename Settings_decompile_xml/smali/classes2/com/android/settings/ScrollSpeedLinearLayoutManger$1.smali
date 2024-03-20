.class Lcom/android/settings/ScrollSpeedLinearLayoutManger$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ScrollSpeedLinearLayoutManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ScrollSpeedLinearLayoutManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ScrollSpeedLinearLayoutManger;


# direct methods
.method constructor <init>(Lcom/android/settings/ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/settings/ScrollSpeedLinearLayoutManger$1;->this$0:Lcom/android/settings/ScrollSpeedLinearLayoutManger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    .line 26
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42a00000    # 80.0f

    div-float/2addr p1, p0

    return p1
.end method
