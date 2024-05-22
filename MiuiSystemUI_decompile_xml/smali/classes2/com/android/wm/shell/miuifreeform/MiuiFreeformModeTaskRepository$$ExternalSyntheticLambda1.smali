.class public final synthetic Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$1:I

    iput p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$2:I

    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;II)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 10
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$1:I

    .line 12
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$2:I

    .line 14
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;

    .line 16
    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->$r8$lambda$N_8nXs5OL13HrtyDa6s5ofASB7g(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;IILcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 18
    return-void

    .line 21
    :goto_0
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$1:I

    .line 22
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$2:I

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 26
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 28
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;

    .line 30
    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->$r8$lambda$_-H6ahl3x224nOJqidnnbZ4lKXc(IILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository$ActiveTaskListener;)V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
