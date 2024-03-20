.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:I

.field public final synthetic f$5:F

.field public final synthetic f$6:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;I)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$0:Landroid/content/pm/ShortcutInfo;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$1:Landroid/os/Bundle;

    .line 6
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$2:I

    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$3:Landroid/os/Bundle;

    .line 10
    iput p5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$4:I

    .line 12
    iput p6, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$5:F

    .line 14
    iput-object p7, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$6:Landroid/os/Parcelable;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$0:Landroid/content/pm/ShortcutInfo;

    .line 10
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$1:Landroid/os/Bundle;

    .line 12
    iget v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$2:I

    .line 14
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$3:Landroid/os/Bundle;

    .line 16
    iget v6, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$4:I

    .line 18
    iget v7, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$5:F

    .line 20
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$6:Landroid/os/Parcelable;

    .line 22
    move-object v8, v0

    .line 24
    check-cast v8, Landroid/window/RemoteTransition;

    .line 25
    move-object/from16 v9, p1

    .line 27
    check-cast v9, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 29
    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$s0NBUQspygR3yCHPdl11amk4qSc(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 31
    return-void

    .line 34
    :goto_0
    iget-object v10, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$0:Landroid/content/pm/ShortcutInfo;

    .line 35
    iget-object v11, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$1:Landroid/os/Bundle;

    .line 37
    iget v12, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$2:I

    .line 39
    iget-object v13, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$3:Landroid/os/Bundle;

    .line 41
    iget v14, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$4:I

    .line 43
    iget v15, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$5:F

    .line 45
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda9;->f$6:Landroid/os/Parcelable;

    .line 47
    move-object/from16 v16, v0

    .line 49
    check-cast v16, Landroid/view/RemoteAnimationAdapter;

    .line 51
    move-object/from16 v17, p1

    .line 53
    check-cast v17, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 55
    invoke-static/range {v10 .. v17}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$1vTuLslkOkOecrqMQ671pw0O8eY(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 57
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 62
.end method
