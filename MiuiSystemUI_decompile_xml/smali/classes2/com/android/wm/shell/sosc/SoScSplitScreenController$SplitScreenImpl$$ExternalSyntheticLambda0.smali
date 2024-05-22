.class public final synthetic Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

.field public final synthetic f$1:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;->$r8$lambda$486LYkEXIGn6XsVh1jBKipXFKy4(Lcom/android/wm/shell/sosc/SoScSplitScreenController$SplitScreenImpl;Lcom/android/wm/shell/sosc/SoScSplitScreen$SoScSplitScreenListener;Ljava/util/concurrent/Executor;)V

    .line 8
    return-void
    .line 11
.end method
