.class public final synthetic Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    check-cast p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 12
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->$r8$lambda$FYa9Uj3Din4lKvQ9pr913zIuGtk(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 14
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 20
    check-cast p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 22
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->$r8$lambda$iEqNmlva84nrUt1EJQwRktKhL_k(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 24
    return-void

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 28
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 30
    check-cast p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 32
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->$r8$lambda$GDnnWsZefKcsUiM_tHDUMCEFmqk(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 38
.end method
