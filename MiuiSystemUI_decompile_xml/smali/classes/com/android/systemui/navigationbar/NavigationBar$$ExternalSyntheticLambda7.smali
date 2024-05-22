.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide p0

    .line 17
    cmp-long p0, p0, v2

    .line 18
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    return v0

    .line 24
    :goto_1
    check-cast p1, Ljava/lang/Long;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 27
    move-result-wide p0

    .line 30
    cmp-long p0, p0, v2

    .line 31
    if-eqz p0, :cond_1

    .line 33
    goto :goto_2

    .line 35
    :cond_1
    move v0, v1

    .line 36
    :goto_2
    return v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
