.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:I

.field public final synthetic f$10:Landroid/os/Parcelable;

.field public final synthetic f$2:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Landroid/app/PendingIntent;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$7:Landroid/os/Bundle;

.field public final synthetic f$8:I

.field public final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/os/Parcelable;I)V
    .locals 0

    .line 1
    iput p12, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$0:Landroid/app/PendingIntent;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$3:Landroid/os/Bundle;

    .line 10
    iput-object p5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$4:Landroid/app/PendingIntent;

    .line 12
    iput p6, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$5:I

    .line 14
    iput-object p7, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 16
    iput-object p8, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$7:Landroid/os/Bundle;

    .line 18
    iput p9, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$8:I

    .line 20
    iput p10, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$9:F

    .line 22
    iput-object p11, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$10:Landroid/os/Parcelable;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
    .line 29
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$0:Landroid/app/PendingIntent;

    .line 10
    iget v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$1:I

    .line 12
    iget-object v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 14
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$3:Landroid/os/Bundle;

    .line 16
    iget-object v6, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$4:Landroid/app/PendingIntent;

    .line 18
    iget v7, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$5:I

    .line 20
    iget-object v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 22
    iget-object v9, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$7:Landroid/os/Bundle;

    .line 24
    iget v10, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$8:I

    .line 26
    iget v11, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$9:F

    .line 28
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$10:Landroid/os/Parcelable;

    .line 30
    move-object v12, v0

    .line 32
    check-cast v12, Landroid/view/RemoteAnimationAdapter;

    .line 33
    move-object/from16 v13, p1

    .line 35
    check-cast v13, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 37
    invoke-static/range {v2 .. v13}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$7rfP-jGmC-yUW65c9f1qyj4A4PY(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 39
    return-void

    .line 42
    :goto_0
    iget-object v14, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$0:Landroid/app/PendingIntent;

    .line 43
    iget v15, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$1:I

    .line 45
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$2:Landroid/content/pm/ShortcutInfo;

    .line 47
    iget-object v2, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$3:Landroid/os/Bundle;

    .line 49
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$4:Landroid/app/PendingIntent;

    .line 51
    iget v4, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$5:I

    .line 53
    iget-object v5, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$6:Landroid/content/pm/ShortcutInfo;

    .line 55
    iget-object v6, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$7:Landroid/os/Bundle;

    .line 57
    iget v7, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$8:I

    .line 59
    iget v8, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$9:F

    .line 61
    iget-object v0, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl$$ExternalSyntheticLambda3;->f$10:Landroid/os/Parcelable;

    .line 63
    move-object/from16 v24, v0

    .line 65
    check-cast v24, Landroid/window/RemoteTransition;

    .line 67
    move-object/from16 v25, p1

    .line 69
    check-cast v25, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 71
    move-object/from16 v16, v1

    .line 73
    move-object/from16 v17, v2

    .line 75
    move-object/from16 v18, v3

    .line 77
    move/from16 v19, v4

    .line 79
    move-object/from16 v20, v5

    .line 81
    move-object/from16 v21, v6

    .line 83
    move/from16 v22, v7

    .line 85
    move/from16 v23, v8

    .line 87
    invoke-static/range {v14 .. v25}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$ISplitScreenImpl;->$r8$lambda$W2l_o4rrfa49MCsUh82U9_ST0QQ(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 89
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 94
.end method
