.class final synthetic Lcom/android/systemui/shade/NotificationsQSContainerController$updateResources$footerOffsetChanged$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const-string v0, "footerActionsOffset"

    .line 2
    const-string v1, "getFooterActionsOffset()I"

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 4
    iget p0, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->footerActionsOffset:I

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 4
    check-cast p1, Ljava/lang/Number;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p1

    .line 11
    iput p1, p0, Lcom/android/systemui/shade/NotificationsQSContainerController;->footerActionsOffset:I

    .line 12
    return-void
    .line 14
.end method
