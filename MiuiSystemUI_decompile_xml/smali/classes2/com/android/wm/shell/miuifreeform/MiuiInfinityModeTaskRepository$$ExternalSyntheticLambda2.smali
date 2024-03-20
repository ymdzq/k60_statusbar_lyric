.class public final synthetic Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 10
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;

    .line 12
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->$r8$lambda$DV1VGCaz6t_wXyHIWMExH4iJayY(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 18
    check-cast p0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 20
    check-cast p1, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;

    .line 22
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;->$r8$lambda$3wKKtj24Dd66ACZ2FsI6Tp5_LYs(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;)V

    .line 24
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
