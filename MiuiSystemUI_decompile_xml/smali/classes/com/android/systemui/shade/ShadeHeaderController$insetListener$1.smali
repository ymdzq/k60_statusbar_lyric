.class public final Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeHeaderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeHeaderController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 2
    move-object v1, p1

    .line 4
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/systemui/shade/ShadeHeaderController;->access$updateConstraintsForInsets(Lcom/android/systemui/shade/ShadeHeaderController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/WindowInsets;)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;->this$0:Lcom/android/systemui/shade/ShadeHeaderController;

    .line 10
    new-instance v0, Landroid/view/WindowInsets;

    .line 12
    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->lastInsets:Landroid/view/WindowInsets;

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method
