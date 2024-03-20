.class public final synthetic Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $tmp0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$tmp0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    instance-of v0, p1, Lcom/android/systemui/shade/ShadeExpansionListener;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->getFunctionDelegate()Lkotlin/Function;

    .line 17
    move-result-object p0

    .line 20
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 21
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 23
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 30
    :cond_0
    return v1

    .line 31
    :goto_0
    instance-of v0, p1, Lcom/android/systemui/shade/ShadeExpansionListener;

    .line 32
    if-eqz v0, :cond_1

    .line 34
    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->getFunctionDelegate()Lkotlin/Function;

    .line 40
    move-result-object p0

    .line 43
    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    .line 44
    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    .line 46
    move-result-object p1

    .line 49
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 53
    :cond_1
    return v1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 8
    const/4 v2, 0x1

    .line 10
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$tmp0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 11
    const-class v4, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 13
    const-string v5, "onPanelExpansionChanged"

    .line 15
    const-string v6, "onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V"

    .line 17
    const/4 v7, 0x0

    .line 19
    move-object v1, v0

    .line 20
    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    return-object v0

    .line 24
    :goto_0
    new-instance v0, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 25
    const/4 v9, 0x1

    .line 27
    iget-object v10, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$tmp0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 28
    const-class v11, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 30
    const-string v12, "onPanelExpansionChanged"

    .line 32
    const-string v13, "onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V"

    .line 34
    const/4 v14, 0x0

    .line 36
    move-object v8, v0

    .line 37
    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 42
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->getFunctionDelegate()Lkotlin/Function;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->getFunctionDelegate()Lkotlin/Function;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result p0

    .line 24
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;->$tmp0:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;-><init>(Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 18
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    return-void

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;

    .line 27
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$onPanelExpansionChanged$1;-><init>(Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 32
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
