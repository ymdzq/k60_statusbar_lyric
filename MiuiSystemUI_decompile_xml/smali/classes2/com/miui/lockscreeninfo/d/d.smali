.class public abstract Lcom/miui/lockscreeninfo/d/d;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 7

    .line 1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v4

    .line 8
    const-class v0, Landroid/content/ContentResolver;

    .line 9
    const-class v1, Ljava/lang/String;

    .line 11
    filled-new-array {v0, v1, v3, v3}, [Ljava/lang/Class;

    .line 13
    move-result-object v5

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p2

    .line 20
    filled-new-array {p0, p1, v4, p2}, [Ljava/lang/Object;

    .line 21
    move-result-object v6

    .line 24
    const-class v0, Landroid/provider/Settings$Secure;

    .line 25
    const/4 v1, 0x0

    .line 27
    const-string v2, "getIntForUser"

    .line 28
    invoke-static/range {v0 .. v6}, Lcom/miui/lockscreeninfo/a;->a(Ljava/lang/Class;Lcom/miui/lockscreeninfo/BaseTextView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p0

    .line 39
    return p0
    .line 40
.end method
