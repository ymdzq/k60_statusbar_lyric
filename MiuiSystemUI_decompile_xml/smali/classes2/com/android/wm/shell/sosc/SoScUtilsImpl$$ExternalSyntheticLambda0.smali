.class public final synthetic Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 10
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->$r8$lambda$XJa566-hewdeY6m251DfGRn0KoE(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 18
    invoke-static {p0, p1}, Lcom/android/wm/shell/sosc/SoScUtilsImpl;->$r8$lambda$HIwZ56P_mDTeDkAetqLQDnwTrSE(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    .line 20
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 24
.end method
