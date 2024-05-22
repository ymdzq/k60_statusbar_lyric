.class public final Lcom/android/systemui/plugins/ClockProviderPlugin$DefaultImpls;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static createClock(Lcom/android/systemui/plugins/ClockProviderPlugin;Ljava/lang/String;)Lcom/android/systemui/plugins/ClockController;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/plugins/ClockProvider$DefaultImpls;->createClock(Lcom/android/systemui/plugins/ClockProvider;Ljava/lang/String;)Lcom/android/systemui/plugins/ClockController;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method
