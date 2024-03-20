.class public final Lcom/android/systemui/statusbar/StatusBarIconView$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$1;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final get(Lcom/android/systemui/statusbar/StatusBarIconView;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconAppearAmount()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDotAppearAmount()F

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

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$1;->get(Lcom/android/systemui/statusbar/StatusBarIconView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 2
    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$1;->get(Lcom/android/systemui/statusbar/StatusBarIconView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 8
    packed-switch p0, :pswitch_data_1

    .line 10
    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconAppearAmount(F)V

    .line 14
    goto :goto_1

    .line 17
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    .line 18
    :goto_1
    return-void

    .line 21
    :goto_2
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 22
    packed-switch p0, :pswitch_data_2

    .line 24
    goto :goto_3

    .line 27
    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconAppearAmount(F)V

    .line 28
    goto :goto_4

    .line 31
    :goto_3
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    .line 32
    :goto_4
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 36
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 42
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
