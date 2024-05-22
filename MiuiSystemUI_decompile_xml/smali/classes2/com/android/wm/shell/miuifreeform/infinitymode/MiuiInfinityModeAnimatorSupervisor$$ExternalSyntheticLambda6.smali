.class public final synthetic Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/graphics/Rect;

.field public final synthetic f$2:F

.field public final synthetic f$3:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;->f$0:I

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Rect;

    .line 7
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;->f$2:F

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;->f$3:Landroid/view/SurfaceControl$Transaction;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;->f$0:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;->f$1:Landroid/graphics/Rect;

    .line 4
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;->f$2:F

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;->f$3:Landroid/view/SurfaceControl$Transaction;

    .line 8
    move-object v4, p1

    .line 10
    check-cast v4, Ljava/lang/Integer;

    .line 11
    move-object v5, p2

    .line 13
    check-cast v5, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->$r8$lambda$UtOvs9ec5T_r0CxQ6b_HdAGDJOs(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;Ljava/lang/Integer;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;)V

    .line 16
    return-void
    .line 19
.end method
