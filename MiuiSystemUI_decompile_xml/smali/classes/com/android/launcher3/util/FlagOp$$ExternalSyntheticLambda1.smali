.class public final synthetic Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/launcher3/util/FlagOp;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/FlagOp;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/FlagOp;

    .line 4
    iput p2, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final apply(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iget v1, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget-object p0, p0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/util/FlagOp;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    .line 12
    move-result p0

    .line 15
    or-int/2addr p0, v1

    .line 16
    return p0

    .line 17
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    .line 18
    move-result p0

    .line 21
    not-int p1, v1

    .line 22
    and-int/2addr p0, p1

    .line 23
    return p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
