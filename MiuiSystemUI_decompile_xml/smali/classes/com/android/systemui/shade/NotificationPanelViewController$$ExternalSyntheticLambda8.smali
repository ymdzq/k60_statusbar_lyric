.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    .line 8
    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getKeyguardUnfoldTransition()Lcom/android/keyguard/KeyguardUnfoldTransition;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_1
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelView;

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelView;->getCurrentPanelAlpha()F

    .line 17
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :goto_0
    check-cast p1, Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    .line 26
    invoke-interface {p1}, Lcom/android/systemui/unfold/SysUIUnfoldComponent;->getNotificationPanelUnfoldAnimationController()Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    .line 28
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 34
.end method
