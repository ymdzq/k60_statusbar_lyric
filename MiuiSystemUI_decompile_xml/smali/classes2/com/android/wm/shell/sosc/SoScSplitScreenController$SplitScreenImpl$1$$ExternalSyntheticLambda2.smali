.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$2:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;

    .line 8
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$1:I

    .line 10
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$2:I

    .line 12
    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;->$r8$lambda$U2jMweqov6VnJYDalwAUt9bVQ7A(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;II)V

    .line 14
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;

    .line 18
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$1:I

    .line 20
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda2;->f$2:I

    .line 22
    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;->$r8$lambda$MlNVLHkJO1MMW79UwLs2uaTndCU(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;II)V

    .line 24
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 28
.end method
