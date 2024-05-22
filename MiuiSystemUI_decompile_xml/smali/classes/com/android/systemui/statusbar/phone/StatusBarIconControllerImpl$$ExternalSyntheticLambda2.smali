.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;->f$0:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;->f$0:I

    .line 8
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 10
    check-cast p2, Ljava/util/List;

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    .line 14
    return-void

    .line 17
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;->f$0:I

    .line 18
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 20
    check-cast p2, Ljava/util/List;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->onRemoveIcon(I)V

    .line 24
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
