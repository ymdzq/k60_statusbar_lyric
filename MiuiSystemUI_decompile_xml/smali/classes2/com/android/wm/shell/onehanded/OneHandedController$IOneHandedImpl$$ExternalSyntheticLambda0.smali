.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 8
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl;->$r8$lambda$qfy5pOMOXLcW95j6APZGxDP1yDo(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    .line 10
    return-void

    .line 13
    :goto_0
    check-cast p1, Lcom/android/wm/shell/onehanded/OneHandedController;

    .line 14
    invoke-static {p1}, Lcom/android/wm/shell/onehanded/OneHandedController$IOneHandedImpl;->$r8$lambda$nlrJgrnHDroioy40DSqEoHNo9is(Lcom/android/wm/shell/onehanded/OneHandedController;)V

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
