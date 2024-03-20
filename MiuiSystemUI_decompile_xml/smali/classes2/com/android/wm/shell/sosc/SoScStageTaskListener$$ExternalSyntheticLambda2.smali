.class public final synthetic Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScStageTaskListener$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->$r8$lambda$6PvB58maHKQXaHCkRK47oa1f-nk(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :pswitch_1
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->$r8$lambda$k-ktvCm_mzV8-TxyzTRkFP-i4Cs(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 17
    move-result p0

    .line 20
    return p0

    .line 21
    :pswitch_2
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->$r8$lambda$mHFOryBxK72t351fgEbWofYDWm0(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :pswitch_3
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->$r8$lambda$0JdgR9WdfEDJmCGu1xe0E5H0WXE(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 31
    move-result p0

    .line 34
    return p0

    .line 35
    :goto_0
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    invoke-static {p1}, Lcom/android/wm/shell/sosc/SoScStageTaskListener;->$r8$lambda$UKJSxPL2oLqfmoKqxiVe2-I1Lx8(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 38
    move-result p0

    .line 41
    return p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 44
.end method
