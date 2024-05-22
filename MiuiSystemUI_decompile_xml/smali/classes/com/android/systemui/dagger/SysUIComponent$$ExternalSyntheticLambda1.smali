.class public final synthetic Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/dagger/SysUIComponent;

    .line 10
    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->getUnfoldTransitionProgressForwarder()Ljava/util/Optional;

    .line 14
    move-result-object p0

    .line 17
    new-instance v0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;

    .line 18
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, v1, p1}, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 24
    return-void

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/dagger/SysUIComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 28
    check-cast p0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 30
    check-cast p1, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    .line 32
    invoke-interface {p0, p1}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
