.class public final Lcom/airbnb/lottie/utils/Utils$1;
.super Ljava/lang/ThreadLocal;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/utils/Utils$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/airbnb/lottie/utils/Utils$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_4

    .line 7
    :pswitch_0
    packed-switch p0, :pswitch_data_1

    .line 8
    goto :goto_0

    .line 11
    :pswitch_1
    new-instance p0, Landroid/graphics/Path;

    .line 12
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 14
    goto :goto_1

    .line 17
    :goto_0
    new-instance p0, Landroid/graphics/Path;

    .line 18
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 20
    :goto_1
    return-object p0

    .line 23
    :pswitch_2
    packed-switch p0, :pswitch_data_2

    .line 24
    goto :goto_2

    .line 27
    :pswitch_3
    new-instance p0, Landroid/graphics/Path;

    .line 28
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 30
    goto :goto_3

    .line 33
    :goto_2
    new-instance p0, Landroid/graphics/Path;

    .line 34
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 36
    :goto_3
    return-object p0

    .line 39
    :pswitch_4
    new-instance p0, Landroid/graphics/PathMeasure;

    .line 40
    invoke-direct {p0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 42
    return-object p0

    .line 45
    :goto_4
    const/4 p0, 0x4

    .line 46
    new-array p0, p0, [F

    .line 47
    return-object p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 50
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 60
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
    .line 66
.end method
