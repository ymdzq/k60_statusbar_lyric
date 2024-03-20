.class public abstract Lcom/miui/clock/module/ClassicContentStyle;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static needOpenTextSameWidth(IZ)Z
    .locals 3

    .line 1
    const/16 v0, 0x12e

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    const/16 v0, 0x12f

    .line 8
    if-ne p0, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v0, v2

    .line 15
    :goto_1
    if-eqz v0, :cond_2

    .line 16
    return v2

    .line 18
    :cond_2
    if-eqz p1, :cond_4

    .line 19
    const/16 p1, 0x12c

    .line 21
    if-eq p0, p1, :cond_3

    .line 23
    const/16 p1, 0x199

    .line 25
    if-eq p0, p1, :cond_3

    .line 27
    const/16 p1, 0x1f4

    .line 29
    if-eq p0, p1, :cond_3

    .line 31
    const/16 p1, 0x1f6

    .line 33
    if-eq p0, p1, :cond_3

    .line 35
    const/16 p1, 0x1f8

    .line 37
    if-eq p0, p1, :cond_3

    .line 39
    const/16 p1, 0x1fc

    .line 41
    if-eq p0, p1, :cond_3

    .line 43
    const/16 p1, 0x195

    .line 45
    if-eq p0, p1, :cond_3

    .line 47
    const/16 p1, 0x196

    .line 49
    if-eq p0, p1, :cond_3

    .line 51
    packed-switch p0, :pswitch_data_0

    .line 53
    packed-switch p0, :pswitch_data_1

    .line 56
    packed-switch p0, :pswitch_data_2

    .line 59
    return v1

    .line 62
    :cond_3
    :pswitch_0
    return v2

    .line 63
    :cond_4
    return v1

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x190
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
