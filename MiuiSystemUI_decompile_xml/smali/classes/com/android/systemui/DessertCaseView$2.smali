.class public final Lcom/android/systemui/DessertCaseView$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/DessertCaseView;

.field public final synthetic val$v:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DessertCaseView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/DessertCaseView$2;->val$v:Landroid/widget/ImageView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/DessertCaseView$2;->val$v:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Landroid/graphics/Point;

    .line 9
    iget v2, p1, Lcom/android/systemui/DessertCaseView;->mColumns:I

    .line 11
    const/4 v3, 0x0

    .line 13
    int-to-float v3, v3

    .line 14
    int-to-float v2, v2

    .line 15
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 16
    move-result-wide v4

    .line 19
    double-to-float v4, v4

    .line 20
    invoke-static {v2, v3, v4, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 21
    move-result v2

    .line 24
    float-to-int v2, v2

    .line 25
    iget v4, p1, Lcom/android/systemui/DessertCaseView;->mRows:I

    .line 26
    int-to-float v4, v4

    .line 28
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 29
    move-result-wide v5

    .line 32
    double-to-float v5, v5

    .line 33
    invoke-static {v4, v3, v5, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 34
    move-result v3

    .line 37
    float-to-int v3, v3

    .line 38
    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 39
    const/4 v2, 0x1

    .line 42
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/DessertCaseView;->place(Landroid/view/View;Landroid/graphics/Point;Z)V

    .line 43
    iget-object p1, p0, Lcom/android/systemui/DessertCaseView$2;->this$0:Lcom/android/systemui/DessertCaseView;

    .line 46
    new-instance v0, Lcom/android/systemui/DessertCaseView$1;

    .line 48
    invoke-direct {v0, v2, p0}, Lcom/android/systemui/DessertCaseView$1;-><init>(ILjava/lang/Object;)V

    .line 50
    const-wide/16 v1, 0xfa

    .line 53
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void
    .line 58
.end method
