.class public final synthetic Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 8
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;->onKeyguardShowingChanged()V

    .line 10
    return-void

    .line 13
    :pswitch_1
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 14
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;->onLaunchTransitionFadingAwayChanged()V

    .line 16
    return-void

    .line 19
    :pswitch_2
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 20
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;->onKeyguardDismissAmountChanged()V

    .line 22
    return-void

    .line 25
    :pswitch_3
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 26
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;->onKeyguardGoingAwayChanged()V

    .line 28
    return-void

    .line 31
    :pswitch_4
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 32
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;->onPrimaryBouncerShowingChanged()V

    .line 34
    return-void

    .line 37
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 38
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;->onUnlockedChanged()V

    .line 40
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 44
.end method
