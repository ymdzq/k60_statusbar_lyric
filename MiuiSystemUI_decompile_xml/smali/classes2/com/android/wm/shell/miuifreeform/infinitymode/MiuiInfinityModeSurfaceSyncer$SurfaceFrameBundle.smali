.class Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final geometrys:Landroid/util/ArraySet;

.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->geometrys:Landroid/util/ArraySet;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public add(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->geometrys:Landroid/util/ArraySet;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public collectFrameChange()Landroid/view/SurfaceControl$Transaction;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->this$0:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;

    .line 2
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;->-$$Nest$fgetmTransactionFactory(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)Ljava/util/function/Supplier;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->geometrys:Landroid/util/ArraySet;

    .line 14
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    return-object v0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->geometrys:Landroid/util/ArraySet;

    .line 23
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 25
    move-result v1

    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    :goto_0
    if-ltz v1, :cond_1

    .line 31
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceFrameBundle;->geometrys:Landroid/util/ArraySet;

    .line 33
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;

    .line 39
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$SurfaceGeometry;->sync(Landroid/view/SurfaceControl$Transaction;)V

    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
    .line 47
.end method
