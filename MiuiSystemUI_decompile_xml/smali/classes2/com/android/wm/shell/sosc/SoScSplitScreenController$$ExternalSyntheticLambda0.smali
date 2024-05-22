.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>([ILandroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;->f$0:[I

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;->f$0:[I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    .line 6
    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    .line 8
    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->$r8$lambda$WStK6xG2vZXncqE9x7PmCwx8R8Y([ILandroid/content/ComponentName;Landroid/content/ComponentName;Lcom/android/wm/shell/recents/RecentTasksController;)Ljava/lang/Boolean;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method
