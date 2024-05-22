.class public final Lcom/android/systemui/plugins/ClockProvider$DefaultImpls;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static createClock(Lcom/android/systemui/plugins/ClockProvider;Ljava/lang/String;)Lcom/android/systemui/plugins/ClockController;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/ClockSettings;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/plugins/ClockSettings;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ClockProvider;->createClock(Lcom/android/systemui/plugins/ClockSettings;)Lcom/android/systemui/plugins/ClockController;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method
