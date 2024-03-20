.class public final synthetic Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shared/rotation/FloatingRotationButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/rotation/FloatingRotationButton;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mUpdatesCallback:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    .line 14
    if-eqz p0, :cond_1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    .line 27
    :cond_1
    return-void

    .line 30
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mUpdatesCallback:Lcom/android/systemui/navigationbar/NavigationBarView$2;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    .line 37
    if-eqz p0, :cond_2

    .line 39
    iget-object p0, v0, Lcom/android/systemui/navigationbar/NavigationBarView$2;->this$0:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->notifyActiveTouchRegions()V

    .line 43
    :cond_2
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 48
.end method
