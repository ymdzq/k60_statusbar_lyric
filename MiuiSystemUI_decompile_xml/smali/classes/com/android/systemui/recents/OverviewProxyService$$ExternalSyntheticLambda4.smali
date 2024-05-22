.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;
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
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    .line 10
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 12
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    .line 15
    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 17
    const/4 p0, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onInputFocusTransfer(FZZ)V

    .line 21
    return-void

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 25
    check-cast p0, Landroid/os/Bundle;

    .line 27
    check-cast p1, Lcom/android/systemui/unfold/progress/UnfoldTransitionProgressForwarder;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const-string v0, "extra_unfold_animation"

    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 36
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 40
.end method
