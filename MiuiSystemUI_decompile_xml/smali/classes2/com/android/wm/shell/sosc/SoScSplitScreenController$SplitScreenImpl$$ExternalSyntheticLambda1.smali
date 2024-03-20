.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

.field public final synthetic f$1:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 10
    invoke-static {v0, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->$r8$lambda$U16uRk0v8LflMf_DbKGfqeGniNA(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 18
    invoke-static {v0, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->$r8$lambda$_Cdd0EYeaXL0PPfmU4bIShB0nKw(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;)V

    .line 20
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 24
.end method
