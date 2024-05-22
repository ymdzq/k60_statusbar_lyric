.class public abstract Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    .line 8
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$2:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    instance-of p0, p1, Landroid/service/controls/templates/ThumbnailTemplate;

    .line 19
    if-eqz p0, :cond_2

    .line 21
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$3:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    const/16 p0, 0x32

    .line 26
    if-ne p2, p0, :cond_3

    .line 28
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$4:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 30
    goto :goto_0

    .line 32
    :cond_3
    instance-of p0, p1, Landroid/service/controls/templates/ToggleTemplate;

    .line 33
    if-eqz p0, :cond_4

    .line 35
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$5:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 37
    goto :goto_0

    .line 39
    :cond_4
    instance-of p0, p1, Landroid/service/controls/templates/StatelessTemplate;

    .line 40
    if-eqz p0, :cond_5

    .line 42
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$6:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 44
    goto :goto_0

    .line 46
    :cond_5
    instance-of p0, p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    .line 47
    if-eqz p0, :cond_6

    .line 49
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$7:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 51
    goto :goto_0

    .line 53
    :cond_6
    instance-of p0, p1, Landroid/service/controls/templates/RangeTemplate;

    .line 54
    if-eqz p0, :cond_7

    .line 56
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$8:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 58
    goto :goto_0

    .line 60
    :cond_7
    instance-of p0, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 61
    if-eqz p0, :cond_8

    .line 63
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$9:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 65
    goto :goto_0

    .line 67
    :cond_8
    sget-object p0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;->INSTANCE$1:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 68
    :goto_0
    return-object p0
    .line 70
.end method
