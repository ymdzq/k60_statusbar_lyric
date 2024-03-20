.class Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field mActivatePosition:I

.field mActivateTaskId:I

.field mActivateTaskId2:I

.field mStartIntent:Landroid/content/Intent;

.field mStartIntent2:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;III)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mActivateTaskId:I

    .line 14
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mActivateTaskId2:I

    .line 15
    iput p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mActivatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;ILandroid/content/Intent;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mActivateTaskId:I

    .line 3
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    .line 4
    iput p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mActivatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/content/Intent;I)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    .line 7
    iput p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mActivatePosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScStageCoordinator;Landroid/content/Intent;Landroid/content/Intent;I)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->this$0:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    .line 10
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mStartIntent2:Landroid/content/Intent;

    .line 11
    iput p4, p0, Lcom/android/wm/shell/sosc/SoScStageCoordinator$SplitRequest;->mActivatePosition:I

    return-void
.end method
