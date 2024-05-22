.class public abstract Lcom/miui/lockscreeninfo/d/f;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static b(Lcom/miui/lockscreeninfo/BaseTextView;Z)Z
    .locals 7

    .line 1
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 6
    move-result-object v5

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object p1

    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    move-result-object v6

    .line 17
    const-class v0, Landroid/view/View;

    .line 18
    const-string/jumbo v2, "setPassWindowBlurEnabled"

    .line 20
    move-object v1, p0

    .line 23
    invoke-static/range {v0 .. v6}, Lcom/miui/lockscreeninfo/a;->a(Ljava/lang/Class;Lcom/miui/lockscreeninfo/BaseTextView;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result p0

    .line 33
    return p0
    .line 34
.end method
