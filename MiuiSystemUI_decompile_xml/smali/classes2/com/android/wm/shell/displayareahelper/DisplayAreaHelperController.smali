.class public final Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mRootDisplayAreaOrganizer:Lcom/android/wm/shell/RootDisplayAreaOrganizer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;->mRootDisplayAreaOrganizer:Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    .line 7
    return-void
    .line 9
.end method
