.class public final Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $roundable:Lcom/android/systemui/statusbar/notification/Roundable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/Roundable;I)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    .line 7
    const-string/jumbo p1, "topRoundness"

    .line 9
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 12
    return-void

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    .line 16
    const-string p1, "bottomRoundness"

    .line 18
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final get()Ljava/lang/Float;
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getTopRoundness()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->getBottomRoundness()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->get()Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 2
    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->get()Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    .line 4
    iput p1, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->topRoundness:F

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/Roundable;->getRoundableState()Lcom/android/systemui/statusbar/notification/RoundableState;

    move-result-object v0

    .line 7
    iput p1, v0, Lcom/android/systemui/statusbar/notification/RoundableState;->bottomRoundness:F

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$roundable:Lcom/android/systemui/statusbar/notification/Roundable;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/Roundable;->applyRoundnessAndInvalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->setValue(F)V

    return-void

    .line 2
    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/RoundableState$Companion$topAnimatable$1;->setValue(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
