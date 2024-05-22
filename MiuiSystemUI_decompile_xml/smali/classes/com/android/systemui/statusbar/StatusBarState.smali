.class public abstract Lcom/android/systemui/statusbar/StatusBarState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static toString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    const-string v0, "UNKNOWN: "

    .line 10
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "SHADE_LOCKED"

    .line 17
    return-object p0

    .line 19
    :cond_1
    const-string p0, "KEYGUARD"

    .line 20
    return-object p0

    .line 22
    :cond_2
    const-string p0, "SHADE"

    .line 23
    return-object p0
    .line 25
.end method
