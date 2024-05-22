.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:I

.field public final synthetic f$6:F

.field public final synthetic f$7:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/os/Parcelable;I)V
    .locals 0

    .line 1
    iput p9, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$0:Landroid/app/PendingIntent;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$1:I

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$2:Landroid/os/Bundle;

    .line 8
    iput p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$3:I

    .line 10
    iput-object p5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$4:Landroid/os/Bundle;

    .line 12
    iput p6, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$5:I

    .line 14
    iput p7, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$6:F

    .line 16
    iput-object p8, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$7:Landroid/os/Parcelable;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$0:Landroid/app/PendingIntent;

    .line 10
    iget v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$1:I

    .line 12
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$2:Landroid/os/Bundle;

    .line 14
    iget v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$3:I

    .line 16
    iget-object v6, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$4:Landroid/os/Bundle;

    .line 18
    iget v7, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$5:I

    .line 20
    iget v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$6:F

    .line 22
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$7:Landroid/os/Parcelable;

    .line 24
    move-object v9, v0

    .line 26
    check-cast v9, Landroid/view/RemoteAnimationAdapter;

    .line 27
    move-object/from16 v10, p1

    .line 29
    check-cast v10, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 31
    invoke-static/range {v2 .. v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$2A-eLWtdQx6QruBv0GUjL9ovYfI(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 33
    return-void

    .line 36
    :goto_0
    iget-object v11, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$0:Landroid/app/PendingIntent;

    .line 37
    iget v12, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$1:I

    .line 39
    iget-object v13, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$2:Landroid/os/Bundle;

    .line 41
    iget v14, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$3:I

    .line 43
    iget-object v15, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$4:Landroid/os/Bundle;

    .line 45
    iget v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$5:I

    .line 47
    iget v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$6:F

    .line 49
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda4;->f$7:Landroid/os/Parcelable;

    .line 51
    move-object/from16 v18, v0

    .line 53
    check-cast v18, Landroid/window/RemoteTransition;

    .line 55
    move-object/from16 v19, p1

    .line 57
    check-cast v19, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 59
    move/from16 v16, v1

    .line 61
    move/from16 v17, v2

    .line 63
    invoke-static/range {v11 .. v19}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$sQDFpI0DTmRj6ACQEbyoAgVFJTk(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 65
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 70
.end method
