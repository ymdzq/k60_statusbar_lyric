.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Landroid/graphics/Rect;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$7:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic f$8:Z

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Rect;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$3:Landroid/graphics/Rect;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$4:Landroid/graphics/Rect;

    .line 13
    iput p6, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$5:I

    .line 15
    iput-object p7, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$6:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    iput-object p8, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$7:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    iput-boolean p9, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$8:Z

    .line 21
    iput p10, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$9:I

    .line 23
    iput p11, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$10:I

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$2:Landroid/graphics/Rect;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$3:Landroid/graphics/Rect;

    .line 8
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$4:Landroid/graphics/Rect;

    .line 10
    iget v5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$5:I

    .line 12
    iget-object v6, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$6:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    iget-object v7, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$7:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    iget-boolean v8, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$8:Z

    .line 18
    iget v9, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$9:I

    .line 20
    iget v10, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1$$ExternalSyntheticLambda5;->f$10:I

    .line 22
    invoke-static/range {v0 .. v10}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;->$r8$lambda$cHvK66eWD8sOJhKmlGhkmJkcY8o(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$1;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V

    .line 24
    return-void
    .line 27
.end method
