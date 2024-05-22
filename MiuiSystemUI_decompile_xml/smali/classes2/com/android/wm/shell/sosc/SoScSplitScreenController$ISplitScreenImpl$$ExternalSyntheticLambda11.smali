.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, [[Landroid/view/RemoteAnimationTarget;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    .line 14
    check-cast p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 16
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$X1CLTNVLG1DfQXGMmjfeW9tHhtQ([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 18
    return-void

    .line 21
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 22
    check-cast v0, [[Landroid/view/RemoteAnimationTarget;

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 26
    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    .line 28
    check-cast p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 30
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$-rFGb3aJLqgEB_5gEOIwRPsOo90([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 32
    return-void

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda11;->f$1:Ljava/lang/Object;

    .line 40
    check-cast p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;

    .line 42
    check-cast p1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 44
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$UoyDtCO9jpcQ75RapIncCgNfhUQ(Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 46
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 50
.end method
