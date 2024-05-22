.class public final synthetic Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2
    check-cast p1, Ljava/lang/Float;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 6
    move-result p1

    .line 9
    check-cast p2, Ljava/lang/Float;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p2

    .line 15
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    .line 16
    cmpl-float v0, p1, v0

    .line 18
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->isExpanded()Z

    .line 26
    move-result v2

    .line 29
    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mExpandedHeight:F

    .line 30
    iput p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mAppearFraction:F

    .line 32
    if-eqz v0, :cond_1

    .line 34
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    .line 38
    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Ljava/util/stream/Stream;

    .line 46
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 48
    move-result-object p2

    .line 51
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 55
    check-cast p1, Ljava/util/List;

    .line 56
    new-instance p2, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda0;

    .line 58
    invoke-direct {p2, p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;I)V

    .line 60
    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->isExpanded()Z

    .line 66
    move-result p1

    .line 69
    if-eq p1, v2, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->updateTopEntry()V

    .line 72
    :cond_2
    return-void
    .line 75
.end method
