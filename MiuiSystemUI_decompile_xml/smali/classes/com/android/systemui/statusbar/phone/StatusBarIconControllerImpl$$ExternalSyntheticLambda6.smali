.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda6;->f$0:I

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda6;->f$0:I

    .line 2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl$$ExternalSyntheticLambda6;->f$1:I

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .line 6
    check-cast p2, Ljava/util/List;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;->mGroup:Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 16
    return-void
    .line 19
.end method
