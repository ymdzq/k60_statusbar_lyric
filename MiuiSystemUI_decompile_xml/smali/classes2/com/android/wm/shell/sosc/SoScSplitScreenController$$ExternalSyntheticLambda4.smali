.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Parcelable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$0:Landroid/os/Parcelable;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$0:Landroid/os/Parcelable;

    .line 8
    check-cast v0, Landroid/content/ComponentName;

    .line 10
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$1:I

    .line 12
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->$r8$lambda$gsKNJRhFyrzlMkjnSb2QEtsDl6k(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$0:Landroid/os/Parcelable;

    .line 21
    check-cast v0, Landroid/content/ComponentName;

    .line 23
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$1:I

    .line 25
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 27
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->$r8$lambda$86Vy8rj20UBI3Di3B7iqBRezb40(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 29
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_2
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$0:Landroid/os/Parcelable;

    .line 34
    check-cast v0, Landroid/content/ComponentName;

    .line 36
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$1:I

    .line 38
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 40
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->$r8$lambda$go1MCqbHPO4OHfQTCzl_czFijqk(Landroid/content/ComponentName;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 42
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$0:Landroid/os/Parcelable;

    .line 47
    check-cast v0, Landroid/app/PendingIntent;

    .line 49
    iget p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda4;->f$1:I

    .line 51
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 53
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->$r8$lambda$yC1PcQY_ZoEhkbImLn3fuXPsb1o(Landroid/app/PendingIntent;ILcom/android/wm/shell/recents/RecentTasksController;)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 55
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method
