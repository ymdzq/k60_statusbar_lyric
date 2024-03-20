.class public final Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/LinearSystem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    iget-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 15
    iget-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 18
    invoke-static {p0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 20
    iget-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 23
    invoke-static {p0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 25
    iget-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 28
    invoke-static {p0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 30
    iget-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 33
    invoke-static {p0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)I

    .line 35
    return-void
    .line 38
.end method
